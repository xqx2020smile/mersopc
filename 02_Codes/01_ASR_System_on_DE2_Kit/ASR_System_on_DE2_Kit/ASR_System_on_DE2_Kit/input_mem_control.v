module input_mem_control (  clk
                           , rst_n
                           , mfcc_addr
                           , mfcc_data
                           , ena_hidden_input_mac
                           , in_weight_case
                           , output_mem_mfcc
                           , output_mem_weight
                         );

//Parameter 
parameter DATA_WIDTH = 32;

//Input
input clk;
input rst_n;
input [DATA_WIDTH-1:0] mfcc_data;
input ena_hidden_input_mac;
input [5:0] in_weight_case;

//Output
output [DATA_WIDTH-1:0] output_mem_mfcc;
output [DATA_WIDTH-1:0] output_mem_weight;
wire   [DATA_WIDTH-1:0] output_mem_weight;
output [6:0] mfcc_addr;

//Interal signal
reg  [6:0] counter;
wire [DATA_WIDTH-1:0] weight_data_01; 
wire [DATA_WIDTH-1:0] weight_data_02; 
wire [12:0] weight_addr;

//Counter
always@(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        counter <= 0;
    end
    else if(ena_hidden_input_mac) begin
        counter <= counter + 1;
    end
    else begin
        counter <= 0;
    end
end

assign  weight_addr = {in_weight_case, counter};
assign  mfcc_addr   = counter;

mem_rom_weight_middle_01 mem_rom_weight_middle_x01 (.clock(clk), .address(weight_addr[11:0]), .q(weight_data_01)); 
mem_rom_weight_middle_02 mem_rom_weight_middle_x02 (.clock(clk), .address(weight_addr[11:0]), .q(weight_data_02)); 

assign output_mem_mfcc   = mfcc_data;
assign output_mem_weight = (weight_addr[12])?weight_data_02:weight_data_01;

endmodule
