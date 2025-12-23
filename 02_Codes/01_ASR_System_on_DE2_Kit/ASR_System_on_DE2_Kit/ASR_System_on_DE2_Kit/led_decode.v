

//TOTAL 3 CLK32
module led_decode (clk, rst_n, network_encode_output, led_01_output, led_02_output);

parameter NONE  = 7'b111_1111;
parameter KHONG = 7'b100_0000; 
parameter MOT   = 7'b111_1001; 
parameter HAI   = 7'b010_0100; 
parameter BA    = 7'b011_0000; 
parameter BON   = 7'b001_1001; 
parameter NAM   = 7'b001_0010; 
parameter SAU   = 7'b000_0010; 
parameter BAY   = 7'b111_1000; 
parameter TAM   = 7'b000_0000; 
parameter CHIN  = 7'b001_0000; 

input clk;
input rst_n;
input [19:0] network_encode_output;

output [6:0]led_01_output;
output [6:0]led_02_output;

reg [6:0]led_01_output;
reg [6:0]led_02_output;

//Internal Signal
reg [19:0]next_network_encode_output;
reg [6:0] pre_led_01_output;
reg [6:0] pre_led_02_output;

//================= 1 CLK32
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
       next_network_encode_output <= 0;
    end
    else begin
       next_network_encode_output <= network_encode_output;
    end
end

//================= 2 CLK32
//For LED_01
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        pre_led_01_output <= NONE;
    end
    else begin
        case (next_network_encode_output)
            20'b0000_0000_0000_0000_0001: begin //KHONG --> 1
                pre_led_01_output <= KHONG;
            end
            20'b0000_0000_0000_0000_0010: begin //MOT --> 2
                pre_led_01_output <= MOT;
            end
            20'b0000_0000_0000_0000_0100: begin //HAI --> 3
                pre_led_01_output <= HAI;
            end
            20'b0000_0000_0000_0000_1000: begin //BA --> 4
                pre_led_01_output <= BA;
            end
            20'b0000_0000_0000_0001_0000: begin //BON --> 5
                pre_led_01_output <= BON;
            end
            20'b0000_0000_0000_0010_0000: begin //NAM --> 6
                pre_led_01_output <= NAM;
            end
            20'b0000_0000_0000_0100_0000: begin //SAU --> 7
                pre_led_01_output <= SAU;
            end
            20'b0000_0000_0000_1000_0000: begin //BAY --> 8
                pre_led_01_output <= BAY;
            end
            20'b0000_0000_0001_0000_0000: begin //TAM --> 9
                pre_led_01_output <= TAM;
            end
            20'b0000_0000_0010_0000_0000: begin //CHIN --> 10
                pre_led_01_output <= CHIN; 
            end
            20'b0000_0000_0100_0000_0000: begin
                pre_led_01_output <= KHONG; //TRAI; //11
            end
            20'b0000_0000_1000_0000_0000: begin
                pre_led_01_output <= MOT; //PHAI; //12
            end
            20'b0000_0001_0000_0000_0000: begin
                pre_led_01_output <= HAI; //TOI; //13
            end
            20'b0000_0010_0000_0000_0000: begin
                pre_led_01_output <= BA; //LUI; //14
            end
            20'b0000_0100_0000_0000_0000: begin
                pre_led_01_output <= BON; //LEN; //15
            end
            20'b0000_1000_0000_0000_0000: begin
                pre_led_01_output <= NAM; //XUONG;  //16
            end
            20'b0001_0000_0000_0000_0000: begin
                pre_led_01_output <= SAU;//DONG; //17
            end
            20'b0010_0000_0000_0000_0000: begin
                pre_led_01_output <= BAY;//MO; //18
            end
            20'b0100_0000_0000_0000_0000: begin
                pre_led_01_output <= TAM;//DI; //19
            end
            20'b1000_0000_0000_0000_0000: begin
                pre_led_01_output <= CHIN;//DUNG;   //20
            end
            default : begin
                pre_led_01_output <= NONE;
            end
        endcase
    end
end

//For LED_02
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        pre_led_02_output <= NONE;
    end
    else begin
        case (next_network_encode_output)
            
            20'b0000_0000_0100_0000_0000: begin
                pre_led_02_output <= MOT; //TRAI; //11
            end
            20'b0000_0000_1000_0000_0000: begin
                pre_led_02_output <= MOT; //PHAI //12
            end
            20'b0000_0001_0000_0000_0000: begin
                pre_led_02_output <= MOT; //TREN; //13
            end
            20'b0000_0010_0000_0000_0000: begin
                pre_led_02_output <= MOT; //DUOI; //14
            end
            20'b0000_0100_0000_0000_0000: begin
                pre_led_02_output <= MOT; //TRUOC; //15
            end
            20'b0000_1000_0000_0000_0000: begin
                pre_led_02_output <= MOT; //SAU;  //16
            end
            20'b0001_0000_0000_0000_0000: begin
                pre_led_02_output <= MOT; //KHONG; //17
            end
            20'b0010_0000_0000_0000_0000: begin
                pre_led_02_output <= MOT; //CO; //18
            end
            20'b0100_0000_0000_0000_0000: begin
                pre_led_02_output <= MOT; //DONG; //19
            end
            20'b1000_0000_0000_0000_0000: begin
                pre_led_02_output <= MOT; //MO;   //20
            end
            default : begin
                pre_led_02_output <= NONE;
            end
        endcase
    end
end

//================= 3 CLK32
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
       led_01_output <= 0;
    end
    else begin
       led_01_output <= pre_led_01_output;
    end
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
       led_02_output <= 0;
    end
    else begin
       led_02_output <= pre_led_02_output;
    end
end

endmodule
