module clock_generation (clk_sys, rst_n, clk);

parameter OVERLOAD = 4;

input clk_sys;
input rst_n;

output clk;
reg    clk;

reg [2:0] clock_counter;
wire [2:0] pre_clock_counter;
wire pre_clk;

always@(posedge clk_sys or negedge rst_n) begin
    if(!rst_n) begin
        clock_counter <= 0;
    end
    else if(pre_clock_counter == OVERLOAD) begin
        clock_counter <= 0;
    end
    else begin
        clock_counter <= clock_counter + 1;
    end
end
assign pre_clock_counter = clock_counter;

always@(posedge clk_sys or negedge rst_n) begin
    if(!rst_n) begin
        clk <= 0;
    end
    else if (clock_counter == OVERLOAD) begin
        clk <= !clk;
    end
    else begin
        clk <= pre_clk;
    end
end
assign pre_clk = clk;

endmodule 
