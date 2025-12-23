module top (clk_sys, clk, rst_n, start, led_01, led_02, result_regc, mfcc_data, mfcc_addr);

//============== PARAMETER
parameter DATA_WIDTH = 32;

input clk_sys;
input rst_n;
input start;
input [31:0] mfcc_data;
output [6:0] mfcc_addr;
output clk;
output [6:0] led_01;
output [6:0] led_02;
output [17:0] result_regc;
reg [17:0] result_regc;
//============== INTERNAL SIGNAL
//clock generation
wire clk;

//state
wire ena_hidden_input_mac; 
wire ena_hidden_tagsigmoid;
wire [59:0]ena_hidden_write_reg ;//TODO
wire ena_out_input_mac;    
wire ena_out_sigmoid;      
wire [19:0]ena_out_write_reg ; //TODO
wire ena_checker;          
wire [5:0] in_weight_case;
wire [4:0] out_weight_case;
wire init_mac;

wire [DATA_WIDTH-1:0] output_mem_mfcc;           //data from mfcc memory is read out
wire [DATA_WIDTH-1:0] output_mem_weight_hid_lay; //data from weight memory of hidden layer is read out

wire [DATA_WIDTH-1:0] input_mfcc_hidden_neural;  //is assigned by output_mem_mfcc
wire [DATA_WIDTH-1:0] input_weight_hidden_neural;//is assigned by output_mem_weight_hid_lay

wire [DATA_WIDTH-1:0] output_hidden_neural;      //data from hidden neuron is read out

wire [DATA_WIDTH-1:0] output_mem_weight_out_lay; //data from weight memory of out layter is read out
wire [DATA_WIDTH-1:0] output_mid_reg;            //data from middle register is read out

wire [DATA_WIDTH-1:0] out_neural_output;         //data from out neuron

wire [DATA_WIDTH-1:0] output_final_reg_0;  
wire [DATA_WIDTH-1:0] output_final_reg_1;  
wire [DATA_WIDTH-1:0] output_final_reg_2;  
wire [DATA_WIDTH-1:0] output_final_reg_3;  
wire [DATA_WIDTH-1:0] output_final_reg_4;  
wire [DATA_WIDTH-1:0] output_final_reg_5;  
wire [DATA_WIDTH-1:0] output_final_reg_6;  
wire [DATA_WIDTH-1:0] output_final_reg_7;  
wire [DATA_WIDTH-1:0] output_final_reg_8;  
wire [DATA_WIDTH-1:0] output_final_reg_9;  
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
wire [19:0] result  ;
//====================== CALL THE INSTANCE ============================//

//============ BLOCK_01
clock_generation clock_generation_01 (.clk_sys(clk_sys), .rst_n(rst_n), .clk(clk));

//============ BLOCK_02
input_mem_control input_mem_control_01 (  .clk(clk), .rst_n(rst_n)
                                       , .mfcc_addr(mfcc_addr)
                                       , .mfcc_data(mfcc_data)
                                       , .ena_hidden_input_mac (ena_hidden_input_mac)
                                       , .in_weight_case       (in_weight_case)
                                       //output
                                       , .output_mem_mfcc      (output_mem_mfcc)
                                       , .output_mem_weight    (output_mem_weight_hid_lay)
                                       );

assign input_mfcc_hidden_neural   = output_mem_mfcc;
assign input_weight_hidden_neural = output_mem_weight_hid_lay;
//============= BLOCK_03
hidden_neural hidden_neural_n1 (.clk_sys(clk_sys), .clk(clk), .rst_n(rst_n)
                              , .ena_hidden_input_mac(ena_hidden_input_mac)
                              , .ena_hidden_tagsigmoid(ena_hidden_tagsigmoid)
                              , .init_mac(init_mac)
                              , .hidden_neural_input(input_mfcc_hidden_neural)
                              , .hidden_neural_weight(input_weight_hidden_neural)
                              //output 
                              , .hidden_neural_output(output_hidden_neural)
                              );

//============ BLOCK_04
output_mem_control output_mem_control_01 (  .clk(clk), .rst_n(rst_n)
                          , .ena_out_input_mac(ena_out_input_mac)
                          , .en_wr(ena_hidden_write_reg)
                          , .out_weight_case(out_weight_case)
                          , .input_mid_reg(output_hidden_neural) 
                          //output 
                          , .output_mid_reg(output_mid_reg)             
                          , .output_mem_weight(output_mem_weight_out_lay) 
                     );

