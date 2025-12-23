

// TOTAL 19 CLK32
module checker           (clk, rst_n
                          , ena_checker
                          , out_neural_output_m1
                          , out_neural_output_m2
                          , out_neural_output_m3
                          , out_neural_output_m4
                          , out_neural_output_m5
                          , out_neural_output_m6
                          , out_neural_output_m7
                          , out_neural_output_m8
                          , out_neural_output_m9
                          , out_neural_output_m10
                          , out_neural_output_m11
                          , out_neural_output_m12
                          , out_neural_output_m13
                          , out_neural_output_m14
                          , out_neural_output_m15
                          , out_neural_output_m16
                          , out_neural_output_m17
                          , out_neural_output_m18
                          , out_neural_output_m19
                          , out_neural_output_m20
                          , led_01_output, led_02_output   
						  , encode
                         );

parameter DATA_WIDTH = 32;

input clk;
input rst_n;
input ena_checker;

input [DATA_WIDTH-1:0] out_neural_output_m1;
input [DATA_WIDTH-1:0] out_neural_output_m2;
input [DATA_WIDTH-1:0] out_neural_output_m3;
input [DATA_WIDTH-1:0] out_neural_output_m4;
input [DATA_WIDTH-1:0] out_neural_output_m5;
input [DATA_WIDTH-1:0] out_neural_output_m6;
input [DATA_WIDTH-1:0] out_neural_output_m7;
input [DATA_WIDTH-1:0] out_neural_output_m8;
input [DATA_WIDTH-1:0] out_neural_output_m9;
input [DATA_WIDTH-1:0] out_neural_output_m10;
input [DATA_WIDTH-1:0] out_neural_output_m11;
input [DATA_WIDTH-1:0] out_neural_output_m12;
input [DATA_WIDTH-1:0] out_neural_output_m13;
input [DATA_WIDTH-1:0] out_neural_output_m14;
input [DATA_WIDTH-1:0] out_neural_output_m15;
input [DATA_WIDTH-1:0] out_neural_output_m16;
input [DATA_WIDTH-1:0] out_neural_output_m17;
input [DATA_WIDTH-1:0] out_neural_output_m18;
input [DATA_WIDTH-1:0] out_neural_output_m19;
input [DATA_WIDTH-1:0] out_neural_output_m20;

output [6:0] led_01_output;
output [6:0] led_02_output;
output [19:0] encode;
reg [19:0] encode;
//Internal Signal
wire [19:0] network_encode_output;


//Call the instances
//=================== 16 CLK32
get_network_output get_network_output_01 (
                            .clk(clk), .rst_n(rst_n)
                          , .out_neural_output_01(out_neural_output_m1)
                          , .out_neural_output_02(out_neural_output_m2)
                          , .out_neural_output_03(out_neural_output_m3)
                          , .out_neural_output_04(out_neural_output_m4)
                          , .out_neural_output_05(out_neural_output_m5)
                          , .out_neural_output_06(out_neural_output_m6)
                          , .out_neural_output_07(out_neural_output_m7)
                          , .out_neural_output_08(out_neural_output_m8)
                          , .out_neural_output_09(out_neural_output_m9)
                          , .out_neural_output_10(out_neural_output_m10)
                          , .out_neural_output_11(out_neural_output_m11)
                          , .out_neural_output_12(out_neural_output_m12)
                          , .out_neural_output_13(out_neural_output_m13)
                          , .out_neural_output_14(out_neural_output_m14)
                          , .out_neural_output_15(out_neural_output_m15)
                          , .out_neural_output_16(out_neural_output_m16)
                          , .out_neural_output_17(out_neural_output_m17)
                          , .out_neural_output_18(out_neural_output_m18)
                          , .out_neural_output_19(out_neural_output_m19)
                          , .out_neural_output_20(out_neural_output_m20)
                          , .network_encode_output(network_encode_output)
                         );
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        encode <= 0;
    end
    else begin
	    encode <=network_encode_output;
    end
 end
//=================== 03 CLK32
led_decode led_decode_01 (.clk(clk), .rst_n(rst_n)
                        , .network_encode_output(network_encode_output)
                        , .led_01_output(led_01_output), .led_02_output(led_02_output)
                         );
//=====> TOTAL 19 CLK32
endmodule


