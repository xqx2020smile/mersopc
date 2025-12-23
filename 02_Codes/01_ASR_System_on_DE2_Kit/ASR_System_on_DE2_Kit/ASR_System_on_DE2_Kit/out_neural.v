module out_neural (clk_sys, clk, rst_n, init_mac, ena_out_input_mac, ena_out_sigmoid, out_neural_input, out_neural_weight, out_neural_output);

parameter DATA_WIDTH = 32;

//Input
input clk_sys;
input clk;
input rst_n;
input init_mac;
input ena_out_input_mac;
input ena_out_sigmoid;
input [DATA_WIDTH -1:0] out_neural_input;
input [DATA_WIDTH -1:0] out_neural_weight;

//Output
output [DATA_WIDTH-1:0] out_neural_output;
reg    [DATA_WIDTH-1:0] out_neural_output;

// Internal 
wire   [DATA_WIDTH-1:0] sigmoid_input;
wire   [DATA_WIDTH-1:0] sigmoid_output;

reg next_ena_out_input_mac;
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        next_ena_out_input_mac <= 0;
    end
    else begin
        next_ena_out_input_mac <= ena_out_input_mac;
    end
end
//========================== CLK32 28 ===================//
mac mac_01( .clk_sys(clk_sys)
          , .clk(clk)
          , .rst_n(rst_n)
          , .init_mac(init_mac)
          , .ena_mac(next_ena_out_input_mac)
          , .mac_input_01(out_neural_input)
          , .mac_input_02(out_neural_weight)
          , .mac_output(sigmoid_input)
          );

//========================== CLK32 32 ===================//
sigmoid_function sigmoid_function_01( .clk_sys(clk_sys)  // 4 CLK32
                                    , .clk(clk)
                                    , .rst_n(rst_n)
                                    , .sigmoid_input(sigmoid_input)
                                    , .sigmoid_output(sigmoid_output)
                                    );

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        out_neural_output <= 0;
    end
    else begin
        out_neural_output <= sigmoid_output;
    end
end

endmodule
