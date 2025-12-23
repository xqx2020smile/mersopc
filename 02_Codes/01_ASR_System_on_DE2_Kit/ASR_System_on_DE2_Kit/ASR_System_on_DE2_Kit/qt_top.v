module qt_top(CLOCK_50, CLK_GEN, SW, HEX0, HEX1, LEDR, mfcc_data, mfcc_addr);
//parameter
//input
input CLOCK_50;
input [1:0] SW;
input [31:0] mfcc_data;

//output
output [6:0] HEX0;
output [6:0] HEX1;
wire [6:0] HEX0;
wire [6:0] HEX1;
output [17:0] LEDR;
wire  [17:0] LEDR;
output [6:0] mfcc_addr;
wire [6:0] mfcc_addr;
output CLK_GEN;
wire CLK_GEN;
//internal signal

//main function
top top_01 (  .clk_sys(CLOCK_50)
            , .rst_n(SW[0])
            , .start(SW[1])
			, .clk(CLK_GEN)
	    , .mfcc_data (mfcc_data)
            , .led_01(HEX0)
	    , .led_02(HEX1)
	    , .result_regc(LEDR)
	    , .mfcc_addr(mfcc_addr) 
			);
endmodule 