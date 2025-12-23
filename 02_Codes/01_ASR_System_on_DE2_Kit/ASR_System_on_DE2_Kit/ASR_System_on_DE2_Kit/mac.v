//============ File : mac.v 
//============ Version : 06/17/13
//============ Update Notes: First version


module mac (clk_sys, clk, rst_n, init_mac, ena_mac, mac_input_01, mac_input_02, mac_output);

//Parameters
parameter DATA_WIDTH         = 32;

//Input
input clk_sys;
input clk;
input rst_n;
input init_mac;
input ena_mac;
input [DATA_WIDTH-1:0] mac_input_01;
input [DATA_WIDTH-1:0] mac_input_02;

//Output
output [DATA_WIDTH-1:0] mac_output;
wire   [DATA_WIDTH-1:0] mac_output;

reg [DATA_WIDTH-1:0] next_mac_input_01;
reg [DATA_WIDTH-1:0] next_mac_input_02;

wire [DATA_WIDTH-1:0] weight_input_mul;
reg  [DATA_WIDTH-1:0] next_weight_input_mul;

wire [DATA_WIDTH-1:0] pre_adder_output;
reg  [DATA_WIDTH-1:0] next_adder_output;

//========================== CLK32 1 =================//
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        next_mac_input_01 <= 0;
    end
    else if(ena_mac) begin
        next_mac_input_01 <= mac_input_01;
    end
    else begin
        next_mac_input_01 <= 0;
    end
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        next_mac_input_02 <= 0;
    end
    else if(ena_mac) begin
        next_mac_input_02 <= mac_input_02;
    end
    else begin
        next_mac_input_02 <= 0;
    end
end
//=================== CALL Multiply ===============//
floating_point_multiple floating_point_multiple_01 ( .clk(clk_sys)
                                                   , .rst_n(rst_n)
                                                   , .input_factor_01(next_mac_input_01)
                                                   , .input_factor_02(next_mac_input_02)
                                                   , .output_multiply(weight_input_mul)
                                                   );

//=================== CLK32 2 =====================//
always@(posedge clk or negedge rst_n) begin 
    if(!rst_n) begin
       next_weight_input_mul <= 0; 
    end
    else begin
       next_weight_input_mul <= weight_input_mul; 
    end
end

//======================= CALL Adder ===============//
floating_point_adder floating_point_adder_01 ( .clk(clk_sys)
                                             , .rst_n(rst_n)
                                             , .input_factor_01(next_weight_input_mul)
                                             , .input_factor_02(next_adder_output)
                                             , .output_adder(pre_adder_output)
                                             );

//=================== CLK32 3 =====================//
always@(posedge clk or negedge rst_n) begin 
    if(!rst_n) begin
       next_adder_output <= 0; 
    end
    else if (init_mac) begin
       next_adder_output <= 0; 
    end
    else begin
       next_adder_output <= pre_adder_output; 
    end
    //#1 $display(">>>> XXX: MAC_OUTPUT: %x \n", next_adder_output);
end

assign mac_output = next_adder_output;

endmodule
