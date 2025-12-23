
module network_control (clk, rst_n, start
           , ena_hidden_input_mac
           , ena_hidden_tagsigmoid
           , ena_hidden_write_reg
           , ena_out_input_mac
           , ena_out_sigmoid
           , ena_out_write_reg
           , ena_checker
           , in_weight_case
           , out_weight_case
           , init_mac
           );


//============== PARAMETER
parameter DATA_WIDTH = 32;

//For state machine
parameter INITIAL           = 0;
parameter HIDDEN_INPUT_MAC  = 1;
parameter HIDDEN_TAGSIGMOID = 2;
parameter HIDDEN_WRITE_REG  = 3;
parameter HIDDEN_LOOP       = 4;
parameter OUT_INPUT_MAC     = 5;
parameter OUT_SIGMOID       = 6;
parameter OUT_WRITE_REG     = 7;
parameter OUT_LOOP          = 8;
parameter CHECKER           = 9;
parameter WAITING_RESET     = 10;

//For next_counter value
parameter HIDDEN_INPUT_MAC_COUNTER  = 104;
parameter HIDDEN_TAGSIGMOID_COUNTER = 10;
parameter HIDDEN_WRITE_REG_COUNTER  = 1;
parameter HIDDEN_LOOP_COUNTER       = 1;

parameter OUT_INPUT_MAC_COUNTER     = 60;
parameter OUT_SIGMOID_COUNTER       = 10;
parameter OUT_WRITE_REG_COUNTER     = 1;
parameter OUT_LOOP_COUNTER          = 1;
parameter CHECKER_COUNTER           = 10;

input clk;
input rst_n;
input start;

output ena_hidden_input_mac;
output ena_hidden_tagsigmoid;
output [59:0]ena_hidden_write_reg;
output ena_out_input_mac;
output ena_out_sigmoid;
output [19:0]ena_out_write_reg;
output ena_checker;
output [5:0]in_weight_case;
output [4:0]out_weight_case;
output init_mac;

reg    ena_hidden_input_mac;
reg    ena_hidden_tagsigmoid;
reg    [59:0]ena_hidden_write_reg;
reg    ena_out_input_mac;
reg    ena_out_sigmoid;
reg    [19:0]ena_out_write_reg;
reg    ena_checker;
reg    [5:0]in_weight_case;
reg    [4:0]out_weight_case;
wire   is_finish_out_loop;
wire   is_finish_hidden_loop;

//============== INTERNAL SIGNAL
reg [3:0] state;
reg [3:0] next_state;
reg ena_state;
reg [7:0] next_counter;
reg [7:0] counter;
wire [7:0] next_loop_counter;
reg [7:0] loop_counter;
reg ena_loop_inc;
reg next_ena_loop_inc;
wire is_new_hidden_loop;
wire is_new_out_loop;

//=================== STATE MACHINE TO CONTROL =====================//
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        state <= INITIAL;
    end
    else begin
        state <= next_state;
    end
end

//Counter
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
       counter <= 0;
    end
    else begin
       if(counter == 0) begin
          counter <= next_counter;
       end
       else begin
        counter <= counter - 1;
       end
    end
end