//============ BLOCK_05

out_neural out_neural_01 (.clk_sys(clk_sys), .clk(clk), .rst_n(rst_n)
                        , .init_mac(init_mac)
                        , .ena_out_input_mac(ena_out_input_mac)
                        , .ena_out_sigmoid(ena_out_sigmoid)
                        , .out_neural_input(output_mid_reg)
                        , .out_neural_weight(output_mem_weight_out_lay)
                        //output                        
                        , .out_neural_output(out_neural_output)
                        );

final_mem_control final_mem_control_01(    .clk(clk) 
                                         , .rst_n(rst_n)
                                         , .en_wr(ena_out_write_reg)
                                         , .input_final_reg(out_neural_output)
                                         , .output_final_reg_0 (output_final_reg_0) 
                                         , .output_final_reg_1 (output_final_reg_1)
                                         , .output_final_reg_2 (output_final_reg_2)
                                         , .output_final_reg_3 (output_final_reg_3)
                                         , .output_final_reg_4 (output_final_reg_4)
                                         , .output_final_reg_5 (output_final_reg_5)
                                         , .output_final_reg_6 (output_final_reg_6)
                                         , .output_final_reg_7 (output_final_reg_7)
                                         , .output_final_reg_8 (output_final_reg_8)
                                         , .output_final_reg_9 (output_final_reg_9)
                                         , .output_final_reg_10(output_final_reg_10)
                                         , .output_final_reg_11(output_final_reg_11)
                                         , .output_final_reg_12(output_final_reg_12)
                                         , .output_final_reg_13(output_final_reg_13)
                                         , .output_final_reg_14(output_final_reg_14)
                                         , .output_final_reg_15(output_final_reg_15)
                                         , .output_final_reg_16(output_final_reg_16)
                                         , .output_final_reg_17(output_final_reg_17)
                                         , .output_final_reg_18(output_final_reg_18)
                                         , .output_final_reg_19(output_final_reg_19)
                                       );


//============ BLOCK_06
checker checker_01 (   .clk(clk)
                     , .rst_n(rst_n)
                     , .ena_checker(ena_checker)
                     , .out_neural_output_m1  (output_final_reg_0)  
                     , .out_neural_output_m2  (output_final_reg_1)  
                     , .out_neural_output_m3  (output_final_reg_2)  
                     , .out_neural_output_m4  (output_final_reg_3)  
                     , .out_neural_output_m5  (output_final_reg_4)  
                     , .out_neural_output_m6  (output_final_reg_5)  
                     , .out_neural_output_m7  (output_final_reg_6)  
                     , .out_neural_output_m8  (output_final_reg_7)  
                     , .out_neural_output_m9  (output_final_reg_8)  
                     , .out_neural_output_m10 (output_final_reg_9)  
                     , .out_neural_output_m11 (output_final_reg_10) 
                     , .out_neural_output_m12 (output_final_reg_11) 
                     , .out_neural_output_m13 (output_final_reg_12) 
                     , .out_neural_output_m14 (output_final_reg_13) 
                     , .out_neural_output_m15 (output_final_reg_14) 
                     , .out_neural_output_m16 (output_final_reg_15) 
                     , .out_neural_output_m17 (output_final_reg_16) 
                     , .out_neural_output_m18 (output_final_reg_17) 
                     , .out_neural_output_m19 (output_final_reg_18) 
                     , .out_neural_output_m20 (output_final_reg_19) 
                     , .led_01_output(led_01) //output
                     , .led_02_output(led_02) //output
					 , .encode(result)
                   );
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        result_regc <= 0;
    end
    else begin
        result_regc <=result;
    end
end
network_control network_control_01 (.clk(clk), .rst_n(rst_n), .start(start)
                                  , .ena_hidden_input_mac  (ena_hidden_input_mac)
                                  , .ena_hidden_tagsigmoid (ena_hidden_tagsigmoid)
                                  , .ena_hidden_write_reg  (ena_hidden_write_reg)
                                  , .ena_out_input_mac     (ena_out_input_mac)
                                  , .ena_out_sigmoid       (ena_out_sigmoid)
                                  , .ena_out_write_reg     (ena_out_write_reg)
                                  , .ena_checker           (ena_checker)
                                  , .in_weight_case        (in_weight_case)
                                  , .out_weight_case       (out_weight_case) 
                                  , .init_mac              (init_mac)
                                 );
endmodule                                                                              
                                                                                       
                                                                                       
