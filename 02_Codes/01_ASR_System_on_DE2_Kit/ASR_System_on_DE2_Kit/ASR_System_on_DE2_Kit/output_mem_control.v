//=========== FILE : output_mem_control_skl ==========//
//=========== Designer: LamPham ======================//
//=========== Project:  Neural Network ==============//

module output_mem_control (  clk, rst_n
                          , ena_out_input_mac
                          , ena_hidden_write_mem
                          , en_wr
                          , out_weight_case
                          , input_mid_reg 
                          , output_mem_weight 
                          , output_mid_reg
                         );

//Parameter 
parameter DATA_WIDTH = 32;

//Input
input clk;
input rst_n;
input ena_out_input_mac;
input ena_hidden_write_mem;
input [59:0]en_wr; //TODO
input [4:0] out_weight_case;
input [DATA_WIDTH-1:0] input_mid_reg; 

//Output
output [DATA_WIDTH-1:0] output_mid_reg;
reg    [DATA_WIDTH-1:0] output_mid_reg;
output [DATA_WIDTH-1:0] output_mem_weight; 
wire   [DATA_WIDTH-1:0] output_mem_weight; 

//Interal signal
reg   [5:0] rd_counter;
wire  [10:0] weight_addr;
wire [DATA_WIDTH-1:0] weight_data_01; 
wire [DATA_WIDTH-1:0] weight_data_02; 

wire [DATA_WIDTH-1:0] pre_output_mid_reg_1 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_2 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_3 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_4 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_5 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_6 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_7 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_8 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_9 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_10 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_11 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_12 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_13 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_14 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_15 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_16 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_17 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_18 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_19 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_20 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_21 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_22 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_23 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_24 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_25 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_26 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_27 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_28 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_29 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_30 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_31 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_32 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_33 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_34 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_35 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_36 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_37 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_38 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_39 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_40 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_41 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_42 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_43 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_44 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_45 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_46 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_47 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_48 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_49 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_50 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_51 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_52 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_53 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_54 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_55 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_56 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_57 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_58 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_59 ; 
wire [DATA_WIDTH-1:0] pre_output_mid_reg_60 ; 

