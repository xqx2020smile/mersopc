//==============File name :  Sigmoid_function.v
//==============Date :  May 25 2013
//==============Update : none
module tansigmoid_function(clk_sys, clk, rst_n, tansigmoid_input, tansigmoid_output);

//============================================================================//
//y = a + b*x                     condition
//y = 0                                x<-6
//y = 0.0204  + 0.003*x            -6<=x<-5.5 --> Case 1 for a and b constant
//y = 0.0315  + 0.005*x          -5.5<=x<-5.2
//y = 0.0367  + 0.006*x          -5.2<=x<-4.9
//y = 0.15625 + 0.03125*x        -4.9<=x<-2.375
//y = 0.375   + 0.125*x        -2.375<=x<-1
//y = 0.5     + 0.25*x             -1<=x<1
//y = 0.625   + 0.125*x             1<=x<2.375
//y = 0.84375 + 0.03125*x       2.375<=x<5
//y = 0.9633  + 0.006*x             5<=x<5.3
//y = 0.9685  + 0.005*x           5.3<=x<5.6
//y = 0.9796  + 0.003*x           5.6<=x<6   ---> Case 11 for a and b constant
//y = 1                             6<=x   
//============================================================================//
//Parameter
parameter DATA_WIDTH = 32;
parameter POS_TWO = 32'b0_1000_0000_0000_0000_0000_0000_0000_000;
parameter NEG_ONE = 32'b1_0111_1111_0000_0000_0000_0000_0000_000;

//Input
input clk_sys;
input clk;
input rst_n;
input [DATA_WIDTH-1:0]  tansigmoid_input;

//output
output [DATA_WIDTH-1:0]  tansigmoid_output;
reg    [DATA_WIDTH-1:0]  tansigmoid_output;

//Internal signals
wire [DATA_WIDTH-1:0] sigmoid_input_2x;
reg  [DATA_WIDTH-1:0] next_sigmoid_input_2x;
wire [DATA_WIDTH-1:0] sigmoid_output_2x;
wire [DATA_WIDTH-1:0] result_mul;
reg  [DATA_WIDTH-1:0] next_result_mult;
wire [DATA_WIDTH-1:0] result_adder;

//Main function

//==================== CLK32 1 ============================//
// Call the "MULTIPLY" module
floating_point_multiple multiple_01 ( .clk(clk_sys),
                                      .rst_n(rst_n),
                                      .input_factor_01(POS_TWO),
                                      .input_factor_02(tansigmoid_input),
                                      .output_multiply(sigmoid_input_2x)
                                    );

//====================== CLK32 2 ==========================//
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        next_sigmoid_input_2x <= 0;
    end
    else begin
        next_sigmoid_input_2x <= sigmoid_input_2x;
    end
end
// Call the "SIGMOID" module
sigmoid_function sigmoid_function_01(   .clk_sys(clk_sys)
                                      , .clk(clk)
                                      , .rst_n(rst_n)
                                      , .sigmoid_input(next_sigmoid_input_2x)
                                      , .sigmoid_output(sigmoid_output_2x)
                                    );

//====================== CLK32 7 ===========================//

// Call the "MULTIPLY" module
floating_point_multiple multiple_02 ( .clk(clk_sys)
                                    , .rst_n(rst_n)
                                    , .input_factor_01(POS_TWO)
                                    , .input_factor_02(sigmoid_output_2x)
                                    , .output_multiply(result_mul)
                                    );

//====================== CLK32 8 ===========================//
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        next_result_mult <= 0;
    end
    else begin
        next_result_mult <= result_mul;
    end
end

//Call the "ADDER" module
floating_point_adder adder_01 ( .clk(clk_sys),
                                .rst_n(rst_n),
                                .input_factor_01(next_result_mult),
                                .input_factor_02(NEG_ONE), //-1
                                .output_adder(result_adder)
                              );

//========================= CLK32 9 ========================== //

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        tansigmoid_output <= 0;
    end
    else begin
        tansigmoid_output <= result_adder;
    end
end
endmodule
