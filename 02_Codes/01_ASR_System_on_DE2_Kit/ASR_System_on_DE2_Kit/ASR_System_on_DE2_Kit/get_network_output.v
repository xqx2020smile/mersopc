
// TOTAL 16 CLK32
module get_network_output(clk, rst_n
                          , out_neural_output_01, out_neural_output_02, out_neural_output_03, out_neural_output_04, out_neural_output_05
                          , out_neural_output_06, out_neural_output_07, out_neural_output_08, out_neural_output_09, out_neural_output_10
                          , out_neural_output_11, out_neural_output_12, out_neural_output_13, out_neural_output_14, out_neural_output_15
                          , out_neural_output_16, out_neural_output_17, out_neural_output_18, out_neural_output_19, out_neural_output_20
                          , network_encode_output  
                         );

parameter DATA_WIDTH = 32;

input clk;
input rst_n;

input [DATA_WIDTH-1:0] out_neural_output_01;
input [DATA_WIDTH-1:0] out_neural_output_02;
input [DATA_WIDTH-1:0] out_neural_output_03;
input [DATA_WIDTH-1:0] out_neural_output_04;
input [DATA_WIDTH-1:0] out_neural_output_05;
input [DATA_WIDTH-1:0] out_neural_output_06;
input [DATA_WIDTH-1:0] out_neural_output_07;
input [DATA_WIDTH-1:0] out_neural_output_08;
input [DATA_WIDTH-1:0] out_neural_output_09;
input [DATA_WIDTH-1:0] out_neural_output_10;
input [DATA_WIDTH-1:0] out_neural_output_11;
input [DATA_WIDTH-1:0] out_neural_output_12;
input [DATA_WIDTH-1:0] out_neural_output_13;
input [DATA_WIDTH-1:0] out_neural_output_14;
input [DATA_WIDTH-1:0] out_neural_output_15;
input [DATA_WIDTH-1:0] out_neural_output_16;
input [DATA_WIDTH-1:0] out_neural_output_17;
input [DATA_WIDTH-1:0] out_neural_output_18;
input [DATA_WIDTH-1:0] out_neural_output_19;
input [DATA_WIDTH-1:0] out_neural_output_20;

output [19:0] network_encode_output;
reg    [19:0] network_encode_output;

//Internal Signal
wire [DATA_WIDTH-1:0] compare_result_00;
wire [DATA_WIDTH-1:0] compare_result_01;
wire [DATA_WIDTH-1:0] compare_result_02;
wire [DATA_WIDTH-1:0] compare_result_03;
wire [DATA_WIDTH-1:0] compare_result_04;
wire [DATA_WIDTH-1:0] compare_result_05;
wire [DATA_WIDTH-1:0] compare_result_06;
wire [DATA_WIDTH-1:0] compare_result_07;
wire [DATA_WIDTH-1:0] compare_result_08;
wire [DATA_WIDTH-1:0] compare_result_09;

wire [DATA_WIDTH-1:0] compare_result_10;
wire [DATA_WIDTH-1:0] compare_result_11;
wire [DATA_WIDTH-1:0] compare_result_12;
wire [DATA_WIDTH-1:0] compare_result_13;
wire [DATA_WIDTH-1:0] compare_result_14;

wire [DATA_WIDTH-1:0] compare_result_20;
wire [DATA_WIDTH-1:0] compare_result_21;

wire [DATA_WIDTH-1:0] compare_result_30;
wire [DATA_WIDTH-1:0] compare_result_40;


//=====================  3 CLK32 =========================== //
pair_compare pair_compare_00   (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(out_neural_output_01), .compare_input_02(out_neural_output_02) 
                              , .compare_result(compare_result_00) 
                               );

pair_compare pair_compare_01   (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(out_neural_output_03), .compare_input_02(out_neural_output_04) 
                              , .compare_result(compare_result_01) 
                               );

pair_compare pair_compare_02   (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(out_neural_output_05), .compare_input_02(out_neural_output_06) 
                              , .compare_result(compare_result_02) 
                               );

pair_compare pair_compare_03   (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(out_neural_output_07), .compare_input_02(out_neural_output_08) 
                              , .compare_result(compare_result_03) 
                               );

pair_compare pair_compare_04   (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(out_neural_output_09), .compare_input_02(out_neural_output_10) 
                              , .compare_result(compare_result_04) 
                               );

pair_compare pair_compare_05   (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(out_neural_output_11), .compare_input_02(out_neural_output_12) 
                              , .compare_result(compare_result_05) 
                               );

pair_compare pair_compare_06   (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(out_neural_output_13), .compare_input_02(out_neural_output_14) 
                              , .compare_result(compare_result_06) 
                               );