mid_reg mid_reg_1  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[0]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_1 )); 
mid_reg mid_reg_2  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[1]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_2 )); 
mid_reg mid_reg_3  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[2]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_3 )); 
mid_reg mid_reg_4  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[3]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_4 )); 
mid_reg mid_reg_5  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[4]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_5 )); 
mid_reg mid_reg_6  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[5]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_6 )); 
mid_reg mid_reg_7  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[6]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_7 )); 
mid_reg mid_reg_8  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[7]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_8 )); 
mid_reg mid_reg_9  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[8]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_9 )); 
mid_reg mid_reg_10  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[9]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_10 )); 
mid_reg mid_reg_11  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[10]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_11 )); 
mid_reg mid_reg_12  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[11]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_12 )); 
mid_reg mid_reg_13  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[12]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_13 )); 
mid_reg mid_reg_14  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[13]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_14 )); 
mid_reg mid_reg_15  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[14]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_15 )); 
mid_reg mid_reg_16  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[15]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_16 )); 
mid_reg mid_reg_17  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[16]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_17 )); 
mid_reg mid_reg_18  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[17]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_18 )); 
mid_reg mid_reg_19  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[18]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_19 )); 
mid_reg mid_reg_20  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[19]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_20 )); 
mid_reg mid_reg_21  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[20]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_21 )); 
mid_reg mid_reg_22  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[21]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_22 )); 
mid_reg mid_reg_23  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[22]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_23 )); 
mid_reg mid_reg_24  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[23]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_24 )); 
mid_reg mid_reg_25  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[24]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_25 )); 
mid_reg mid_reg_26  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[25]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_26 )); 
mid_reg mid_reg_27  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[26]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_27 )); 
mid_reg mid_reg_28  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[27]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_28 )); 
mid_reg mid_reg_29  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[28]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_29 )); 
mid_reg mid_reg_30  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[29]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_30 )); 
mid_reg mid_reg_31  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[30]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_31 )); 
mid_reg mid_reg_32  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[31]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_32 )); 
mid_reg mid_reg_33  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[32]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_33 )); 
mid_reg mid_reg_34  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[33]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_34 )); 
mid_reg mid_reg_35  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[34]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_35 )); 
mid_reg mid_reg_36  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[35]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_36 )); 
mid_reg mid_reg_37  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[36]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_37 )); 
mid_reg mid_reg_38  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[37]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_38 )); 
mid_reg mid_reg_39  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[38]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_39 )); 
mid_reg mid_reg_40  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[39]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_40 )); 
mid_reg mid_reg_41  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[40]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_41 )); 
mid_reg mid_reg_42  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[41]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_42 )); 
mid_reg mid_reg_43  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[42]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_43 )); 
mid_reg mid_reg_44  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[43]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_44 )); 
mid_reg mid_reg_45  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[44]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_45 )); 
mid_reg mid_reg_46  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[45]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_46 )); 
mid_reg mid_reg_47  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[46]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_47 )); 
mid_reg mid_reg_48  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[47]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_48 )); 
mid_reg mid_reg_49  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[48]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_49 )); 
mid_reg mid_reg_50  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[49]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_50 )); 
mid_reg mid_reg_51  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[50]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_51 )); 
mid_reg mid_reg_52  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[51]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_52 )); 
mid_reg mid_reg_53  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[52]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_53 )); 
mid_reg mid_reg_54  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[53]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_54 )); 
mid_reg mid_reg_55  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[54]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_55 )); 
mid_reg mid_reg_56  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[55]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_56 )); 
mid_reg mid_reg_57  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[56]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_57 )); 
mid_reg mid_reg_58  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[57]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_58 )); 
mid_reg mid_reg_59  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[58]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_59 )); 
mid_reg mid_reg_60  (.clk(clk), .rst_n(rst_n), .en_wr(en_wr[59]),  .data_in(input_mid_reg), .data_out(pre_output_mid_reg_60 )); 
//==============================================//
//Reading the mem processing
always@(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        rd_counter <= 0;
    end
    else if(ena_out_input_mac) begin
        rd_counter <= rd_counter + 1;
    end
    else begin
        rd_counter <= 0;
    end
end

assign weight_addr = {out_weight_case, rd_counter}; 

mem_rom_weight_out_01 mem_rom_weight_out_x01 (.clock(clk), .address(weight_addr[9:0]), .q(weight_data_01)); 
mem_rom_weight_out_02 mem_rom_weight_out_x02 (.clock(clk), .address(weight_addr[9:0]), .q(weight_data_02)); 

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        output_mid_reg <= 0;
    end
    else begin
        case(rd_counter)
            0 : output_mid_reg <= pre_output_mid_reg_1; 
            1 : output_mid_reg <= pre_output_mid_reg_2; 
            2 : output_mid_reg <= pre_output_mid_reg_3; 
            3 : output_mid_reg <= pre_output_mid_reg_4; 
            4 : output_mid_reg <= pre_output_mid_reg_5; 
            5 : output_mid_reg <= pre_output_mid_reg_6; 
            6 : output_mid_reg <= pre_output_mid_reg_7; 
            7 : output_mid_reg <= pre_output_mid_reg_8; 
            8 : output_mid_reg <= pre_output_mid_reg_9; 
            9 : output_mid_reg <= pre_output_mid_reg_10; 
            10 : output_mid_reg <= pre_output_mid_reg_11; 
            11 : output_mid_reg <= pre_output_mid_reg_12; 
            12 : output_mid_reg <= pre_output_mid_reg_13; 
            13 : output_mid_reg <= pre_output_mid_reg_14; 
            14 : output_mid_reg <= pre_output_mid_reg_15; 
            15 : output_mid_reg <= pre_output_mid_reg_16; 
            16 : output_mid_reg <= pre_output_mid_reg_17; 
            17 : output_mid_reg <= pre_output_mid_reg_18; 
            18 : output_mid_reg <= pre_output_mid_reg_19; 
            19 : output_mid_reg <= pre_output_mid_reg_20; 
            20 : output_mid_reg <= pre_output_mid_reg_21; 
            21 : output_mid_reg <= pre_output_mid_reg_22; 
            22 : output_mid_reg <= pre_output_mid_reg_23; 
            23 : output_mid_reg <= pre_output_mid_reg_24; 
            24 : output_mid_reg <= pre_output_mid_reg_25; 
            25 : output_mid_reg <= pre_output_mid_reg_26; 
            26 : output_mid_reg <= pre_output_mid_reg_27; 
            27 : output_mid_reg <= pre_output_mid_reg_28; 
            28 : output_mid_reg <= pre_output_mid_reg_29; 
            29 : output_mid_reg <= pre_output_mid_reg_30; 
            30 : output_mid_reg <= pre_output_mid_reg_31; 
            31 : output_mid_reg <= pre_output_mid_reg_32; 
            32 : output_mid_reg <= pre_output_mid_reg_33; 
            33 : output_mid_reg <= pre_output_mid_reg_34; 
            34 : output_mid_reg <= pre_output_mid_reg_35; 
            35 : output_mid_reg <= pre_output_mid_reg_36; 
            36 : output_mid_reg <= pre_output_mid_reg_37; 
            37 : output_mid_reg <= pre_output_mid_reg_38; 
            38 : output_mid_reg <= pre_output_mid_reg_39; 
            39 : output_mid_reg <= pre_output_mid_reg_40; 
            40 : output_mid_reg <= pre_output_mid_reg_41; 
            41 : output_mid_reg <= pre_output_mid_reg_42; 
            42 : output_mid_reg <= pre_output_mid_reg_43; 
            43 : output_mid_reg <= pre_output_mid_reg_44; 
            44 : output_mid_reg <= pre_output_mid_reg_45; 
            45 : output_mid_reg <= pre_output_mid_reg_46; 
            46 : output_mid_reg <= pre_output_mid_reg_47; 
            47 : output_mid_reg <= pre_output_mid_reg_48; 
            48 : output_mid_reg <= pre_output_mid_reg_49; 
            49 : output_mid_reg <= pre_output_mid_reg_50; 
            50 : output_mid_reg <= pre_output_mid_reg_51; 
            51 : output_mid_reg <= pre_output_mid_reg_52; 
            52 : output_mid_reg <= pre_output_mid_reg_53; 
            53 : output_mid_reg <= pre_output_mid_reg_54; 
            54 : output_mid_reg <= pre_output_mid_reg_55; 
            55 : output_mid_reg <= pre_output_mid_reg_56; 
            56 : output_mid_reg <= pre_output_mid_reg_57; 
            57 : output_mid_reg <= pre_output_mid_reg_58; 
            58 : output_mid_reg <= pre_output_mid_reg_59; 
            default: output_mid_reg <= pre_output_mid_reg_60; 
        endcase
    end
end
assign output_mem_weight = (weight_addr[10])?weight_data_02:weight_data_01; 

endmodule

module mid_reg (clk, rst_n, en_wr, data_in, data_out);
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
