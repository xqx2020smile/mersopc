//==============File name :  floating_point_compare.v
//==============Date :  May 25 2013
//==============Update : none

module floating_point_compare (clk, rst_n, factor_input, factor_a, factor_b);

//Parameter
parameter FACTOR_A1  = 32'b0_01111000_11010001110111101110010 ;// 0.014217245
parameter FACTOR_A2  = 32'b0_01111010_10010110100111001110010 ;// 0.04963536
parameter FACTOR_A3  = 32'b0_01111100_00011000001000011110100 ;// 0.136783431
parameter FACTOR_A4  = 32'b0_01111100_11011001001101010011110 ;// 0.231058579

parameter FACTOR_B1  = 32'b0_01111011_00110101101011001000100; // 0.075603993
parameter FACTOR_B2  = 32'b0_01111100_10011000000000010011100; // 0.199221088
parameter FACTOR_B3  = 32'b0_01111101_10010010101011010110100; // 0.39323963
parameter FACTOR_B4  = 32'b0_01111101_11111011010110011010110; // 0.495459285

parameter FACTOR_B5  = 32'b0_01111110_11011001010010100110111 ;// 0.924396007
parameter FACTOR_B6  = 32'b0_01111110_10011001111111111011000 ;// 0.800778912
parameter FACTOR_B7  = 32'b0_01111110_00110110101010010100101 ;// 0.606760369  
parameter FACTOR_B8  = 32'b0_01111110_00000010010100110010100 ;// 0.504540715

parameter ZERO       = 32'b0_0000_0000_0000_0000_0000_0000_0000_000;//0
parameter ONE        = 32'b0_0111_1111_0000_0000_0000_0000_0000_000;//1

parameter DATA_WIDTH = 32;

//parameter COND_0
parameter COND_0_EXP = 8'b1000_0001 ; //129
parameter COND_0_SIG = 23'b0100_0000_0000_0000_0000_000 ; // 5 

//parameter COND_1;
parameter COND_1_EXP = 8'b1000_0000 ; //128
parameter COND_1_SIG = 23'b1100_1100_1100_1100_1100_110;  // 3.6 

//parameter COND_2
parameter COND_2_EXP = 8'b0111_1111 ; //127
parameter COND_2_SIG = 23'b0010_0110_0110_0110_0110_011;  // 2.3

input clk;
input rst_n;
input [DATA_WIDTH -1: 0] factor_input;

output [DATA_WIDTH-1:0] factor_a;
output [DATA_WIDTH-1:0] factor_b;
reg    [DATA_WIDTH-1:0] factor_a;
reg    [DATA_WIDTH-1:0] factor_b;

reg    [3:0] case_num;


//MAIN FUNCTION
always@(posedge clk or negedge rst_n) begin
   if(!rst_n) begin
       case_num <= 4'b0000;
   end
   else if(factor_input[31] == 1) begin  // The negative number
       if(factor_input[30:23] > COND_0_EXP) begin       // shift 3 --> factor_input <= -8 
           case_num <= 4'b0000;
       end
       else if(factor_input[30:23] == COND_0_EXP) begin // shift 2 --> factor_input <= -4
           if(factor_input[22:0] >= COND_0_SIG) begin      // factor_input <= -5
               case_num <= 4'b0000;
           end
           else begin                                      // -5 < factor_input <= -4
               case_num <= 4'b0001;                       
           end
       end
       else if(factor_input[30:23] == COND_1_EXP) begin // shift 1 --> factor_input <= -2
           if(factor_input[22:0] >= COND_1_SIG) begin      // -4 < factor_input  <= -3.6 
               case_num <= 4'b0001;                      
           end 
           else if (factor_input[22:0] >= COND_2_SIG) begin// -3.6 < factor_input <= -2.3
               case_num <= 4'b0010;           
           end
           else begin
               case_num <= 4'b0011;                        // -2.3 < factor <= -2        
           end
       end
       else if(factor_input[30:23] == COND_2_EXP) begin // shift 0 --> factor_input <= -1   
               case_num <= 4'b0011;                        // -2 < factor_input <= -1 
       end
       else begin
               case_num <= 4'b0100;                        // 0  <= factor_input < -1
       end
   end
   else begin // The positive number
       if(factor_input[30:23] > COND_0_EXP) begin       // shift 3 --> 8 <= factor_input 
           case_num <= 4'b1001;
       end
       else if(factor_input[30:23] == COND_0_EXP) begin // shift 2 --> 4 <= factor_input
           if(factor_input[22:0] >= COND_0_SIG) begin      // 5 <= factor_input
               case_num <= 4'b1001;
           end
           else begin                                      // 4 <= factor_input < 5
               case_num <= 4'b1000;                       
           end
       end
       else if(factor_input[30:23] == COND_1_EXP) begin // shift 1 --> 2 <= factor_input
           if(factor_input[22:0] >= COND_1_SIG) begin      // 3.6 <= factor_input  < 4 
               case_num <= 4'b1000;                      
           end 
           else if (factor_input[22:0] >= COND_2_SIG) begin// 2.3 <= factor_input < 3.6
               case_num <= 4'b0111;           
           end
           else begin
               case_num <= 4'b0110;                        //  2 <= factor_input < 2.3        
           end
       end
       else if(factor_input[30:23] == COND_2_EXP) begin // shift 0 --> 1 <= factor_input
               case_num <= 4'b0110;                        // 1 <= factor_input < 2 
       end
       else begin
               case_num <= 4'b0101;                        // 0  <= factor_input < 1
       end
   end
end


always@(posedge clk or negedge rst_n) begin
    if(!rst_n ) begin
        factor_a <= 0;
        factor_b <= 0;
    end
    else begin
        case (case_num)
            4'b0000: begin
                         factor_a <= 0;
                         factor_b <= 0;
                     end
            4'b0001: begin
                         factor_a <= FACTOR_A1;
                         factor_b <= FACTOR_B1;
                     end
            4'b0010: begin
                         factor_a <= FACTOR_A2;
                         factor_b <= FACTOR_B2;
                     end
            4'b0011: begin
                         factor_a <= FACTOR_A3;
                         factor_b <= FACTOR_B3;
                     end
            4'b0100: begin
                         factor_a <= FACTOR_A4;
                         factor_b <= FACTOR_B4;
                  end
            4'b0101: begin
                         factor_a <= FACTOR_A4;
                         factor_b <= FACTOR_B8;
                     end
            4'b0110: begin
                         factor_a <= FACTOR_A3;
                         factor_b <= FACTOR_B7;
                     end
            4'b0111: begin
                         factor_a <= FACTOR_A2;
                         factor_b <= FACTOR_B6;
                     end
            4'b1000: begin
                         factor_a <= FACTOR_A1;
                         factor_b <= FACTOR_B5;
                     end
            default : begin //4'b1001
                         factor_a <= ZERO;
                         factor_b <= ONE;
                     end
        endcase
    end
end

endmodule