pair_compare pair_compare_07   (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(out_neural_output_15), .compare_input_02(out_neural_output_16) 
                              , .compare_result(compare_result_07) 
                               );

pair_compare pair_compare_08   (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(out_neural_output_17), .compare_input_02(out_neural_output_18) 
                              , .compare_result(compare_result_08) 
                               );

pair_compare pair_compare_09  (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(out_neural_output_19), .compare_input_02(out_neural_output_20) 
                              , .compare_result(compare_result_09) 
                              );

//=====================  6 CLK32 =========================== //
pair_compare pair_compare_10  (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(compare_result_00), .compare_input_02(compare_result_01) 
                              , .compare_result(compare_result_10) 
                              );

pair_compare pair_compare_11  (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(compare_result_02), .compare_input_02(compare_result_03) 
                              , .compare_result(compare_result_11) 
                              ); 

pair_compare pair_compare_12  (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(compare_result_04), .compare_input_02(compare_result_05) 
                              , .compare_result(compare_result_12) 
                              ); 

pair_compare pair_compare_13  (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(compare_result_06), .compare_input_02(compare_result_07) 
                              , .compare_result(compare_result_13) 
                              ); 

pair_compare pair_compare_14  (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(compare_result_08), .compare_input_02(compare_result_09) 
                              , .compare_result(compare_result_14) 
                              ); 

//=====================  9 CLK32 =========================== //
pair_compare pair_compare_20  (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(compare_result_10), .compare_input_02(compare_result_11) 
                              , .compare_result(compare_result_20) 
                              ); 

pair_compare pair_compare_21  (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(compare_result_12), .compare_input_02(compare_result_13) 
                              , .compare_result(compare_result_21) 
                              ); 

//=====================  12 CLK32 =========================== //
pair_compare pair_compare_30  (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(compare_result_20), .compare_input_02(compare_result_21) 
                              , .compare_result(compare_result_30) 
                              ); 

//=====================  15 CLK32 =========================== //
pair_compare pair_compare_40  (.clk(clk), .rst_n(rst_n)
                              , .compare_input_01(compare_result_14), .compare_input_02(compare_result_30) 
                              , .compare_result(compare_result_40) 
                              ); 

//======================= 16 CLK32
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        network_encode_output <= 0;
    end
    else begin
        case(compare_result_40) 
        out_neural_output_01: begin
            network_encode_output <= 20'b0000_0000_0000_0000_0001;
        end       
        out_neural_output_02: begin
            network_encode_output <= 20'b0000_0000_0000_0000_0010;
        end       
        out_neural_output_03: begin
            network_encode_output <= 20'b0000_0000_0000_0000_0100;
        end       
        out_neural_output_04: begin
            network_encode_output <= 20'b0000_0000_0000_0000_1000;
        end       
        out_neural_output_05: begin
            network_encode_output <= 20'b0000_0000_0000_0001_0000;
        end       
        out_neural_output_06: begin
            network_encode_output <= 20'b0000_0000_0000_0010_0000;
        end       
        out_neural_output_07: begin
            network_encode_output <= 20'b0000_0000_0000_0100_0000;
        end       
        out_neural_output_08: begin
            network_encode_output <= 20'b0000_0000_0000_1000_0000;
        end       
        out_neural_output_09: begin
            network_encode_output <= 20'b0000_0000_0001_0000_0000;
        end       
        out_neural_output_10: begin
            network_encode_output <= 20'b0000_0000_0010_0000_0000;
        end       
        out_neural_output_11: begin
            network_encode_output <= 20'b0000_0000_0100_0000_0000;
        end       
        out_neural_output_12: begin
            network_encode_output <= 20'b0000_0000_1000_0000_0000;
        end       
        out_neural_output_13: begin
            network_encode_output <= 20'b0000_0001_0000_0000_0000;
        end       
        out_neural_output_14: begin
            network_encode_output <= 20'b0000_0010_0000_0000_0000;
        end       
        out_neural_output_15: begin
            network_encode_output <= 20'b0000_0100_0000_0000_0000;
        end       
        out_neural_output_16: begin
            network_encode_output <= 20'b0000_1000_0000_0000_0000;
        end       
        out_neural_output_17: begin
            network_encode_output <= 20'b0001_0000_0000_0000_0000;
        end       
        out_neural_output_18: begin
            network_encode_output <= 20'b0010_0000_0000_0000_0000;
        end       
        out_neural_output_19: begin
            network_encode_output <= 20'b0100_0000_0000_0000_0000;
        end       
        default: begin //20
            network_encode_output <= 20'b1000_0000_0000_0000_0000;
        end       
        endcase
    end
end

endmodule


