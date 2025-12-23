//==============File name :  Sigmoid_function.v
//==============Date :  May 25 2013
//==============Update : none
module sigmoid_function(clk_sys, clk, rst_n, sigmoid_input, sigmoid_output);

//============================================================================//
//y = ax + b                     condition
//============================================================================//
//Parameter
parameter DATA_WIDTH = 32;
parameter ALL_ONE = 32'b1_1111_1111_1111_1111_1111_1111_1111_111;//1


//Input
input clk_sys;
input clk;
input rst_n;
input [DATA_WIDTH-1:0]  sigmoid_input;

//output
output [DATA_WIDTH-1:0]  sigmoid_output;
reg    [DATA_WIDTH-1:0]  sigmoid_output;

//Internal signals
wire [DATA_WIDTH-1:0] factor_a;

reg  [DATA_WIDTH-1:0] next_factor_a;

wire [DATA_WIDTH-1:0] factor_b;
reg  [DATA_WIDTH-1:0] next_factor_b;

wire [DATA_WIDTH-1:0] result_adder;
wire [DATA_WIDTH-1:0] result_mult;
reg  [DATA_WIDTH-1:0] next_result_mult;

//Main function

//==================== CLK32 1 ============================//
// Call "COMPARE" Module
floating_point_compare floating_point_compare_01 (  .clk(clk_sys) 
                                                  , .rst_n(rst_n)
                                                  , .factor_input(sigmoid_input)
                                                  , .factor_a(factor_a)
                                                  , .factor_b(factor_b)
                                                 );

//====================== CLK32 2 ==========================//
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        next_factor_a <= 0;
    end
    else begin
        next_factor_a <= factor_a;
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        next_factor_b <= 0;
    end
    else begin
        next_factor_b <= factor_b;
    end
end


// Call the "MULTIPLY" module
floating_point_multiple multiple_01 ( .clk(clk_sys),
                                      .rst_n(rst_n),
                                      .input_factor_01(next_factor_a),
                                      .input_factor_02(sigmoid_input),
                                      .output_multiply(result_mult)
                                    );

//====================== CLK32 3 ===========================//
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        next_result_mult <= 0;
    end
    else begin
        next_result_mult <= result_mult;
    end
end

//Call the "ADDER" module
floating_point_adder adder_01 ( .clk(clk_sys),
                                .rst_n(rst_n),
                                .input_factor_01(next_result_mult),
                                .input_factor_02(next_factor_b),
                                .output_adder(result_adder)
                              );

//========================= CLK32 4 ========================== //

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        sigmoid_output <= 0;
    end
    else begin
        sigmoid_output <= result_adder;
    end
end
endmodule