//Enable for changing state
always@(negedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ena_state <= 0;
    end
    else if(counter == 1) begin
         ena_state <= 1;
    end
    else begin
        ena_state <= 0;
    end
end

//Loop Counter 
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        loop_counter <= 0;
    end
    else if (!next_ena_loop_inc && ena_loop_inc) begin
        loop_counter <= next_loop_counter + 1;
    end
    else begin
        loop_counter <= next_loop_counter;
    end
end
assign next_loop_counter     = loop_counter;
assign is_finish_hidden_loop = (loop_counter == 60)? 1:0; // After finishing hidden neural number to calculate outputs of hidden layer
assign is_new_out_loop       = (loop_counter == 60)? 0:1; // After finish read all 60 middel register
assign is_finish_out_loop    = (loop_counter == 80)? 1:0; // 36 + 20 --> 60 + 20
assign is_new_hidden_loop    = (|loop_counter == 0)? 0:1;

always@(negedge clk or negedge rst_n) begin
    if(!rst_n) begin
        in_weight_case <= 0;
    end
    else if ((state == HIDDEN_INPUT_MAC) || (state == HIDDEN_TAGSIGMOID)) begin
        in_weight_case <= loop_counter[7:0];
    end 
    else begin
        in_weight_case <= 0;
    end
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        out_weight_case <= 0;
    end
    else if ((state == OUT_INPUT_MAC) || (state == OUT_SIGMOID))begin
        out_weight_case <= loop_counter - 60;
    end 
    else begin
        out_weight_case <= 0;
    end
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ena_hidden_write_reg <= 0;
    end
    else if (state == HIDDEN_WRITE_REG) begin
        ena_hidden_write_reg <= (1 << loop_counter);
    end 
    else begin
        ena_hidden_write_reg <= 0;
    end
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ena_out_write_reg <= 0;
    end
    else if (state == OUT_WRITE_REG) begin
        ena_out_write_reg <= (1 << (loop_counter - 60));
    end 
    else begin
        ena_out_write_reg <= 0;
    end
end

always@(rst_n or state or start or ena_state or is_new_hidden_loop or is_new_out_loop) begin
    if(!rst_n) begin
        next_state   <= INITIAL;  
        next_counter <= 0; 
    end
    else if(start == 0) begin
        next_state   <= INITIAL;
        next_counter <= 0; 
    end
    else begin
        case (state) 
            INITIAL: begin
                next_state   <= HIDDEN_INPUT_MAC;
                next_counter <= HIDDEN_INPUT_MAC_COUNTER; 
            end

            HIDDEN_INPUT_MAC:  begin
                if(ena_state) begin
                    next_state   <= HIDDEN_TAGSIGMOID;
                    next_counter <= HIDDEN_TAGSIGMOID_COUNTER; 
                end
                else begin
                    next_state   <= state;
                    if(is_new_hidden_loop) begin
                        next_counter <= HIDDEN_INPUT_MAC_COUNTER - 1; 
                    end
                    else begin
                        next_counter <= HIDDEN_INPUT_MAC_COUNTER; 
                    end
                end
            end

            HIDDEN_TAGSIGMOID: begin
                if(ena_state) begin
                     next_state   <= HIDDEN_WRITE_REG;
                     next_counter <= HIDDEN_WRITE_REG_COUNTER; 
                end
                else begin
                    next_state   <= state;
                    next_counter <= HIDDEN_TAGSIGMOID_COUNTER; 
                end
            end
       
            HIDDEN_WRITE_REG: begin
                if(ena_state) begin
                    next_state   <= HIDDEN_LOOP;
                    next_counter <= HIDDEN_LOOP_COUNTER;
                end
                else begin
                    next_state   <= state;
                    next_counter <= HIDDEN_WRITE_REG_COUNTER; 
                end
            end

            HIDDEN_LOOP: begin
                if(is_finish_hidden_loop) begin
                    next_state   <= OUT_INPUT_MAC;
                    next_counter <= OUT_INPUT_MAC_COUNTER;
                end
                else if(ena_state) begin
                    next_state   <= HIDDEN_INPUT_MAC;
                    next_counter <= HIDDEN_INPUT_MAC_COUNTER - 1;
                end
                else begin
                    next_state   <= state;
                    next_counter <= HIDDEN_LOOP_COUNTER; 
                end
            end

            OUT_INPUT_MAC: begin
                if(ena_state) begin
                    next_state   <= OUT_SIGMOID;
                    next_counter <= OUT_SIGMOID_COUNTER;
                end
                else begin
                    next_state   <= state;
                    if(is_new_out_loop) begin
                        next_counter <= OUT_INPUT_MAC_COUNTER - 1; 
                    end
                    else begin
                        next_counter <= OUT_INPUT_MAC_COUNTER; 
                    end
                end
            end

            OUT_SIGMOID: begin
                if(ena_state) begin
                    next_state   <= OUT_WRITE_REG;
                    next_counter <= OUT_WRITE_REG_COUNTER;
                end
                else begin
                    next_state <= state;
                    next_counter <= OUT_SIGMOID_COUNTER;
                end
            end

            OUT_WRITE_REG: begin
                if(ena_state) begin
                    next_state   <= OUT_LOOP;
                    next_counter <= OUT_LOOP_COUNTER;
                end
                else begin
                    next_state   <= state;
                    next_counter <= OUT_WRITE_REG_COUNTER;
                end
            end

            OUT_LOOP: begin
                if(is_finish_out_loop) begin
                    next_state   <= CHECKER;
                    next_counter <= CHECKER_COUNTER;
                end
                else if(ena_state) begin
                    next_state   <= OUT_INPUT_MAC;
                    next_counter <= OUT_INPUT_MAC_COUNTER;
                end
                else begin
                    next_state   <= state;
                    next_counter <= OUT_LOOP_COUNTER; 
                end
            end

            CHECKER: begin
                if(ena_state) begin
                    next_state   <= WAITING_RESET;
                    next_counter <= 0;
                end
                else begin
                    next_state   <= state;
                    next_counter <= CHECKER_COUNTER;
                end
            end

            default: begin
                next_state   <= state;
                next_counter <= 0;
            end
        endcase
    end
end

always@(rst_n or state) begin
    if(!rst_n) begin
        ena_loop_inc <=  0;
    end
    else if ((state == HIDDEN_LOOP) ||(state == OUT_LOOP))begin
        ena_loop_inc <= 1;
    end
    else begin
        ena_loop_inc <= 0;
    end
end
assign init_mac = ena_loop_inc;

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        next_ena_loop_inc <=  0;
    end
    else if ((state == HIDDEN_LOOP) ||(state == OUT_LOOP))begin
        next_ena_loop_inc <= ena_loop_inc;
    end
    else begin
        next_ena_loop_inc <= 0;
    end
end

//Output of state machine to control data flow
always@(negedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ena_hidden_input_mac  = 0;
        ena_hidden_tagsigmoid = 0;
        ena_out_input_mac     = 0;
        ena_out_sigmoid       = 0;
        ena_checker           = 0; 
    end
    else begin
        case(state)
            INITIAL: begin
                ena_hidden_input_mac  = 0;
                ena_hidden_tagsigmoid = 0;
                ena_out_input_mac     = 0;
                ena_out_sigmoid       = 0;
                ena_checker           = 0; 
            end

            HIDDEN_INPUT_MAC: begin
                ena_hidden_input_mac  = 1;
                ena_hidden_tagsigmoid = 0;
                ena_out_input_mac     = 0;
                ena_out_sigmoid       = 0;
                ena_checker           = 0; 
            end

            HIDDEN_TAGSIGMOID: begin
                ena_hidden_input_mac  = 0;
                ena_hidden_tagsigmoid = 1;
                ena_out_input_mac     = 0;
                ena_out_sigmoid       = 0;
                ena_checker           = 0; 
            end
            //HIDDEN_WRITE_REG
            //HIDDEN_LOOP
            OUT_INPUT_MAC: begin
                ena_hidden_input_mac  = 0;
                ena_hidden_tagsigmoid = 0;
                ena_out_input_mac     = 1;
                ena_out_sigmoid       = 0;
                ena_checker           = 0; 
            end

            OUT_SIGMOID: begin
                ena_hidden_input_mac  = 0;
                ena_hidden_tagsigmoid = 0;
                ena_out_input_mac     = 0;
                ena_out_sigmoid       = 1;
                ena_checker           = 0; 
            end
            //OUT_WRITE_REG
            //OUT_LOOP
            CHECKER: begin
                ena_hidden_input_mac  = 0;
                ena_hidden_tagsigmoid = 0;
                ena_out_input_mac     = 0;
                ena_out_sigmoid       = 0;
                ena_checker           = 1; 
            end

            default: begin //WAITING_RESET + HIDDEN_LOOP + HIDDEN_WRITE_REG + OUT_LOOP + OUT_WRITE_REG
                ena_hidden_input_mac  = 0;
                ena_hidden_tagsigmoid = 0;
                ena_out_input_mac     = 0;
                ena_out_sigmoid       = 0;
                ena_checker           = 0; 
            end

        endcase
    end
end

endmodule
