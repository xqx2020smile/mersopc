module final_mem_control (  clk, rst_n
                          , en_wr
                          , input_final_reg 
                          , output_final_reg_0 
                          , output_final_reg_1 
                          , output_final_reg_2 
                          , output_final_reg_3 
                          , output_final_reg_4 
                          , output_final_reg_5 
                          , output_final_reg_6 
                          , output_final_reg_7 
                          , output_final_reg_8 
                          , output_final_reg_9 
                          , output_final_reg_10
                          , output_final_reg_11
                          , output_final_reg_12
                          , output_final_reg_13
                          , output_final_reg_14
                          , output_final_reg_15
                          , output_final_reg_16
                          , output_final_reg_17
                          , output_final_reg_18
                          , output_final_reg_19
                         );

//Parameter 
parameter DATA_WIDTH = 32;
parameter HIDDEN_NEURAL_NUM = 36; 
parameter OUT_NEURAL_NUM = 20; 

//Input
input clk;
input rst_n;
input [19:0]en_wr;
input [DATA_WIDTH-1:0] input_final_reg; 

//Output
output [DATA_WIDTH-1:0] output_final_reg_0 ;
output [DATA_WIDTH-1:0] output_final_reg_1 ;
output [DATA_WIDTH-1:0] output_final_reg_2 ;
output [DATA_WIDTH-1:0] output_final_reg_3 ;
output [DATA_WIDTH-1:0] output_final_reg_4 ;
output [DATA_WIDTH-1:0] output_final_reg_5 ;
output [DATA_WIDTH-1:0] output_final_reg_6 ;
output [DATA_WIDTH-1:0] output_final_reg_7 ;
output [DATA_WIDTH-1:0] output_final_reg_8 ;
output [DATA_WIDTH-1:0] output_final_reg_9 ;
output [DATA_WIDTH-1:0] output_final_reg_10;
output [DATA_WIDTH-1:0] output_final_reg_11;
output [DATA_WIDTH-1:0] output_final_reg_12;
output [DATA_WIDTH-1:0] output_final_reg_13;
output [DATA_WIDTH-1:0] output_final_reg_14;
output [DATA_WIDTH-1:0] output_final_reg_15;
output [DATA_WIDTH-1:0] output_final_reg_16;
output [DATA_WIDTH-1:0] output_final_reg_17;
output [DATA_WIDTH-1:0] output_final_reg_18;
output [DATA_WIDTH-1:0] output_final_reg_19;

wire [DATA_WIDTH-1:0] output_final_reg_0 ;
wire [DATA_WIDTH-1:0] output_final_reg_1 ;
wire [DATA_WIDTH-1:0] output_final_reg_2 ;
wire [DATA_WIDTH-1:0] output_final_reg_3 ;
wire [DATA_WIDTH-1:0] output_final_reg_4 ;
wire [DATA_WIDTH-1:0] output_final_reg_5 ;
wire [DATA_WIDTH-1:0] output_final_reg_6 ;
wire [DATA_WIDTH-1:0] output_final_reg_7 ;
wire [DATA_WIDTH-1:0] output_final_reg_8 ;
wire [DATA_WIDTH-1:0] output_final_reg_9 ;
wire [DATA_WIDTH-1:0] output_final_reg_10;
wire [DATA_WIDTH-1:0] output_final_reg_11;
wire [DATA_WIDTH-1:0] output_final_reg_12;
wire [DATA_WIDTH-1:0] output_final_reg_13;
wire [DATA_WIDTH-1:0] output_final_reg_14;
wire [DATA_WIDTH-1:0] output_final_reg_15;
wire [DATA_WIDTH-1:0] output_final_reg_16;
wire [DATA_WIDTH-1:0] output_final_reg_17;
wire [DATA_WIDTH-1:0] output_final_reg_18;
wire [DATA_WIDTH-1:0] output_final_reg_19;

final_reg final_reg_1  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[0]),  .data_in(input_final_reg), .data_out(output_final_reg_0 )); 
final_reg final_reg_2  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[1]),  .data_in(input_final_reg), .data_out(output_final_reg_1 ));
final_reg final_reg_3  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[2]),  .data_in(input_final_reg), .data_out(output_final_reg_2 ));
final_reg final_reg_4  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[3]),  .data_in(input_final_reg), .data_out(output_final_reg_3 ));
final_reg final_reg_5  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[4]),  .data_in(input_final_reg), .data_out(output_final_reg_4 ));
final_reg final_reg_6  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[5]),  .data_in(input_final_reg), .data_out(output_final_reg_5 ));
final_reg final_reg_7  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[6]),  .data_in(input_final_reg), .data_out(output_final_reg_6 ));
final_reg final_reg_8  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[7]),  .data_in(input_final_reg), .data_out(output_final_reg_7 ));
final_reg final_reg_9  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[8]),  .data_in(input_final_reg), .data_out(output_final_reg_8 ));
final_reg final_reg_10 (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[9]),  .data_in(input_final_reg), .data_out(output_final_reg_9 ));
final_reg final_reg_11 (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[10]), .data_in(input_final_reg), .data_out(output_final_reg_10));
final_reg final_reg_12 (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[11]), .data_in(input_final_reg), .data_out(output_final_reg_11));
final_reg final_reg_13 (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[12]), .data_in(input_final_reg), .data_out(output_final_reg_12));
final_reg final_reg_14 (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[13]), .data_in(input_final_reg), .data_out(output_final_reg_13));
final_reg final_reg_15 (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[14]), .data_in(input_final_reg), .data_out(output_final_reg_14));
final_reg final_reg_16 (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[15]), .data_in(input_final_reg), .data_out(output_final_reg_15));
final_reg final_reg_17 (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[16]), .data_in(input_final_reg), .data_out(output_final_reg_16));
final_reg final_reg_18 (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[17]), .data_in(input_final_reg), .data_out(output_final_reg_17));
final_reg final_reg_19 (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[18]), .data_in(input_final_reg), .data_out(output_final_reg_18));
final_reg final_reg_20 (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[19]), .data_in(input_final_reg), .data_out(output_final_reg_19));

endmodule

module final_reg (clk, rst_n, en_wr, data_in, data_out);
parameter DATA_WIDTH = 32;
input clk;
input rst_n;
input en_wr;
input [DATA_WIDTH-1:0]data_in;

output [DATA_WIDTH-1:0]data_out;
reg    [DATA_WIDTH-1:0]data_out;
wire   [DATA_WIDTH-1:0]pre_data_out;

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        data_out <= 0;
    end
    else if(en_wr)begin
        data_out <= data_in;
    end
    else begin
        data_out <= pre_data_out;
    end
end
assign pre_data_out = data_out;

endmodule
