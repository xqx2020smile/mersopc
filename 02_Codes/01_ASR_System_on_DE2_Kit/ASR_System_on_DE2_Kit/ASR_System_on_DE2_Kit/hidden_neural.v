module hidden_neural (clk_sys, clk, rst_n, init_mac, ena_hidden_input_mac, ena_hidden_tagsigmoid, hidden_neural_input, hidden_neural_weight, hidden_neural_output);

parameter DATA_WIDTH = 32;

//Input
input clk_sys;
input clk;
input rst_n;
input init_mac;
input ena_hidden_input_mac;
input ena_hidden_tagsigmoid;
input [DATA_WIDTH -1:0] hidden_neural_input;
input [DATA_WIDTH -1:0] hidden_neural_weight;

//Output
output [DATA_WIDTH-1:0] hidden_neural_output;
reg    [DATA_WIDTH-1:0] hidden_neural_output;

// Internal 
wire   [DATA_WIDTH-1:0] tansigmoid_input;
wire   [DATA_WIDTH-1:0] tansigmoid_output;

reg next_ena_hidden_input_mac;

always@(posedge clk or negedge rst_n)begin
    if(!rst_n) begin
        next_ena_hidden_input_mac <= 0;
    end
    else begin
        next_ena_hidden_input_mac <= ena_hidden_input_mac;
    end
end


//========================== CLK32 28 ===================//
mac mac_01( .clk_sys(clk_sys)
          , .clk(clk)
          , .rst_n(rst_n)
          , .init_mac(init_mac)
          , .ena_mac(next_ena_hidden_input_mac)
          , .mac_input_01(hidden_neural_input)
          , .mac_input_02(hidden_neural_weight)
          , .mac_output(tansigmoid_input)
          );

//========================== CLK32 32 ===================//
tansigmoid_function tansigmoid_function_01( .clk_sys(clk_sys)  // 4 CLK32
                                          , .clk(clk)
                                          , .rst_n(rst_n)
                                          , .tansigmoid_input(tansigmoid_input)
                                          , .tansigmoid_output(tansigmoid_output)
                                          );

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        hidden_neural_output <= 0;
    end
    else begin
        hidden_neural_output <= tansigmoid_output;
    end
end

endmodule
