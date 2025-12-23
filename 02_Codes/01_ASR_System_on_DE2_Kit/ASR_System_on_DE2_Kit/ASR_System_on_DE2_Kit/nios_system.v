//megafunction wizard: %Altera SOPC Builder%
//GENERATION: STANDARD
//VERSION: WM1.0


//Legal Notice: (C)2014 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module AV_Config_avalon_on_board_config_slave_arbitrator (
                                                           // inputs:
                                                            AV_Config_avalon_on_board_config_slave_readdata,
                                                            AV_Config_avalon_on_board_config_slave_waitrequest,
                                                            CPU_data_master_address_to_slave,
                                                            CPU_data_master_byteenable,
                                                            CPU_data_master_read,
                                                            CPU_data_master_waitrequest,
                                                            CPU_data_master_write,
                                                            CPU_data_master_writedata,
                                                            clk,
                                                            reset_n,

                                                           // outputs:
                                                            AV_Config_avalon_on_board_config_slave_address,
                                                            AV_Config_avalon_on_board_config_slave_byteenable,
                                                            AV_Config_avalon_on_board_config_slave_chipselect,
                                                            AV_Config_avalon_on_board_config_slave_read,
                                                            AV_Config_avalon_on_board_config_slave_readdata_from_sa,
                                                            AV_Config_avalon_on_board_config_slave_reset,
                                                            AV_Config_avalon_on_board_config_slave_waitrequest_from_sa,
                                                            AV_Config_avalon_on_board_config_slave_write,
                                                            AV_Config_avalon_on_board_config_slave_writedata,
                                                            CPU_data_master_granted_AV_Config_avalon_on_board_config_slave,
                                                            CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave,
                                                            CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave,
                                                            CPU_data_master_requests_AV_Config_avalon_on_board_config_slave,
                                                            d1_AV_Config_avalon_on_board_config_slave_end_xfer,
                                                            registered_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave
                                                         )
;

  output  [  2: 0] AV_Config_avalon_on_board_config_slave_address;
  output  [  3: 0] AV_Config_avalon_on_board_config_slave_byteenable;
  output           AV_Config_avalon_on_board_config_slave_chipselect;
  output           AV_Config_avalon_on_board_config_slave_read;
  output  [ 31: 0] AV_Config_avalon_on_board_config_slave_readdata_from_sa;
  output           AV_Config_avalon_on_board_config_slave_reset;
  output           AV_Config_avalon_on_board_config_slave_waitrequest_from_sa;
  output           AV_Config_avalon_on_board_config_slave_write;
  output  [ 31: 0] AV_Config_avalon_on_board_config_slave_writedata;
  output           CPU_data_master_granted_AV_Config_avalon_on_board_config_slave;
  output           CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave;
  output           CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave;
  output           CPU_data_master_requests_AV_Config_avalon_on_board_config_slave;
  output           d1_AV_Config_avalon_on_board_config_slave_end_xfer;
  output           registered_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave;
  input   [ 31: 0] AV_Config_avalon_on_board_config_slave_readdata;
  input            AV_Config_avalon_on_board_config_slave_waitrequest;
  input   [ 24: 0] CPU_data_master_address_to_slave;
  input   [  3: 0] CPU_data_master_byteenable;
  input            CPU_data_master_read;
  input            CPU_data_master_waitrequest;
  input            CPU_data_master_write;
  input   [ 31: 0] CPU_data_master_writedata;
  input            clk;
  input            reset_n;

  wire    [  2: 0] AV_Config_avalon_on_board_config_slave_address;
  wire             AV_Config_avalon_on_board_config_slave_allgrants;
  wire             AV_Config_avalon_on_board_config_slave_allow_new_arb_cycle;
  wire             AV_Config_avalon_on_board_config_slave_any_bursting_master_saved_grant;
  wire             AV_Config_avalon_on_board_config_slave_any_continuerequest;
  wire             AV_Config_avalon_on_board_config_slave_arb_counter_enable;
  reg     [  1: 0] AV_Config_avalon_on_board_config_slave_arb_share_counter;
  wire    [  1: 0] AV_Config_avalon_on_board_config_slave_arb_share_counter_next_value;
  wire    [  1: 0] AV_Config_avalon_on_board_config_slave_arb_share_set_values;
  wire             AV_Config_avalon_on_board_config_slave_beginbursttransfer_internal;
  wire             AV_Config_avalon_on_board_config_slave_begins_xfer;
  wire    [  3: 0] AV_Config_avalon_on_board_config_slave_byteenable;
  wire             AV_Config_avalon_on_board_config_slave_chipselect;
  wire             AV_Config_avalon_on_board_config_slave_end_xfer;
  wire             AV_Config_avalon_on_board_config_slave_firsttransfer;
  wire             AV_Config_avalon_on_board_config_slave_grant_vector;
  wire             AV_Config_avalon_on_board_config_slave_in_a_read_cycle;
  wire             AV_Config_avalon_on_board_config_slave_in_a_write_cycle;
  wire             AV_Config_avalon_on_board_config_slave_master_qreq_vector;
  wire             AV_Config_avalon_on_board_config_slave_non_bursting_master_requests;
  wire             AV_Config_avalon_on_board_config_slave_read;
  wire    [ 31: 0] AV_Config_avalon_on_board_config_slave_readdata_from_sa;
  reg              AV_Config_avalon_on_board_config_slave_reg_firsttransfer;
  wire             AV_Config_avalon_on_board_config_slave_reset;
  reg              AV_Config_avalon_on_board_config_slave_slavearbiterlockenable;
  wire             AV_Config_avalon_on_board_config_slave_slavearbiterlockenable2;
  wire             AV_Config_avalon_on_board_config_slave_unreg_firsttransfer;
  wire             AV_Config_avalon_on_board_config_slave_waitrequest_from_sa;
  wire             AV_Config_avalon_on_board_config_slave_waits_for_read;
  wire             AV_Config_avalon_on_board_config_slave_waits_for_write;
  wire             AV_Config_avalon_on_board_config_slave_write;
  wire    [ 31: 0] AV_Config_avalon_on_board_config_slave_writedata;
  wire             CPU_data_master_arbiterlock;
  wire             CPU_data_master_arbiterlock2;
  wire             CPU_data_master_continuerequest;
  wire             CPU_data_master_granted_AV_Config_avalon_on_board_config_slave;
  wire             CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave;
  wire             CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave;
  reg              CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register;
  wire             CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register_in;
  wire             CPU_data_master_requests_AV_Config_avalon_on_board_config_slave;
  wire             CPU_data_master_saved_grant_AV_Config_avalon_on_board_config_slave;
  reg              d1_AV_Config_avalon_on_board_config_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_AV_Config_avalon_on_board_config_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register;
  wire             registered_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave;
  wire    [ 24: 0] shifted_address_to_AV_Config_avalon_on_board_config_slave_from_CPU_data_master;
  wire             wait_for_AV_Config_avalon_on_board_config_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~AV_Config_avalon_on_board_config_slave_end_xfer;
    end


  assign AV_Config_avalon_on_board_config_slave_begins_xfer = ~d1_reasons_to_wait & ((CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave));
  //assign AV_Config_avalon_on_board_config_slave_readdata_from_sa = AV_Config_avalon_on_board_config_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign AV_Config_avalon_on_board_config_slave_readdata_from_sa = AV_Config_avalon_on_board_config_slave_readdata;

  assign CPU_data_master_requests_AV_Config_avalon_on_board_config_slave = ({CPU_data_master_address_to_slave[24 : 5] , 5'b0} == 25'h1001000) & (CPU_data_master_read | CPU_data_master_write);
  //assign AV_Config_avalon_on_board_config_slave_waitrequest_from_sa = AV_Config_avalon_on_board_config_slave_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign AV_Config_avalon_on_board_config_slave_waitrequest_from_sa = AV_Config_avalon_on_board_config_slave_waitrequest;

  //registered rdv signal_name registered_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave assignment, which is an e_assign
  assign registered_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave = CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register_in;

  //AV_Config_avalon_on_board_config_slave_arb_share_counter set values, which is an e_mux
  assign AV_Config_avalon_on_board_config_slave_arb_share_set_values = 1;

  //AV_Config_avalon_on_board_config_slave_non_bursting_master_requests mux, which is an e_mux
  assign AV_Config_avalon_on_board_config_slave_non_bursting_master_requests = CPU_data_master_requests_AV_Config_avalon_on_board_config_slave;

  //AV_Config_avalon_on_board_config_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign AV_Config_avalon_on_board_config_slave_any_bursting_master_saved_grant = 0;

  //AV_Config_avalon_on_board_config_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign AV_Config_avalon_on_board_config_slave_arb_share_counter_next_value = AV_Config_avalon_on_board_config_slave_firsttransfer ? (AV_Config_avalon_on_board_config_slave_arb_share_set_values - 1) : |AV_Config_avalon_on_board_config_slave_arb_share_counter ? (AV_Config_avalon_on_board_config_slave_arb_share_counter - 1) : 0;

  //AV_Config_avalon_on_board_config_slave_allgrants all slave grants, which is an e_mux
  assign AV_Config_avalon_on_board_config_slave_allgrants = |AV_Config_avalon_on_board_config_slave_grant_vector;

  //AV_Config_avalon_on_board_config_slave_end_xfer assignment, which is an e_assign
  assign AV_Config_avalon_on_board_config_slave_end_xfer = ~(AV_Config_avalon_on_board_config_slave_waits_for_read | AV_Config_avalon_on_board_config_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_AV_Config_avalon_on_board_config_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_AV_Config_avalon_on_board_config_slave = AV_Config_avalon_on_board_config_slave_end_xfer & (~AV_Config_avalon_on_board_config_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //AV_Config_avalon_on_board_config_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign AV_Config_avalon_on_board_config_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_AV_Config_avalon_on_board_config_slave & AV_Config_avalon_on_board_config_slave_allgrants) | (end_xfer_arb_share_counter_term_AV_Config_avalon_on_board_config_slave & ~AV_Config_avalon_on_board_config_slave_non_bursting_master_requests);

  //AV_Config_avalon_on_board_config_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          AV_Config_avalon_on_board_config_slave_arb_share_counter <= 0;
      else if (AV_Config_avalon_on_board_config_slave_arb_counter_enable)
          AV_Config_avalon_on_board_config_slave_arb_share_counter <= AV_Config_avalon_on_board_config_slave_arb_share_counter_next_value;
    end


  //AV_Config_avalon_on_board_config_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          AV_Config_avalon_on_board_config_slave_slavearbiterlockenable <= 0;
      else if ((|AV_Config_avalon_on_board_config_slave_master_qreq_vector & end_xfer_arb_share_counter_term_AV_Config_avalon_on_board_config_slave) | (end_xfer_arb_share_counter_term_AV_Config_avalon_on_board_config_slave & ~AV_Config_avalon_on_board_config_slave_non_bursting_master_requests))
          AV_Config_avalon_on_board_config_slave_slavearbiterlockenable <= |AV_Config_avalon_on_board_config_slave_arb_share_counter_next_value;
    end


  //CPU/data_master AV_Config/avalon_on_board_config_slave arbiterlock, which is an e_assign
  assign CPU_data_master_arbiterlock = AV_Config_avalon_on_board_config_slave_slavearbiterlockenable & CPU_data_master_continuerequest;

  //AV_Config_avalon_on_board_config_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign AV_Config_avalon_on_board_config_slave_slavearbiterlockenable2 = |AV_Config_avalon_on_board_config_slave_arb_share_counter_next_value;

  //CPU/data_master AV_Config/avalon_on_board_config_slave arbiterlock2, which is an e_assign
  assign CPU_data_master_arbiterlock2 = AV_Config_avalon_on_board_config_slave_slavearbiterlockenable2 & CPU_data_master_continuerequest;

  //AV_Config_avalon_on_board_config_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign AV_Config_avalon_on_board_config_slave_any_continuerequest = 1;

  //CPU_data_master_continuerequest continued request, which is an e_assign
  assign CPU_data_master_continuerequest = 1;

  assign CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave = CPU_data_master_requests_AV_Config_avalon_on_board_config_slave & ~((CPU_data_master_read & ((|CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register))) | ((~CPU_data_master_waitrequest) & CPU_data_master_write));
  //CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register_in = CPU_data_master_granted_AV_Config_avalon_on_board_config_slave & CPU_data_master_read & ~AV_Config_avalon_on_board_config_slave_waits_for_read & ~(|CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register);

  //shift register p1 CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register = {CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register, CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register_in};

  //CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register <= 0;
      else 
        CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register <= p1_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register;
    end


  //local readdatavalid CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave, which is an e_mux
  assign CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave = CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave_shift_register;

  //AV_Config_avalon_on_board_config_slave_writedata mux, which is an e_mux
  assign AV_Config_avalon_on_board_config_slave_writedata = CPU_data_master_writedata;

  //master is always granted when requested
  assign CPU_data_master_granted_AV_Config_avalon_on_board_config_slave = CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave;

  //CPU/data_master saved-grant AV_Config/avalon_on_board_config_slave, which is an e_assign
  assign CPU_data_master_saved_grant_AV_Config_avalon_on_board_config_slave = CPU_data_master_requests_AV_Config_avalon_on_board_config_slave;

  //allow new arb cycle for AV_Config/avalon_on_board_config_slave, which is an e_assign
  assign AV_Config_avalon_on_board_config_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign AV_Config_avalon_on_board_config_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign AV_Config_avalon_on_board_config_slave_master_qreq_vector = 1;

  //~AV_Config_avalon_on_board_config_slave_reset assignment, which is an e_assign
  assign AV_Config_avalon_on_board_config_slave_reset = ~reset_n;

  assign AV_Config_avalon_on_board_config_slave_chipselect = CPU_data_master_granted_AV_Config_avalon_on_board_config_slave;
  //AV_Config_avalon_on_board_config_slave_firsttransfer first transaction, which is an e_assign
  assign AV_Config_avalon_on_board_config_slave_firsttransfer = AV_Config_avalon_on_board_config_slave_begins_xfer ? AV_Config_avalon_on_board_config_slave_unreg_firsttransfer : AV_Config_avalon_on_board_config_slave_reg_firsttransfer;

  //AV_Config_avalon_on_board_config_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign AV_Config_avalon_on_board_config_slave_unreg_firsttransfer = ~(AV_Config_avalon_on_board_config_slave_slavearbiterlockenable & AV_Config_avalon_on_board_config_slave_any_continuerequest);

  //AV_Config_avalon_on_board_config_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          AV_Config_avalon_on_board_config_slave_reg_firsttransfer <= 1'b1;
      else if (AV_Config_avalon_on_board_config_slave_begins_xfer)
          AV_Config_avalon_on_board_config_slave_reg_firsttransfer <= AV_Config_avalon_on_board_config_slave_unreg_firsttransfer;
    end


  //AV_Config_avalon_on_board_config_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign AV_Config_avalon_on_board_config_slave_beginbursttransfer_internal = AV_Config_avalon_on_board_config_slave_begins_xfer;

  //AV_Config_avalon_on_board_config_slave_read assignment, which is an e_mux
  assign AV_Config_avalon_on_board_config_slave_read = CPU_data_master_granted_AV_Config_avalon_on_board_config_slave & CPU_data_master_read;

  //AV_Config_avalon_on_board_config_slave_write assignment, which is an e_mux
  assign AV_Config_avalon_on_board_config_slave_write = CPU_data_master_granted_AV_Config_avalon_on_board_config_slave & CPU_data_master_write;

  assign shifted_address_to_AV_Config_avalon_on_board_config_slave_from_CPU_data_master = CPU_data_master_address_to_slave;
  //AV_Config_avalon_on_board_config_slave_address mux, which is an e_mux
  assign AV_Config_avalon_on_board_config_slave_address = shifted_address_to_AV_Config_avalon_on_board_config_slave_from_CPU_data_master >> 2;

  //d1_AV_Config_avalon_on_board_config_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_AV_Config_avalon_on_board_config_slave_end_xfer <= 1;
      else 
        d1_AV_Config_avalon_on_board_config_slave_end_xfer <= AV_Config_avalon_on_board_config_slave_end_xfer;
    end


  //AV_Config_avalon_on_board_config_slave_waits_for_read in a cycle, which is an e_mux
  assign AV_Config_avalon_on_board_config_slave_waits_for_read = AV_Config_avalon_on_board_config_slave_in_a_read_cycle & AV_Config_avalon_on_board_config_slave_waitrequest_from_sa;

  //AV_Config_avalon_on_board_config_slave_in_a_read_cycle assignment, which is an e_assign
  assign AV_Config_avalon_on_board_config_slave_in_a_read_cycle = CPU_data_master_granted_AV_Config_avalon_on_board_config_slave & CPU_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = AV_Config_avalon_on_board_config_slave_in_a_read_cycle;

  //AV_Config_avalon_on_board_config_slave_waits_for_write in a cycle, which is an e_mux
  assign AV_Config_avalon_on_board_config_slave_waits_for_write = AV_Config_avalon_on_board_config_slave_in_a_write_cycle & AV_Config_avalon_on_board_config_slave_waitrequest_from_sa;

  //AV_Config_avalon_on_board_config_slave_in_a_write_cycle assignment, which is an e_assign
  assign AV_Config_avalon_on_board_config_slave_in_a_write_cycle = CPU_data_master_granted_AV_Config_avalon_on_board_config_slave & CPU_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = AV_Config_avalon_on_board_config_slave_in_a_write_cycle;

  assign wait_for_AV_Config_avalon_on_board_config_slave_counter = 0;
  //AV_Config_avalon_on_board_config_slave_byteenable byte enable port mux, which is an e_mux
  assign AV_Config_avalon_on_board_config_slave_byteenable = (CPU_data_master_granted_AV_Config_avalon_on_board_config_slave)? CPU_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //AV_Config/avalon_on_board_config_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Addr_Read_MEM_avalon_parallel_port_slave_arbitrator (
                                                             // inputs:
                                                              Addr_Read_MEM_avalon_parallel_port_slave_readdata,
                                                              CPU_data_master_address_to_slave,
                                                              CPU_data_master_byteenable,
                                                              CPU_data_master_read,
                                                              CPU_data_master_waitrequest,
                                                              CPU_data_master_write,
                                                              CPU_data_master_writedata,
                                                              clk,
                                                              reset_n,

                                                             // outputs:
                                                              Addr_Read_MEM_avalon_parallel_port_slave_address,
                                                              Addr_Read_MEM_avalon_parallel_port_slave_byteenable,
                                                              Addr_Read_MEM_avalon_parallel_port_slave_chipselect,
                                                              Addr_Read_MEM_avalon_parallel_port_slave_read,
                                                              Addr_Read_MEM_avalon_parallel_port_slave_readdata_from_sa,
                                                              Addr_Read_MEM_avalon_parallel_port_slave_reset,
                                                              Addr_Read_MEM_avalon_parallel_port_slave_write,
                                                              Addr_Read_MEM_avalon_parallel_port_slave_writedata,
                                                              CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave,
                                                              CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave,
                                                              CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave,
                                                              CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave,
                                                              d1_Addr_Read_MEM_avalon_parallel_port_slave_end_xfer,
                                                              registered_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave
                                                           )
;

  output  [  1: 0] Addr_Read_MEM_avalon_parallel_port_slave_address;
  output  [  3: 0] Addr_Read_MEM_avalon_parallel_port_slave_byteenable;
  output           Addr_Read_MEM_avalon_parallel_port_slave_chipselect;
  output           Addr_Read_MEM_avalon_parallel_port_slave_read;
  output  [ 31: 0] Addr_Read_MEM_avalon_parallel_port_slave_readdata_from_sa;
  output           Addr_Read_MEM_avalon_parallel_port_slave_reset;
  output           Addr_Read_MEM_avalon_parallel_port_slave_write;
  output  [ 31: 0] Addr_Read_MEM_avalon_parallel_port_slave_writedata;
  output           CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave;
  output           CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave;
  output           CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave;
  output           CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave;
  output           d1_Addr_Read_MEM_avalon_parallel_port_slave_end_xfer;
  output           registered_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave;
  input   [ 31: 0] Addr_Read_MEM_avalon_parallel_port_slave_readdata;
  input   [ 24: 0] CPU_data_master_address_to_slave;
  input   [  3: 0] CPU_data_master_byteenable;
  input            CPU_data_master_read;
  input            CPU_data_master_waitrequest;
  input            CPU_data_master_write;
  input   [ 31: 0] CPU_data_master_writedata;
  input            clk;
  input            reset_n;

  wire    [  1: 0] Addr_Read_MEM_avalon_parallel_port_slave_address;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_allgrants;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_allow_new_arb_cycle;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_any_continuerequest;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_arb_counter_enable;
  reg     [  1: 0] Addr_Read_MEM_avalon_parallel_port_slave_arb_share_counter;
  wire    [  1: 0] Addr_Read_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;
  wire    [  1: 0] Addr_Read_MEM_avalon_parallel_port_slave_arb_share_set_values;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_beginbursttransfer_internal;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_begins_xfer;
  wire    [  3: 0] Addr_Read_MEM_avalon_parallel_port_slave_byteenable;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_chipselect;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_end_xfer;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_firsttransfer;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_grant_vector;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_in_a_read_cycle;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_in_a_write_cycle;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_master_qreq_vector;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_non_bursting_master_requests;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Addr_Read_MEM_avalon_parallel_port_slave_readdata_from_sa;
  reg              Addr_Read_MEM_avalon_parallel_port_slave_reg_firsttransfer;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_reset;
  reg              Addr_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable2;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_unreg_firsttransfer;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_waits_for_read;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_waits_for_write;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Addr_Read_MEM_avalon_parallel_port_slave_writedata;
  wire             CPU_data_master_arbiterlock;
  wire             CPU_data_master_arbiterlock2;
  wire             CPU_data_master_continuerequest;
  wire             CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave;
  reg              CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register;
  wire             CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register_in;
  wire             CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_saved_grant_Addr_Read_MEM_avalon_parallel_port_slave;
  reg              d1_Addr_Read_MEM_avalon_parallel_port_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Addr_Read_MEM_avalon_parallel_port_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register;
  wire             registered_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave;
  wire    [ 24: 0] shifted_address_to_Addr_Read_MEM_avalon_parallel_port_slave_from_CPU_data_master;
  wire             wait_for_Addr_Read_MEM_avalon_parallel_port_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~Addr_Read_MEM_avalon_parallel_port_slave_end_xfer;
    end


  assign Addr_Read_MEM_avalon_parallel_port_slave_begins_xfer = ~d1_reasons_to_wait & ((CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave));
  //assign Addr_Read_MEM_avalon_parallel_port_slave_readdata_from_sa = Addr_Read_MEM_avalon_parallel_port_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Addr_Read_MEM_avalon_parallel_port_slave_readdata_from_sa = Addr_Read_MEM_avalon_parallel_port_slave_readdata;

  assign CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave = ({CPU_data_master_address_to_slave[24 : 4] , 4'b0} == 25'h10010b0) & (CPU_data_master_read | CPU_data_master_write);
  //registered rdv signal_name registered_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave assignment, which is an e_assign
  assign registered_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave = CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register_in;

  //Addr_Read_MEM_avalon_parallel_port_slave_arb_share_counter set values, which is an e_mux
  assign Addr_Read_MEM_avalon_parallel_port_slave_arb_share_set_values = 1;

  //Addr_Read_MEM_avalon_parallel_port_slave_non_bursting_master_requests mux, which is an e_mux
  assign Addr_Read_MEM_avalon_parallel_port_slave_non_bursting_master_requests = CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave;

  //Addr_Read_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign Addr_Read_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant = 0;

  //Addr_Read_MEM_avalon_parallel_port_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign Addr_Read_MEM_avalon_parallel_port_slave_arb_share_counter_next_value = Addr_Read_MEM_avalon_parallel_port_slave_firsttransfer ? (Addr_Read_MEM_avalon_parallel_port_slave_arb_share_set_values - 1) : |Addr_Read_MEM_avalon_parallel_port_slave_arb_share_counter ? (Addr_Read_MEM_avalon_parallel_port_slave_arb_share_counter - 1) : 0;

  //Addr_Read_MEM_avalon_parallel_port_slave_allgrants all slave grants, which is an e_mux
  assign Addr_Read_MEM_avalon_parallel_port_slave_allgrants = |Addr_Read_MEM_avalon_parallel_port_slave_grant_vector;

  //Addr_Read_MEM_avalon_parallel_port_slave_end_xfer assignment, which is an e_assign
  assign Addr_Read_MEM_avalon_parallel_port_slave_end_xfer = ~(Addr_Read_MEM_avalon_parallel_port_slave_waits_for_read | Addr_Read_MEM_avalon_parallel_port_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_Addr_Read_MEM_avalon_parallel_port_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Addr_Read_MEM_avalon_parallel_port_slave = Addr_Read_MEM_avalon_parallel_port_slave_end_xfer & (~Addr_Read_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Addr_Read_MEM_avalon_parallel_port_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign Addr_Read_MEM_avalon_parallel_port_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_Addr_Read_MEM_avalon_parallel_port_slave & Addr_Read_MEM_avalon_parallel_port_slave_allgrants) | (end_xfer_arb_share_counter_term_Addr_Read_MEM_avalon_parallel_port_slave & ~Addr_Read_MEM_avalon_parallel_port_slave_non_bursting_master_requests);

  //Addr_Read_MEM_avalon_parallel_port_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Addr_Read_MEM_avalon_parallel_port_slave_arb_share_counter <= 0;
      else if (Addr_Read_MEM_avalon_parallel_port_slave_arb_counter_enable)
          Addr_Read_MEM_avalon_parallel_port_slave_arb_share_counter <= Addr_Read_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //Addr_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Addr_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable <= 0;
      else if ((|Addr_Read_MEM_avalon_parallel_port_slave_master_qreq_vector & end_xfer_arb_share_counter_term_Addr_Read_MEM_avalon_parallel_port_slave) | (end_xfer_arb_share_counter_term_Addr_Read_MEM_avalon_parallel_port_slave & ~Addr_Read_MEM_avalon_parallel_port_slave_non_bursting_master_requests))
          Addr_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable <= |Addr_Read_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //CPU/data_master Addr_Read_MEM/avalon_parallel_port_slave arbiterlock, which is an e_assign
  assign CPU_data_master_arbiterlock = Addr_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable & CPU_data_master_continuerequest;

  //Addr_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Addr_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable2 = |Addr_Read_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;

  //CPU/data_master Addr_Read_MEM/avalon_parallel_port_slave arbiterlock2, which is an e_assign
  assign CPU_data_master_arbiterlock2 = Addr_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable2 & CPU_data_master_continuerequest;

  //Addr_Read_MEM_avalon_parallel_port_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Addr_Read_MEM_avalon_parallel_port_slave_any_continuerequest = 1;

  //CPU_data_master_continuerequest continued request, which is an e_assign
  assign CPU_data_master_continuerequest = 1;

  assign CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave = CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave & ~((CPU_data_master_read & ((|CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register))) | ((~CPU_data_master_waitrequest) & CPU_data_master_write));
  //CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register_in = CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave & CPU_data_master_read & ~Addr_Read_MEM_avalon_parallel_port_slave_waits_for_read & ~(|CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register);

  //shift register p1 CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register = {CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register, CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register_in};

  //CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register <= 0;
      else 
        CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register <= p1_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register;
    end


  //local readdatavalid CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave, which is an e_mux
  assign CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave = CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave_shift_register;

  //Addr_Read_MEM_avalon_parallel_port_slave_writedata mux, which is an e_mux
  assign Addr_Read_MEM_avalon_parallel_port_slave_writedata = CPU_data_master_writedata;

  //master is always granted when requested
  assign CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave = CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave;

  //CPU/data_master saved-grant Addr_Read_MEM/avalon_parallel_port_slave, which is an e_assign
  assign CPU_data_master_saved_grant_Addr_Read_MEM_avalon_parallel_port_slave = CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave;

  //allow new arb cycle for Addr_Read_MEM/avalon_parallel_port_slave, which is an e_assign
  assign Addr_Read_MEM_avalon_parallel_port_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Addr_Read_MEM_avalon_parallel_port_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Addr_Read_MEM_avalon_parallel_port_slave_master_qreq_vector = 1;

  //~Addr_Read_MEM_avalon_parallel_port_slave_reset assignment, which is an e_assign
  assign Addr_Read_MEM_avalon_parallel_port_slave_reset = ~reset_n;

  assign Addr_Read_MEM_avalon_parallel_port_slave_chipselect = CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave;
  //Addr_Read_MEM_avalon_parallel_port_slave_firsttransfer first transaction, which is an e_assign
  assign Addr_Read_MEM_avalon_parallel_port_slave_firsttransfer = Addr_Read_MEM_avalon_parallel_port_slave_begins_xfer ? Addr_Read_MEM_avalon_parallel_port_slave_unreg_firsttransfer : Addr_Read_MEM_avalon_parallel_port_slave_reg_firsttransfer;

  //Addr_Read_MEM_avalon_parallel_port_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign Addr_Read_MEM_avalon_parallel_port_slave_unreg_firsttransfer = ~(Addr_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable & Addr_Read_MEM_avalon_parallel_port_slave_any_continuerequest);

  //Addr_Read_MEM_avalon_parallel_port_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Addr_Read_MEM_avalon_parallel_port_slave_reg_firsttransfer <= 1'b1;
      else if (Addr_Read_MEM_avalon_parallel_port_slave_begins_xfer)
          Addr_Read_MEM_avalon_parallel_port_slave_reg_firsttransfer <= Addr_Read_MEM_avalon_parallel_port_slave_unreg_firsttransfer;
    end


  //Addr_Read_MEM_avalon_parallel_port_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Addr_Read_MEM_avalon_parallel_port_slave_beginbursttransfer_internal = Addr_Read_MEM_avalon_parallel_port_slave_begins_xfer;

  //Addr_Read_MEM_avalon_parallel_port_slave_read assignment, which is an e_mux
  assign Addr_Read_MEM_avalon_parallel_port_slave_read = CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave & CPU_data_master_read;

  //Addr_Read_MEM_avalon_parallel_port_slave_write assignment, which is an e_mux
  assign Addr_Read_MEM_avalon_parallel_port_slave_write = CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave & CPU_data_master_write;

  assign shifted_address_to_Addr_Read_MEM_avalon_parallel_port_slave_from_CPU_data_master = CPU_data_master_address_to_slave;
  //Addr_Read_MEM_avalon_parallel_port_slave_address mux, which is an e_mux
  assign Addr_Read_MEM_avalon_parallel_port_slave_address = shifted_address_to_Addr_Read_MEM_avalon_parallel_port_slave_from_CPU_data_master >> 2;

  //d1_Addr_Read_MEM_avalon_parallel_port_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Addr_Read_MEM_avalon_parallel_port_slave_end_xfer <= 1;
      else 
        d1_Addr_Read_MEM_avalon_parallel_port_slave_end_xfer <= Addr_Read_MEM_avalon_parallel_port_slave_end_xfer;
    end


  //Addr_Read_MEM_avalon_parallel_port_slave_waits_for_read in a cycle, which is an e_mux
  assign Addr_Read_MEM_avalon_parallel_port_slave_waits_for_read = Addr_Read_MEM_avalon_parallel_port_slave_in_a_read_cycle & 0;

  //Addr_Read_MEM_avalon_parallel_port_slave_in_a_read_cycle assignment, which is an e_assign
  assign Addr_Read_MEM_avalon_parallel_port_slave_in_a_read_cycle = CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave & CPU_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Addr_Read_MEM_avalon_parallel_port_slave_in_a_read_cycle;

  //Addr_Read_MEM_avalon_parallel_port_slave_waits_for_write in a cycle, which is an e_mux
  assign Addr_Read_MEM_avalon_parallel_port_slave_waits_for_write = Addr_Read_MEM_avalon_parallel_port_slave_in_a_write_cycle & 0;

  //Addr_Read_MEM_avalon_parallel_port_slave_in_a_write_cycle assignment, which is an e_assign
  assign Addr_Read_MEM_avalon_parallel_port_slave_in_a_write_cycle = CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave & CPU_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Addr_Read_MEM_avalon_parallel_port_slave_in_a_write_cycle;

  assign wait_for_Addr_Read_MEM_avalon_parallel_port_slave_counter = 0;
  //Addr_Read_MEM_avalon_parallel_port_slave_byteenable byte enable port mux, which is an e_mux
  assign Addr_Read_MEM_avalon_parallel_port_slave_byteenable = (CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave)? CPU_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Addr_Read_MEM/avalon_parallel_port_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Addr_Write_MEM_avalon_parallel_port_slave_arbitrator (
                                                              // inputs:
                                                               Addr_Write_MEM_avalon_parallel_port_slave_readdata,
                                                               CPU_data_master_address_to_slave,
                                                               CPU_data_master_byteenable,
                                                               CPU_data_master_read,
                                                               CPU_data_master_waitrequest,
                                                               CPU_data_master_write,
                                                               CPU_data_master_writedata,
                                                               clk,
                                                               reset_n,

                                                              // outputs:
                                                               Addr_Write_MEM_avalon_parallel_port_slave_address,
                                                               Addr_Write_MEM_avalon_parallel_port_slave_byteenable,
                                                               Addr_Write_MEM_avalon_parallel_port_slave_chipselect,
                                                               Addr_Write_MEM_avalon_parallel_port_slave_read,
                                                               Addr_Write_MEM_avalon_parallel_port_slave_readdata_from_sa,
                                                               Addr_Write_MEM_avalon_parallel_port_slave_reset,
                                                               Addr_Write_MEM_avalon_parallel_port_slave_write,
                                                               Addr_Write_MEM_avalon_parallel_port_slave_writedata,
                                                               CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave,
                                                               CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave,
                                                               CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave,
                                                               CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave,
                                                               d1_Addr_Write_MEM_avalon_parallel_port_slave_end_xfer,
                                                               registered_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave
                                                            )
;

  output  [  1: 0] Addr_Write_MEM_avalon_parallel_port_slave_address;
  output  [  3: 0] Addr_Write_MEM_avalon_parallel_port_slave_byteenable;
  output           Addr_Write_MEM_avalon_parallel_port_slave_chipselect;
  output           Addr_Write_MEM_avalon_parallel_port_slave_read;
  output  [ 31: 0] Addr_Write_MEM_avalon_parallel_port_slave_readdata_from_sa;
  output           Addr_Write_MEM_avalon_parallel_port_slave_reset;
  output           Addr_Write_MEM_avalon_parallel_port_slave_write;
  output  [ 31: 0] Addr_Write_MEM_avalon_parallel_port_slave_writedata;
  output           CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave;
  output           CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave;
  output           CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave;
  output           CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave;
  output           d1_Addr_Write_MEM_avalon_parallel_port_slave_end_xfer;
  output           registered_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave;
  input   [ 31: 0] Addr_Write_MEM_avalon_parallel_port_slave_readdata;
  input   [ 24: 0] CPU_data_master_address_to_slave;
  input   [  3: 0] CPU_data_master_byteenable;
  input            CPU_data_master_read;
  input            CPU_data_master_waitrequest;
  input            CPU_data_master_write;
  input   [ 31: 0] CPU_data_master_writedata;
  input            clk;
  input            reset_n;

  wire    [  1: 0] Addr_Write_MEM_avalon_parallel_port_slave_address;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_allgrants;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_allow_new_arb_cycle;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_any_continuerequest;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_arb_counter_enable;
  reg     [  1: 0] Addr_Write_MEM_avalon_parallel_port_slave_arb_share_counter;
  wire    [  1: 0] Addr_Write_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;
  wire    [  1: 0] Addr_Write_MEM_avalon_parallel_port_slave_arb_share_set_values;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_beginbursttransfer_internal;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_begins_xfer;
  wire    [  3: 0] Addr_Write_MEM_avalon_parallel_port_slave_byteenable;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_chipselect;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_end_xfer;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_firsttransfer;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_grant_vector;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_in_a_read_cycle;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_in_a_write_cycle;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_master_qreq_vector;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_non_bursting_master_requests;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Addr_Write_MEM_avalon_parallel_port_slave_readdata_from_sa;
  reg              Addr_Write_MEM_avalon_parallel_port_slave_reg_firsttransfer;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_reset;
  reg              Addr_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable2;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_unreg_firsttransfer;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_waits_for_read;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_waits_for_write;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Addr_Write_MEM_avalon_parallel_port_slave_writedata;
  wire             CPU_data_master_arbiterlock;
  wire             CPU_data_master_arbiterlock2;
  wire             CPU_data_master_continuerequest;
  wire             CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave;
  reg              CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register;
  wire             CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register_in;
  wire             CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_saved_grant_Addr_Write_MEM_avalon_parallel_port_slave;
  reg              d1_Addr_Write_MEM_avalon_parallel_port_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Addr_Write_MEM_avalon_parallel_port_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register;
  wire             registered_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave;
  wire    [ 24: 0] shifted_address_to_Addr_Write_MEM_avalon_parallel_port_slave_from_CPU_data_master;
  wire             wait_for_Addr_Write_MEM_avalon_parallel_port_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~Addr_Write_MEM_avalon_parallel_port_slave_end_xfer;
    end


  assign Addr_Write_MEM_avalon_parallel_port_slave_begins_xfer = ~d1_reasons_to_wait & ((CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave));
  //assign Addr_Write_MEM_avalon_parallel_port_slave_readdata_from_sa = Addr_Write_MEM_avalon_parallel_port_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Addr_Write_MEM_avalon_parallel_port_slave_readdata_from_sa = Addr_Write_MEM_avalon_parallel_port_slave_readdata;

  assign CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave = ({CPU_data_master_address_to_slave[24 : 4] , 4'b0} == 25'h10010a0) & (CPU_data_master_read | CPU_data_master_write);
  //registered rdv signal_name registered_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave assignment, which is an e_assign
  assign registered_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave = CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register_in;

  //Addr_Write_MEM_avalon_parallel_port_slave_arb_share_counter set values, which is an e_mux
  assign Addr_Write_MEM_avalon_parallel_port_slave_arb_share_set_values = 1;

  //Addr_Write_MEM_avalon_parallel_port_slave_non_bursting_master_requests mux, which is an e_mux
  assign Addr_Write_MEM_avalon_parallel_port_slave_non_bursting_master_requests = CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave;

  //Addr_Write_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign Addr_Write_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant = 0;

  //Addr_Write_MEM_avalon_parallel_port_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign Addr_Write_MEM_avalon_parallel_port_slave_arb_share_counter_next_value = Addr_Write_MEM_avalon_parallel_port_slave_firsttransfer ? (Addr_Write_MEM_avalon_parallel_port_slave_arb_share_set_values - 1) : |Addr_Write_MEM_avalon_parallel_port_slave_arb_share_counter ? (Addr_Write_MEM_avalon_parallel_port_slave_arb_share_counter - 1) : 0;

  //Addr_Write_MEM_avalon_parallel_port_slave_allgrants all slave grants, which is an e_mux
  assign Addr_Write_MEM_avalon_parallel_port_slave_allgrants = |Addr_Write_MEM_avalon_parallel_port_slave_grant_vector;

  //Addr_Write_MEM_avalon_parallel_port_slave_end_xfer assignment, which is an e_assign
  assign Addr_Write_MEM_avalon_parallel_port_slave_end_xfer = ~(Addr_Write_MEM_avalon_parallel_port_slave_waits_for_read | Addr_Write_MEM_avalon_parallel_port_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_Addr_Write_MEM_avalon_parallel_port_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Addr_Write_MEM_avalon_parallel_port_slave = Addr_Write_MEM_avalon_parallel_port_slave_end_xfer & (~Addr_Write_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Addr_Write_MEM_avalon_parallel_port_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign Addr_Write_MEM_avalon_parallel_port_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_Addr_Write_MEM_avalon_parallel_port_slave & Addr_Write_MEM_avalon_parallel_port_slave_allgrants) | (end_xfer_arb_share_counter_term_Addr_Write_MEM_avalon_parallel_port_slave & ~Addr_Write_MEM_avalon_parallel_port_slave_non_bursting_master_requests);

  //Addr_Write_MEM_avalon_parallel_port_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Addr_Write_MEM_avalon_parallel_port_slave_arb_share_counter <= 0;
      else if (Addr_Write_MEM_avalon_parallel_port_slave_arb_counter_enable)
          Addr_Write_MEM_avalon_parallel_port_slave_arb_share_counter <= Addr_Write_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //Addr_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Addr_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable <= 0;
      else if ((|Addr_Write_MEM_avalon_parallel_port_slave_master_qreq_vector & end_xfer_arb_share_counter_term_Addr_Write_MEM_avalon_parallel_port_slave) | (end_xfer_arb_share_counter_term_Addr_Write_MEM_avalon_parallel_port_slave & ~Addr_Write_MEM_avalon_parallel_port_slave_non_bursting_master_requests))
          Addr_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable <= |Addr_Write_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //CPU/data_master Addr_Write_MEM/avalon_parallel_port_slave arbiterlock, which is an e_assign
  assign CPU_data_master_arbiterlock = Addr_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable & CPU_data_master_continuerequest;

  //Addr_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Addr_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable2 = |Addr_Write_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;

  //CPU/data_master Addr_Write_MEM/avalon_parallel_port_slave arbiterlock2, which is an e_assign
  assign CPU_data_master_arbiterlock2 = Addr_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable2 & CPU_data_master_continuerequest;

  //Addr_Write_MEM_avalon_parallel_port_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Addr_Write_MEM_avalon_parallel_port_slave_any_continuerequest = 1;

  //CPU_data_master_continuerequest continued request, which is an e_assign
  assign CPU_data_master_continuerequest = 1;

  assign CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave = CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave & ~((CPU_data_master_read & ((|CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register))) | ((~CPU_data_master_waitrequest) & CPU_data_master_write));
  //CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register_in = CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave & CPU_data_master_read & ~Addr_Write_MEM_avalon_parallel_port_slave_waits_for_read & ~(|CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register);

  //shift register p1 CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register = {CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register, CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register_in};

  //CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register <= 0;
      else 
        CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register <= p1_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register;
    end


  //local readdatavalid CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave, which is an e_mux
  assign CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave = CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave_shift_register;

  //Addr_Write_MEM_avalon_parallel_port_slave_writedata mux, which is an e_mux
  assign Addr_Write_MEM_avalon_parallel_port_slave_writedata = CPU_data_master_writedata;

  //master is always granted when requested
  assign CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave = CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave;

  //CPU/data_master saved-grant Addr_Write_MEM/avalon_parallel_port_slave, which is an e_assign
  assign CPU_data_master_saved_grant_Addr_Write_MEM_avalon_parallel_port_slave = CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave;

  //allow new arb cycle for Addr_Write_MEM/avalon_parallel_port_slave, which is an e_assign
  assign Addr_Write_MEM_avalon_parallel_port_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Addr_Write_MEM_avalon_parallel_port_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Addr_Write_MEM_avalon_parallel_port_slave_master_qreq_vector = 1;

  //~Addr_Write_MEM_avalon_parallel_port_slave_reset assignment, which is an e_assign
  assign Addr_Write_MEM_avalon_parallel_port_slave_reset = ~reset_n;

  assign Addr_Write_MEM_avalon_parallel_port_slave_chipselect = CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave;
  //Addr_Write_MEM_avalon_parallel_port_slave_firsttransfer first transaction, which is an e_assign
  assign Addr_Write_MEM_avalon_parallel_port_slave_firsttransfer = Addr_Write_MEM_avalon_parallel_port_slave_begins_xfer ? Addr_Write_MEM_avalon_parallel_port_slave_unreg_firsttransfer : Addr_Write_MEM_avalon_parallel_port_slave_reg_firsttransfer;

  //Addr_Write_MEM_avalon_parallel_port_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign Addr_Write_MEM_avalon_parallel_port_slave_unreg_firsttransfer = ~(Addr_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable & Addr_Write_MEM_avalon_parallel_port_slave_any_continuerequest);

  //Addr_Write_MEM_avalon_parallel_port_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Addr_Write_MEM_avalon_parallel_port_slave_reg_firsttransfer <= 1'b1;
      else if (Addr_Write_MEM_avalon_parallel_port_slave_begins_xfer)
          Addr_Write_MEM_avalon_parallel_port_slave_reg_firsttransfer <= Addr_Write_MEM_avalon_parallel_port_slave_unreg_firsttransfer;
    end


  //Addr_Write_MEM_avalon_parallel_port_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Addr_Write_MEM_avalon_parallel_port_slave_beginbursttransfer_internal = Addr_Write_MEM_avalon_parallel_port_slave_begins_xfer;

  //Addr_Write_MEM_avalon_parallel_port_slave_read assignment, which is an e_mux
  assign Addr_Write_MEM_avalon_parallel_port_slave_read = CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave & CPU_data_master_read;

  //Addr_Write_MEM_avalon_parallel_port_slave_write assignment, which is an e_mux
  assign Addr_Write_MEM_avalon_parallel_port_slave_write = CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave & CPU_data_master_write;

  assign shifted_address_to_Addr_Write_MEM_avalon_parallel_port_slave_from_CPU_data_master = CPU_data_master_address_to_slave;
  //Addr_Write_MEM_avalon_parallel_port_slave_address mux, which is an e_mux
  assign Addr_Write_MEM_avalon_parallel_port_slave_address = shifted_address_to_Addr_Write_MEM_avalon_parallel_port_slave_from_CPU_data_master >> 2;

  //d1_Addr_Write_MEM_avalon_parallel_port_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Addr_Write_MEM_avalon_parallel_port_slave_end_xfer <= 1;
      else 
        d1_Addr_Write_MEM_avalon_parallel_port_slave_end_xfer <= Addr_Write_MEM_avalon_parallel_port_slave_end_xfer;
    end


  //Addr_Write_MEM_avalon_parallel_port_slave_waits_for_read in a cycle, which is an e_mux
  assign Addr_Write_MEM_avalon_parallel_port_slave_waits_for_read = Addr_Write_MEM_avalon_parallel_port_slave_in_a_read_cycle & 0;

  //Addr_Write_MEM_avalon_parallel_port_slave_in_a_read_cycle assignment, which is an e_assign
  assign Addr_Write_MEM_avalon_parallel_port_slave_in_a_read_cycle = CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave & CPU_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Addr_Write_MEM_avalon_parallel_port_slave_in_a_read_cycle;

  //Addr_Write_MEM_avalon_parallel_port_slave_waits_for_write in a cycle, which is an e_mux
  assign Addr_Write_MEM_avalon_parallel_port_slave_waits_for_write = Addr_Write_MEM_avalon_parallel_port_slave_in_a_write_cycle & 0;

  //Addr_Write_MEM_avalon_parallel_port_slave_in_a_write_cycle assignment, which is an e_assign
  assign Addr_Write_MEM_avalon_parallel_port_slave_in_a_write_cycle = CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave & CPU_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Addr_Write_MEM_avalon_parallel_port_slave_in_a_write_cycle;

  assign wait_for_Addr_Write_MEM_avalon_parallel_port_slave_counter = 0;
  //Addr_Write_MEM_avalon_parallel_port_slave_byteenable byte enable port mux, which is an e_mux
  assign Addr_Write_MEM_avalon_parallel_port_slave_byteenable = (CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave)? CPU_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Addr_Write_MEM/avalon_parallel_port_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Audio_avalon_audio_slave_arbitrator (
                                             // inputs:
                                              Audio_avalon_audio_slave_irq,
                                              Audio_avalon_audio_slave_readdata,
                                              CPU_data_master_address_to_slave,
                                              CPU_data_master_read,
                                              CPU_data_master_waitrequest,
                                              CPU_data_master_write,
                                              CPU_data_master_writedata,
                                              clk,
                                              reset_n,

                                             // outputs:
                                              Audio_avalon_audio_slave_address,
                                              Audio_avalon_audio_slave_chipselect,
                                              Audio_avalon_audio_slave_irq_from_sa,
                                              Audio_avalon_audio_slave_read,
                                              Audio_avalon_audio_slave_readdata_from_sa,
                                              Audio_avalon_audio_slave_reset,
                                              Audio_avalon_audio_slave_write,
                                              Audio_avalon_audio_slave_writedata,
                                              CPU_data_master_granted_Audio_avalon_audio_slave,
                                              CPU_data_master_qualified_request_Audio_avalon_audio_slave,
                                              CPU_data_master_read_data_valid_Audio_avalon_audio_slave,
                                              CPU_data_master_requests_Audio_avalon_audio_slave,
                                              d1_Audio_avalon_audio_slave_end_xfer,
                                              registered_CPU_data_master_read_data_valid_Audio_avalon_audio_slave
                                           )
;

  output  [  1: 0] Audio_avalon_audio_slave_address;
  output           Audio_avalon_audio_slave_chipselect;
  output           Audio_avalon_audio_slave_irq_from_sa;
  output           Audio_avalon_audio_slave_read;
  output  [ 31: 0] Audio_avalon_audio_slave_readdata_from_sa;
  output           Audio_avalon_audio_slave_reset;
  output           Audio_avalon_audio_slave_write;
  output  [ 31: 0] Audio_avalon_audio_slave_writedata;
  output           CPU_data_master_granted_Audio_avalon_audio_slave;
  output           CPU_data_master_qualified_request_Audio_avalon_audio_slave;
  output           CPU_data_master_read_data_valid_Audio_avalon_audio_slave;
  output           CPU_data_master_requests_Audio_avalon_audio_slave;
  output           d1_Audio_avalon_audio_slave_end_xfer;
  output           registered_CPU_data_master_read_data_valid_Audio_avalon_audio_slave;
  input            Audio_avalon_audio_slave_irq;
  input   [ 31: 0] Audio_avalon_audio_slave_readdata;
  input   [ 24: 0] CPU_data_master_address_to_slave;
  input            CPU_data_master_read;
  input            CPU_data_master_waitrequest;
  input            CPU_data_master_write;
  input   [ 31: 0] CPU_data_master_writedata;
  input            clk;
  input            reset_n;

  wire    [  1: 0] Audio_avalon_audio_slave_address;
  wire             Audio_avalon_audio_slave_allgrants;
  wire             Audio_avalon_audio_slave_allow_new_arb_cycle;
  wire             Audio_avalon_audio_slave_any_bursting_master_saved_grant;
  wire             Audio_avalon_audio_slave_any_continuerequest;
  wire             Audio_avalon_audio_slave_arb_counter_enable;
  reg     [  1: 0] Audio_avalon_audio_slave_arb_share_counter;
  wire    [  1: 0] Audio_avalon_audio_slave_arb_share_counter_next_value;
  wire    [  1: 0] Audio_avalon_audio_slave_arb_share_set_values;
  wire             Audio_avalon_audio_slave_beginbursttransfer_internal;
  wire             Audio_avalon_audio_slave_begins_xfer;
  wire             Audio_avalon_audio_slave_chipselect;
  wire             Audio_avalon_audio_slave_end_xfer;
  wire             Audio_avalon_audio_slave_firsttransfer;
  wire             Audio_avalon_audio_slave_grant_vector;
  wire             Audio_avalon_audio_slave_in_a_read_cycle;
  wire             Audio_avalon_audio_slave_in_a_write_cycle;
  wire             Audio_avalon_audio_slave_irq_from_sa;
  wire             Audio_avalon_audio_slave_master_qreq_vector;
  wire             Audio_avalon_audio_slave_non_bursting_master_requests;
  wire             Audio_avalon_audio_slave_read;
  wire    [ 31: 0] Audio_avalon_audio_slave_readdata_from_sa;
  reg              Audio_avalon_audio_slave_reg_firsttransfer;
  wire             Audio_avalon_audio_slave_reset;
  reg              Audio_avalon_audio_slave_slavearbiterlockenable;
  wire             Audio_avalon_audio_slave_slavearbiterlockenable2;
  wire             Audio_avalon_audio_slave_unreg_firsttransfer;
  wire             Audio_avalon_audio_slave_waits_for_read;
  wire             Audio_avalon_audio_slave_waits_for_write;
  wire             Audio_avalon_audio_slave_write;
  wire    [ 31: 0] Audio_avalon_audio_slave_writedata;
  wire             CPU_data_master_arbiterlock;
  wire             CPU_data_master_arbiterlock2;
  wire             CPU_data_master_continuerequest;
  wire             CPU_data_master_granted_Audio_avalon_audio_slave;
  wire             CPU_data_master_qualified_request_Audio_avalon_audio_slave;
  wire             CPU_data_master_read_data_valid_Audio_avalon_audio_slave;
  reg              CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register;
  wire             CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register_in;
  wire             CPU_data_master_requests_Audio_avalon_audio_slave;
  wire             CPU_data_master_saved_grant_Audio_avalon_audio_slave;
  reg              d1_Audio_avalon_audio_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Audio_avalon_audio_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register;
  wire             registered_CPU_data_master_read_data_valid_Audio_avalon_audio_slave;
  wire    [ 24: 0] shifted_address_to_Audio_avalon_audio_slave_from_CPU_data_master;
  wire             wait_for_Audio_avalon_audio_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~Audio_avalon_audio_slave_end_xfer;
    end


  assign Audio_avalon_audio_slave_begins_xfer = ~d1_reasons_to_wait & ((CPU_data_master_qualified_request_Audio_avalon_audio_slave));
  //assign Audio_avalon_audio_slave_readdata_from_sa = Audio_avalon_audio_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Audio_avalon_audio_slave_readdata_from_sa = Audio_avalon_audio_slave_readdata;

  assign CPU_data_master_requests_Audio_avalon_audio_slave = ({CPU_data_master_address_to_slave[24 : 4] , 4'b0} == 25'h1001040) & (CPU_data_master_read | CPU_data_master_write);
  //registered rdv signal_name registered_CPU_data_master_read_data_valid_Audio_avalon_audio_slave assignment, which is an e_assign
  assign registered_CPU_data_master_read_data_valid_Audio_avalon_audio_slave = CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register_in;

  //Audio_avalon_audio_slave_arb_share_counter set values, which is an e_mux
  assign Audio_avalon_audio_slave_arb_share_set_values = 1;

  //Audio_avalon_audio_slave_non_bursting_master_requests mux, which is an e_mux
  assign Audio_avalon_audio_slave_non_bursting_master_requests = CPU_data_master_requests_Audio_avalon_audio_slave;

  //Audio_avalon_audio_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign Audio_avalon_audio_slave_any_bursting_master_saved_grant = 0;

  //Audio_avalon_audio_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign Audio_avalon_audio_slave_arb_share_counter_next_value = Audio_avalon_audio_slave_firsttransfer ? (Audio_avalon_audio_slave_arb_share_set_values - 1) : |Audio_avalon_audio_slave_arb_share_counter ? (Audio_avalon_audio_slave_arb_share_counter - 1) : 0;

  //Audio_avalon_audio_slave_allgrants all slave grants, which is an e_mux
  assign Audio_avalon_audio_slave_allgrants = |Audio_avalon_audio_slave_grant_vector;

  //Audio_avalon_audio_slave_end_xfer assignment, which is an e_assign
  assign Audio_avalon_audio_slave_end_xfer = ~(Audio_avalon_audio_slave_waits_for_read | Audio_avalon_audio_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_Audio_avalon_audio_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Audio_avalon_audio_slave = Audio_avalon_audio_slave_end_xfer & (~Audio_avalon_audio_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Audio_avalon_audio_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign Audio_avalon_audio_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_Audio_avalon_audio_slave & Audio_avalon_audio_slave_allgrants) | (end_xfer_arb_share_counter_term_Audio_avalon_audio_slave & ~Audio_avalon_audio_slave_non_bursting_master_requests);

  //Audio_avalon_audio_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Audio_avalon_audio_slave_arb_share_counter <= 0;
      else if (Audio_avalon_audio_slave_arb_counter_enable)
          Audio_avalon_audio_slave_arb_share_counter <= Audio_avalon_audio_slave_arb_share_counter_next_value;
    end


  //Audio_avalon_audio_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Audio_avalon_audio_slave_slavearbiterlockenable <= 0;
      else if ((|Audio_avalon_audio_slave_master_qreq_vector & end_xfer_arb_share_counter_term_Audio_avalon_audio_slave) | (end_xfer_arb_share_counter_term_Audio_avalon_audio_slave & ~Audio_avalon_audio_slave_non_bursting_master_requests))
          Audio_avalon_audio_slave_slavearbiterlockenable <= |Audio_avalon_audio_slave_arb_share_counter_next_value;
    end


  //CPU/data_master Audio/avalon_audio_slave arbiterlock, which is an e_assign
  assign CPU_data_master_arbiterlock = Audio_avalon_audio_slave_slavearbiterlockenable & CPU_data_master_continuerequest;

  //Audio_avalon_audio_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Audio_avalon_audio_slave_slavearbiterlockenable2 = |Audio_avalon_audio_slave_arb_share_counter_next_value;

  //CPU/data_master Audio/avalon_audio_slave arbiterlock2, which is an e_assign
  assign CPU_data_master_arbiterlock2 = Audio_avalon_audio_slave_slavearbiterlockenable2 & CPU_data_master_continuerequest;

  //Audio_avalon_audio_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Audio_avalon_audio_slave_any_continuerequest = 1;

  //CPU_data_master_continuerequest continued request, which is an e_assign
  assign CPU_data_master_continuerequest = 1;

  assign CPU_data_master_qualified_request_Audio_avalon_audio_slave = CPU_data_master_requests_Audio_avalon_audio_slave & ~((CPU_data_master_read & ((|CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register))) | ((~CPU_data_master_waitrequest) & CPU_data_master_write));
  //CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register_in = CPU_data_master_granted_Audio_avalon_audio_slave & CPU_data_master_read & ~Audio_avalon_audio_slave_waits_for_read & ~(|CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register);

  //shift register p1 CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register = {CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register, CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register_in};

  //CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register <= 0;
      else 
        CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register <= p1_CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register;
    end


  //local readdatavalid CPU_data_master_read_data_valid_Audio_avalon_audio_slave, which is an e_mux
  assign CPU_data_master_read_data_valid_Audio_avalon_audio_slave = CPU_data_master_read_data_valid_Audio_avalon_audio_slave_shift_register;

  //Audio_avalon_audio_slave_writedata mux, which is an e_mux
  assign Audio_avalon_audio_slave_writedata = CPU_data_master_writedata;

  //master is always granted when requested
  assign CPU_data_master_granted_Audio_avalon_audio_slave = CPU_data_master_qualified_request_Audio_avalon_audio_slave;

  //CPU/data_master saved-grant Audio/avalon_audio_slave, which is an e_assign
  assign CPU_data_master_saved_grant_Audio_avalon_audio_slave = CPU_data_master_requests_Audio_avalon_audio_slave;

  //allow new arb cycle for Audio/avalon_audio_slave, which is an e_assign
  assign Audio_avalon_audio_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Audio_avalon_audio_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Audio_avalon_audio_slave_master_qreq_vector = 1;

  //~Audio_avalon_audio_slave_reset assignment, which is an e_assign
  assign Audio_avalon_audio_slave_reset = ~reset_n;

  assign Audio_avalon_audio_slave_chipselect = CPU_data_master_granted_Audio_avalon_audio_slave;
  //Audio_avalon_audio_slave_firsttransfer first transaction, which is an e_assign
  assign Audio_avalon_audio_slave_firsttransfer = Audio_avalon_audio_slave_begins_xfer ? Audio_avalon_audio_slave_unreg_firsttransfer : Audio_avalon_audio_slave_reg_firsttransfer;

  //Audio_avalon_audio_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign Audio_avalon_audio_slave_unreg_firsttransfer = ~(Audio_avalon_audio_slave_slavearbiterlockenable & Audio_avalon_audio_slave_any_continuerequest);

  //Audio_avalon_audio_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Audio_avalon_audio_slave_reg_firsttransfer <= 1'b1;
      else if (Audio_avalon_audio_slave_begins_xfer)
          Audio_avalon_audio_slave_reg_firsttransfer <= Audio_avalon_audio_slave_unreg_firsttransfer;
    end


  //Audio_avalon_audio_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Audio_avalon_audio_slave_beginbursttransfer_internal = Audio_avalon_audio_slave_begins_xfer;

  //Audio_avalon_audio_slave_read assignment, which is an e_mux
  assign Audio_avalon_audio_slave_read = CPU_data_master_granted_Audio_avalon_audio_slave & CPU_data_master_read;

  //Audio_avalon_audio_slave_write assignment, which is an e_mux
  assign Audio_avalon_audio_slave_write = CPU_data_master_granted_Audio_avalon_audio_slave & CPU_data_master_write;

  assign shifted_address_to_Audio_avalon_audio_slave_from_CPU_data_master = CPU_data_master_address_to_slave;
  //Audio_avalon_audio_slave_address mux, which is an e_mux
  assign Audio_avalon_audio_slave_address = shifted_address_to_Audio_avalon_audio_slave_from_CPU_data_master >> 2;

  //d1_Audio_avalon_audio_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Audio_avalon_audio_slave_end_xfer <= 1;
      else 
        d1_Audio_avalon_audio_slave_end_xfer <= Audio_avalon_audio_slave_end_xfer;
    end


  //Audio_avalon_audio_slave_waits_for_read in a cycle, which is an e_mux
  assign Audio_avalon_audio_slave_waits_for_read = Audio_avalon_audio_slave_in_a_read_cycle & 0;

  //Audio_avalon_audio_slave_in_a_read_cycle assignment, which is an e_assign
  assign Audio_avalon_audio_slave_in_a_read_cycle = CPU_data_master_granted_Audio_avalon_audio_slave & CPU_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Audio_avalon_audio_slave_in_a_read_cycle;

  //Audio_avalon_audio_slave_waits_for_write in a cycle, which is an e_mux
  assign Audio_avalon_audio_slave_waits_for_write = Audio_avalon_audio_slave_in_a_write_cycle & 0;

  //Audio_avalon_audio_slave_in_a_write_cycle assignment, which is an e_assign
  assign Audio_avalon_audio_slave_in_a_write_cycle = CPU_data_master_granted_Audio_avalon_audio_slave & CPU_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Audio_avalon_audio_slave_in_a_write_cycle;

  assign wait_for_Audio_avalon_audio_slave_counter = 0;
  //assign Audio_avalon_audio_slave_irq_from_sa = Audio_avalon_audio_slave_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Audio_avalon_audio_slave_irq_from_sa = Audio_avalon_audio_slave_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Audio/avalon_audio_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module CPU_jtag_debug_module_arbitrator (
                                          // inputs:
                                           CPU_data_master_address_to_slave,
                                           CPU_data_master_byteenable,
                                           CPU_data_master_debugaccess,
                                           CPU_data_master_read,
                                           CPU_data_master_waitrequest,
                                           CPU_data_master_write,
                                           CPU_data_master_writedata,
                                           CPU_instruction_master_address_to_slave,
                                           CPU_instruction_master_latency_counter,
                                           CPU_instruction_master_read,
                                           CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register,
                                           CPU_jtag_debug_module_readdata,
                                           CPU_jtag_debug_module_resetrequest,
                                           clk,
                                           reset_n,

                                          // outputs:
                                           CPU_data_master_granted_CPU_jtag_debug_module,
                                           CPU_data_master_qualified_request_CPU_jtag_debug_module,
                                           CPU_data_master_read_data_valid_CPU_jtag_debug_module,
                                           CPU_data_master_requests_CPU_jtag_debug_module,
                                           CPU_instruction_master_granted_CPU_jtag_debug_module,
                                           CPU_instruction_master_qualified_request_CPU_jtag_debug_module,
                                           CPU_instruction_master_read_data_valid_CPU_jtag_debug_module,
                                           CPU_instruction_master_requests_CPU_jtag_debug_module,
                                           CPU_jtag_debug_module_address,
                                           CPU_jtag_debug_module_begintransfer,
                                           CPU_jtag_debug_module_byteenable,
                                           CPU_jtag_debug_module_chipselect,
                                           CPU_jtag_debug_module_debugaccess,
                                           CPU_jtag_debug_module_readdata_from_sa,
                                           CPU_jtag_debug_module_resetrequest_from_sa,
                                           CPU_jtag_debug_module_write,
                                           CPU_jtag_debug_module_writedata,
                                           d1_CPU_jtag_debug_module_end_xfer
                                        )
;

  output           CPU_data_master_granted_CPU_jtag_debug_module;
  output           CPU_data_master_qualified_request_CPU_jtag_debug_module;
  output           CPU_data_master_read_data_valid_CPU_jtag_debug_module;
  output           CPU_data_master_requests_CPU_jtag_debug_module;
  output           CPU_instruction_master_granted_CPU_jtag_debug_module;
  output           CPU_instruction_master_qualified_request_CPU_jtag_debug_module;
  output           CPU_instruction_master_read_data_valid_CPU_jtag_debug_module;
  output           CPU_instruction_master_requests_CPU_jtag_debug_module;
  output  [  8: 0] CPU_jtag_debug_module_address;
  output           CPU_jtag_debug_module_begintransfer;
  output  [  3: 0] CPU_jtag_debug_module_byteenable;
  output           CPU_jtag_debug_module_chipselect;
  output           CPU_jtag_debug_module_debugaccess;
  output  [ 31: 0] CPU_jtag_debug_module_readdata_from_sa;
  output           CPU_jtag_debug_module_resetrequest_from_sa;
  output           CPU_jtag_debug_module_write;
  output  [ 31: 0] CPU_jtag_debug_module_writedata;
  output           d1_CPU_jtag_debug_module_end_xfer;
  input   [ 24: 0] CPU_data_master_address_to_slave;
  input   [  3: 0] CPU_data_master_byteenable;
  input            CPU_data_master_debugaccess;
  input            CPU_data_master_read;
  input            CPU_data_master_waitrequest;
  input            CPU_data_master_write;
  input   [ 31: 0] CPU_data_master_writedata;
  input   [ 24: 0] CPU_instruction_master_address_to_slave;
  input            CPU_instruction_master_latency_counter;
  input            CPU_instruction_master_read;
  input            CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register;
  input   [ 31: 0] CPU_jtag_debug_module_readdata;
  input            CPU_jtag_debug_module_resetrequest;
  input            clk;
  input            reset_n;

  wire             CPU_data_master_arbiterlock;
  wire             CPU_data_master_arbiterlock2;
  wire             CPU_data_master_continuerequest;
  wire             CPU_data_master_granted_CPU_jtag_debug_module;
  wire             CPU_data_master_qualified_request_CPU_jtag_debug_module;
  wire             CPU_data_master_read_data_valid_CPU_jtag_debug_module;
  wire             CPU_data_master_requests_CPU_jtag_debug_module;
  wire             CPU_data_master_saved_grant_CPU_jtag_debug_module;
  wire             CPU_instruction_master_arbiterlock;
  wire             CPU_instruction_master_arbiterlock2;
  wire             CPU_instruction_master_continuerequest;
  wire             CPU_instruction_master_granted_CPU_jtag_debug_module;
  wire             CPU_instruction_master_qualified_request_CPU_jtag_debug_module;
  wire             CPU_instruction_master_read_data_valid_CPU_jtag_debug_module;
  wire             CPU_instruction_master_requests_CPU_jtag_debug_module;
  wire             CPU_instruction_master_saved_grant_CPU_jtag_debug_module;
  wire    [  8: 0] CPU_jtag_debug_module_address;
  wire             CPU_jtag_debug_module_allgrants;
  wire             CPU_jtag_debug_module_allow_new_arb_cycle;
  wire             CPU_jtag_debug_module_any_bursting_master_saved_grant;
  wire             CPU_jtag_debug_module_any_continuerequest;
  reg     [  1: 0] CPU_jtag_debug_module_arb_addend;
  wire             CPU_jtag_debug_module_arb_counter_enable;
  reg     [  1: 0] CPU_jtag_debug_module_arb_share_counter;
  wire    [  1: 0] CPU_jtag_debug_module_arb_share_counter_next_value;
  wire    [  1: 0] CPU_jtag_debug_module_arb_share_set_values;
  wire    [  1: 0] CPU_jtag_debug_module_arb_winner;
  wire             CPU_jtag_debug_module_arbitration_holdoff_internal;
  wire             CPU_jtag_debug_module_beginbursttransfer_internal;
  wire             CPU_jtag_debug_module_begins_xfer;
  wire             CPU_jtag_debug_module_begintransfer;
  wire    [  3: 0] CPU_jtag_debug_module_byteenable;
  wire             CPU_jtag_debug_module_chipselect;
  wire    [  3: 0] CPU_jtag_debug_module_chosen_master_double_vector;
  wire    [  1: 0] CPU_jtag_debug_module_chosen_master_rot_left;
  wire             CPU_jtag_debug_module_debugaccess;
  wire             CPU_jtag_debug_module_end_xfer;
  wire             CPU_jtag_debug_module_firsttransfer;
  wire    [  1: 0] CPU_jtag_debug_module_grant_vector;
  wire             CPU_jtag_debug_module_in_a_read_cycle;
  wire             CPU_jtag_debug_module_in_a_write_cycle;
  wire    [  1: 0] CPU_jtag_debug_module_master_qreq_vector;
  wire             CPU_jtag_debug_module_non_bursting_master_requests;
  wire    [ 31: 0] CPU_jtag_debug_module_readdata_from_sa;
  reg              CPU_jtag_debug_module_reg_firsttransfer;
  wire             CPU_jtag_debug_module_resetrequest_from_sa;
  reg     [  1: 0] CPU_jtag_debug_module_saved_chosen_master_vector;
  reg              CPU_jtag_debug_module_slavearbiterlockenable;
  wire             CPU_jtag_debug_module_slavearbiterlockenable2;
  wire             CPU_jtag_debug_module_unreg_firsttransfer;
  wire             CPU_jtag_debug_module_waits_for_read;
  wire             CPU_jtag_debug_module_waits_for_write;
  wire             CPU_jtag_debug_module_write;
  wire    [ 31: 0] CPU_jtag_debug_module_writedata;
  reg              d1_CPU_jtag_debug_module_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_CPU_jtag_debug_module;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_CPU_data_master_granted_slave_CPU_jtag_debug_module;
  reg              last_cycle_CPU_instruction_master_granted_slave_CPU_jtag_debug_module;
  wire    [ 24: 0] shifted_address_to_CPU_jtag_debug_module_from_CPU_data_master;
  wire    [ 24: 0] shifted_address_to_CPU_jtag_debug_module_from_CPU_instruction_master;
  wire             wait_for_CPU_jtag_debug_module_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~CPU_jtag_debug_module_end_xfer;
    end


  assign CPU_jtag_debug_module_begins_xfer = ~d1_reasons_to_wait & ((CPU_data_master_qualified_request_CPU_jtag_debug_module | CPU_instruction_master_qualified_request_CPU_jtag_debug_module));
  //assign CPU_jtag_debug_module_readdata_from_sa = CPU_jtag_debug_module_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign CPU_jtag_debug_module_readdata_from_sa = CPU_jtag_debug_module_readdata;

  assign CPU_data_master_requests_CPU_jtag_debug_module = ({CPU_data_master_address_to_slave[24 : 11] , 11'b0} == 25'h1000800) & (CPU_data_master_read | CPU_data_master_write);
  //CPU_jtag_debug_module_arb_share_counter set values, which is an e_mux
  assign CPU_jtag_debug_module_arb_share_set_values = 1;

  //CPU_jtag_debug_module_non_bursting_master_requests mux, which is an e_mux
  assign CPU_jtag_debug_module_non_bursting_master_requests = CPU_data_master_requests_CPU_jtag_debug_module |
    CPU_instruction_master_requests_CPU_jtag_debug_module |
    CPU_data_master_requests_CPU_jtag_debug_module |
    CPU_instruction_master_requests_CPU_jtag_debug_module;

  //CPU_jtag_debug_module_any_bursting_master_saved_grant mux, which is an e_mux
  assign CPU_jtag_debug_module_any_bursting_master_saved_grant = 0;

  //CPU_jtag_debug_module_arb_share_counter_next_value assignment, which is an e_assign
  assign CPU_jtag_debug_module_arb_share_counter_next_value = CPU_jtag_debug_module_firsttransfer ? (CPU_jtag_debug_module_arb_share_set_values - 1) : |CPU_jtag_debug_module_arb_share_counter ? (CPU_jtag_debug_module_arb_share_counter - 1) : 0;

  //CPU_jtag_debug_module_allgrants all slave grants, which is an e_mux
  assign CPU_jtag_debug_module_allgrants = (|CPU_jtag_debug_module_grant_vector) |
    (|CPU_jtag_debug_module_grant_vector) |
    (|CPU_jtag_debug_module_grant_vector) |
    (|CPU_jtag_debug_module_grant_vector);

  //CPU_jtag_debug_module_end_xfer assignment, which is an e_assign
  assign CPU_jtag_debug_module_end_xfer = ~(CPU_jtag_debug_module_waits_for_read | CPU_jtag_debug_module_waits_for_write);

  //end_xfer_arb_share_counter_term_CPU_jtag_debug_module arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_CPU_jtag_debug_module = CPU_jtag_debug_module_end_xfer & (~CPU_jtag_debug_module_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //CPU_jtag_debug_module_arb_share_counter arbitration counter enable, which is an e_assign
  assign CPU_jtag_debug_module_arb_counter_enable = (end_xfer_arb_share_counter_term_CPU_jtag_debug_module & CPU_jtag_debug_module_allgrants) | (end_xfer_arb_share_counter_term_CPU_jtag_debug_module & ~CPU_jtag_debug_module_non_bursting_master_requests);

  //CPU_jtag_debug_module_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_jtag_debug_module_arb_share_counter <= 0;
      else if (CPU_jtag_debug_module_arb_counter_enable)
          CPU_jtag_debug_module_arb_share_counter <= CPU_jtag_debug_module_arb_share_counter_next_value;
    end


  //CPU_jtag_debug_module_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_jtag_debug_module_slavearbiterlockenable <= 0;
      else if ((|CPU_jtag_debug_module_master_qreq_vector & end_xfer_arb_share_counter_term_CPU_jtag_debug_module) | (end_xfer_arb_share_counter_term_CPU_jtag_debug_module & ~CPU_jtag_debug_module_non_bursting_master_requests))
          CPU_jtag_debug_module_slavearbiterlockenable <= |CPU_jtag_debug_module_arb_share_counter_next_value;
    end


  //CPU/data_master CPU/jtag_debug_module arbiterlock, which is an e_assign
  assign CPU_data_master_arbiterlock = CPU_jtag_debug_module_slavearbiterlockenable & CPU_data_master_continuerequest;

  //CPU_jtag_debug_module_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign CPU_jtag_debug_module_slavearbiterlockenable2 = |CPU_jtag_debug_module_arb_share_counter_next_value;

  //CPU/data_master CPU/jtag_debug_module arbiterlock2, which is an e_assign
  assign CPU_data_master_arbiterlock2 = CPU_jtag_debug_module_slavearbiterlockenable2 & CPU_data_master_continuerequest;

  //CPU/instruction_master CPU/jtag_debug_module arbiterlock, which is an e_assign
  assign CPU_instruction_master_arbiterlock = CPU_jtag_debug_module_slavearbiterlockenable & CPU_instruction_master_continuerequest;

  //CPU/instruction_master CPU/jtag_debug_module arbiterlock2, which is an e_assign
  assign CPU_instruction_master_arbiterlock2 = CPU_jtag_debug_module_slavearbiterlockenable2 & CPU_instruction_master_continuerequest;

  //CPU/instruction_master granted CPU/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_CPU_instruction_master_granted_slave_CPU_jtag_debug_module <= 0;
      else 
        last_cycle_CPU_instruction_master_granted_slave_CPU_jtag_debug_module <= CPU_instruction_master_saved_grant_CPU_jtag_debug_module ? 1 : (CPU_jtag_debug_module_arbitration_holdoff_internal | ~CPU_instruction_master_requests_CPU_jtag_debug_module) ? 0 : last_cycle_CPU_instruction_master_granted_slave_CPU_jtag_debug_module;
    end


  //CPU_instruction_master_continuerequest continued request, which is an e_mux
  assign CPU_instruction_master_continuerequest = last_cycle_CPU_instruction_master_granted_slave_CPU_jtag_debug_module & CPU_instruction_master_requests_CPU_jtag_debug_module;

  //CPU_jtag_debug_module_any_continuerequest at least one master continues requesting, which is an e_mux
  assign CPU_jtag_debug_module_any_continuerequest = CPU_instruction_master_continuerequest |
    CPU_data_master_continuerequest;

  assign CPU_data_master_qualified_request_CPU_jtag_debug_module = CPU_data_master_requests_CPU_jtag_debug_module & ~(((~CPU_data_master_waitrequest) & CPU_data_master_write) | CPU_instruction_master_arbiterlock);
  //CPU_jtag_debug_module_writedata mux, which is an e_mux
  assign CPU_jtag_debug_module_writedata = CPU_data_master_writedata;

  assign CPU_instruction_master_requests_CPU_jtag_debug_module = (({CPU_instruction_master_address_to_slave[24 : 11] , 11'b0} == 25'h1000800) & (CPU_instruction_master_read)) & CPU_instruction_master_read;
  //CPU/data_master granted CPU/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_CPU_data_master_granted_slave_CPU_jtag_debug_module <= 0;
      else 
        last_cycle_CPU_data_master_granted_slave_CPU_jtag_debug_module <= CPU_data_master_saved_grant_CPU_jtag_debug_module ? 1 : (CPU_jtag_debug_module_arbitration_holdoff_internal | ~CPU_data_master_requests_CPU_jtag_debug_module) ? 0 : last_cycle_CPU_data_master_granted_slave_CPU_jtag_debug_module;
    end


  //CPU_data_master_continuerequest continued request, which is an e_mux
  assign CPU_data_master_continuerequest = last_cycle_CPU_data_master_granted_slave_CPU_jtag_debug_module & CPU_data_master_requests_CPU_jtag_debug_module;

  assign CPU_instruction_master_qualified_request_CPU_jtag_debug_module = CPU_instruction_master_requests_CPU_jtag_debug_module & ~((CPU_instruction_master_read & ((CPU_instruction_master_latency_counter != 0) | (|CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register))) | CPU_data_master_arbiterlock);
  //local readdatavalid CPU_instruction_master_read_data_valid_CPU_jtag_debug_module, which is an e_mux
  assign CPU_instruction_master_read_data_valid_CPU_jtag_debug_module = CPU_instruction_master_granted_CPU_jtag_debug_module & CPU_instruction_master_read & ~CPU_jtag_debug_module_waits_for_read;

  //allow new arb cycle for CPU/jtag_debug_module, which is an e_assign
  assign CPU_jtag_debug_module_allow_new_arb_cycle = ~CPU_data_master_arbiterlock & ~CPU_instruction_master_arbiterlock;

  //CPU/instruction_master assignment into master qualified-requests vector for CPU/jtag_debug_module, which is an e_assign
  assign CPU_jtag_debug_module_master_qreq_vector[0] = CPU_instruction_master_qualified_request_CPU_jtag_debug_module;

  //CPU/instruction_master grant CPU/jtag_debug_module, which is an e_assign
  assign CPU_instruction_master_granted_CPU_jtag_debug_module = CPU_jtag_debug_module_grant_vector[0];

  //CPU/instruction_master saved-grant CPU/jtag_debug_module, which is an e_assign
  assign CPU_instruction_master_saved_grant_CPU_jtag_debug_module = CPU_jtag_debug_module_arb_winner[0] && CPU_instruction_master_requests_CPU_jtag_debug_module;

  //CPU/data_master assignment into master qualified-requests vector for CPU/jtag_debug_module, which is an e_assign
  assign CPU_jtag_debug_module_master_qreq_vector[1] = CPU_data_master_qualified_request_CPU_jtag_debug_module;

  //CPU/data_master grant CPU/jtag_debug_module, which is an e_assign
  assign CPU_data_master_granted_CPU_jtag_debug_module = CPU_jtag_debug_module_grant_vector[1];

  //CPU/data_master saved-grant CPU/jtag_debug_module, which is an e_assign
  assign CPU_data_master_saved_grant_CPU_jtag_debug_module = CPU_jtag_debug_module_arb_winner[1] && CPU_data_master_requests_CPU_jtag_debug_module;

  //CPU/jtag_debug_module chosen-master double-vector, which is an e_assign
  assign CPU_jtag_debug_module_chosen_master_double_vector = {CPU_jtag_debug_module_master_qreq_vector, CPU_jtag_debug_module_master_qreq_vector} & ({~CPU_jtag_debug_module_master_qreq_vector, ~CPU_jtag_debug_module_master_qreq_vector} + CPU_jtag_debug_module_arb_addend);

  //stable onehot encoding of arb winner
  assign CPU_jtag_debug_module_arb_winner = (CPU_jtag_debug_module_allow_new_arb_cycle & | CPU_jtag_debug_module_grant_vector) ? CPU_jtag_debug_module_grant_vector : CPU_jtag_debug_module_saved_chosen_master_vector;

  //saved CPU_jtag_debug_module_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_jtag_debug_module_saved_chosen_master_vector <= 0;
      else if (CPU_jtag_debug_module_allow_new_arb_cycle)
          CPU_jtag_debug_module_saved_chosen_master_vector <= |CPU_jtag_debug_module_grant_vector ? CPU_jtag_debug_module_grant_vector : CPU_jtag_debug_module_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign CPU_jtag_debug_module_grant_vector = {(CPU_jtag_debug_module_chosen_master_double_vector[1] | CPU_jtag_debug_module_chosen_master_double_vector[3]),
    (CPU_jtag_debug_module_chosen_master_double_vector[0] | CPU_jtag_debug_module_chosen_master_double_vector[2])};

  //CPU/jtag_debug_module chosen master rotated left, which is an e_assign
  assign CPU_jtag_debug_module_chosen_master_rot_left = (CPU_jtag_debug_module_arb_winner << 1) ? (CPU_jtag_debug_module_arb_winner << 1) : 1;

  //CPU/jtag_debug_module's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_jtag_debug_module_arb_addend <= 1;
      else if (|CPU_jtag_debug_module_grant_vector)
          CPU_jtag_debug_module_arb_addend <= CPU_jtag_debug_module_end_xfer? CPU_jtag_debug_module_chosen_master_rot_left : CPU_jtag_debug_module_grant_vector;
    end


  assign CPU_jtag_debug_module_begintransfer = CPU_jtag_debug_module_begins_xfer;
  //assign CPU_jtag_debug_module_resetrequest_from_sa = CPU_jtag_debug_module_resetrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign CPU_jtag_debug_module_resetrequest_from_sa = CPU_jtag_debug_module_resetrequest;

  assign CPU_jtag_debug_module_chipselect = CPU_data_master_granted_CPU_jtag_debug_module | CPU_instruction_master_granted_CPU_jtag_debug_module;
  //CPU_jtag_debug_module_firsttransfer first transaction, which is an e_assign
  assign CPU_jtag_debug_module_firsttransfer = CPU_jtag_debug_module_begins_xfer ? CPU_jtag_debug_module_unreg_firsttransfer : CPU_jtag_debug_module_reg_firsttransfer;

  //CPU_jtag_debug_module_unreg_firsttransfer first transaction, which is an e_assign
  assign CPU_jtag_debug_module_unreg_firsttransfer = ~(CPU_jtag_debug_module_slavearbiterlockenable & CPU_jtag_debug_module_any_continuerequest);

  //CPU_jtag_debug_module_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_jtag_debug_module_reg_firsttransfer <= 1'b1;
      else if (CPU_jtag_debug_module_begins_xfer)
          CPU_jtag_debug_module_reg_firsttransfer <= CPU_jtag_debug_module_unreg_firsttransfer;
    end


  //CPU_jtag_debug_module_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign CPU_jtag_debug_module_beginbursttransfer_internal = CPU_jtag_debug_module_begins_xfer;

  //CPU_jtag_debug_module_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign CPU_jtag_debug_module_arbitration_holdoff_internal = CPU_jtag_debug_module_begins_xfer & CPU_jtag_debug_module_firsttransfer;

  //CPU_jtag_debug_module_write assignment, which is an e_mux
  assign CPU_jtag_debug_module_write = CPU_data_master_granted_CPU_jtag_debug_module & CPU_data_master_write;

  assign shifted_address_to_CPU_jtag_debug_module_from_CPU_data_master = CPU_data_master_address_to_slave;
  //CPU_jtag_debug_module_address mux, which is an e_mux
  assign CPU_jtag_debug_module_address = (CPU_data_master_granted_CPU_jtag_debug_module)? (shifted_address_to_CPU_jtag_debug_module_from_CPU_data_master >> 2) :
    (shifted_address_to_CPU_jtag_debug_module_from_CPU_instruction_master >> 2);

  assign shifted_address_to_CPU_jtag_debug_module_from_CPU_instruction_master = CPU_instruction_master_address_to_slave;
  //d1_CPU_jtag_debug_module_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_CPU_jtag_debug_module_end_xfer <= 1;
      else 
        d1_CPU_jtag_debug_module_end_xfer <= CPU_jtag_debug_module_end_xfer;
    end


  //CPU_jtag_debug_module_waits_for_read in a cycle, which is an e_mux
  assign CPU_jtag_debug_module_waits_for_read = CPU_jtag_debug_module_in_a_read_cycle & CPU_jtag_debug_module_begins_xfer;

  //CPU_jtag_debug_module_in_a_read_cycle assignment, which is an e_assign
  assign CPU_jtag_debug_module_in_a_read_cycle = (CPU_data_master_granted_CPU_jtag_debug_module & CPU_data_master_read) | (CPU_instruction_master_granted_CPU_jtag_debug_module & CPU_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = CPU_jtag_debug_module_in_a_read_cycle;

  //CPU_jtag_debug_module_waits_for_write in a cycle, which is an e_mux
  assign CPU_jtag_debug_module_waits_for_write = CPU_jtag_debug_module_in_a_write_cycle & 0;

  //CPU_jtag_debug_module_in_a_write_cycle assignment, which is an e_assign
  assign CPU_jtag_debug_module_in_a_write_cycle = CPU_data_master_granted_CPU_jtag_debug_module & CPU_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = CPU_jtag_debug_module_in_a_write_cycle;

  assign wait_for_CPU_jtag_debug_module_counter = 0;
  //CPU_jtag_debug_module_byteenable byte enable port mux, which is an e_mux
  assign CPU_jtag_debug_module_byteenable = (CPU_data_master_granted_CPU_jtag_debug_module)? CPU_data_master_byteenable :
    -1;

  //debugaccess mux, which is an e_mux
  assign CPU_jtag_debug_module_debugaccess = (CPU_data_master_granted_CPU_jtag_debug_module)? CPU_data_master_debugaccess :
    0;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //CPU/jtag_debug_module enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (CPU_data_master_granted_CPU_jtag_debug_module + CPU_instruction_master_granted_CPU_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (CPU_data_master_saved_grant_CPU_jtag_debug_module + CPU_instruction_master_saved_grant_CPU_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module CPU_custom_instruction_master_arbitrator (
                                                  // inputs:
                                                   CPU_custom_instruction_master_multi_start,
                                                   CPU_fpoint_s1_done_from_sa,
                                                   CPU_fpoint_s1_result_from_sa,
                                                   clk,
                                                   reset_n,

                                                  // outputs:
                                                   CPU_custom_instruction_master_multi_done,
                                                   CPU_custom_instruction_master_multi_result,
                                                   CPU_custom_instruction_master_reset_n,
                                                   CPU_custom_instruction_master_start_CPU_fpoint_s1,
                                                   CPU_fpoint_s1_select
                                                )
;

  output           CPU_custom_instruction_master_multi_done;
  output  [ 31: 0] CPU_custom_instruction_master_multi_result;
  output           CPU_custom_instruction_master_reset_n;
  output           CPU_custom_instruction_master_start_CPU_fpoint_s1;
  output           CPU_fpoint_s1_select;
  input            CPU_custom_instruction_master_multi_start;
  input            CPU_fpoint_s1_done_from_sa;
  input   [ 31: 0] CPU_fpoint_s1_result_from_sa;
  input            clk;
  input            reset_n;

  wire             CPU_custom_instruction_master_multi_done;
  wire    [ 31: 0] CPU_custom_instruction_master_multi_result;
  wire             CPU_custom_instruction_master_reset_n;
  wire             CPU_custom_instruction_master_start_CPU_fpoint_s1;
  wire             CPU_fpoint_s1_select;
  assign CPU_fpoint_s1_select = 1'b1;
  assign CPU_custom_instruction_master_start_CPU_fpoint_s1 = CPU_fpoint_s1_select & CPU_custom_instruction_master_multi_start;
  //CPU_custom_instruction_master_multi_result mux, which is an e_mux
  assign CPU_custom_instruction_master_multi_result = {32 {CPU_fpoint_s1_select}} & CPU_fpoint_s1_result_from_sa;

  //multi_done mux, which is an e_mux
  assign CPU_custom_instruction_master_multi_done = {1 {CPU_fpoint_s1_select}} & CPU_fpoint_s1_done_from_sa;

  //CPU_custom_instruction_master_reset_n local reset_n, which is an e_assign
  assign CPU_custom_instruction_master_reset_n = reset_n;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module CPU_data_master_arbitrator (
                                    // inputs:
                                     AV_Config_avalon_on_board_config_slave_readdata_from_sa,
                                     AV_Config_avalon_on_board_config_slave_waitrequest_from_sa,
                                     Addr_Read_MEM_avalon_parallel_port_slave_readdata_from_sa,
                                     Addr_Write_MEM_avalon_parallel_port_slave_readdata_from_sa,
                                     Audio_avalon_audio_slave_irq_from_sa,
                                     Audio_avalon_audio_slave_readdata_from_sa,
                                     CPU_data_master_address,
                                     CPU_data_master_byteenable_SDRAM_s1,
                                     CPU_data_master_granted_AV_Config_avalon_on_board_config_slave,
                                     CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_granted_Audio_avalon_audio_slave,
                                     CPU_data_master_granted_CPU_jtag_debug_module,
                                     CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave,
                                     CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave,
                                     CPU_data_master_granted_JTAG_UART_avalon_jtag_slave,
                                     CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave,
                                     CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave,
                                     CPU_data_master_granted_SDRAM_s1,
                                     CPU_data_master_granted_TIMER_s1,
                                     CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave,
                                     CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_qualified_request_Audio_avalon_audio_slave,
                                     CPU_data_master_qualified_request_CPU_jtag_debug_module,
                                     CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave,
                                     CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave,
                                     CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave,
                                     CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave,
                                     CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave,
                                     CPU_data_master_qualified_request_SDRAM_s1,
                                     CPU_data_master_qualified_request_TIMER_s1,
                                     CPU_data_master_read,
                                     CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave,
                                     CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_read_data_valid_Audio_avalon_audio_slave,
                                     CPU_data_master_read_data_valid_CPU_jtag_debug_module,
                                     CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_read_data_valid_External_Clocks_avalon_external_clocks_slave,
                                     CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave,
                                     CPU_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave,
                                     CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave,
                                     CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave,
                                     CPU_data_master_read_data_valid_SDRAM_s1,
                                     CPU_data_master_read_data_valid_SDRAM_s1_shift_register,
                                     CPU_data_master_read_data_valid_TIMER_s1,
                                     CPU_data_master_requests_AV_Config_avalon_on_board_config_slave,
                                     CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_requests_Audio_avalon_audio_slave,
                                     CPU_data_master_requests_CPU_jtag_debug_module,
                                     CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave,
                                     CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave,
                                     CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave,
                                     CPU_data_master_requests_JTAG_UART_avalon_jtag_slave,
                                     CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave,
                                     CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave,
                                     CPU_data_master_requests_SDRAM_s1,
                                     CPU_data_master_requests_TIMER_s1,
                                     CPU_data_master_write,
                                     CPU_data_master_writedata,
                                     CPU_jtag_debug_module_readdata_from_sa,
                                     Data_Read_MEM_avalon_parallel_port_slave_irq_from_sa,
                                     Data_Read_MEM_avalon_parallel_port_slave_readdata_from_sa,
                                     Data_Write_MEM_avalon_parallel_port_slave_readdata_from_sa,
                                     External_Clocks_avalon_external_clocks_slave_readdata_from_sa,
                                     Green_LEDs_avalon_parallel_port_slave_readdata_from_sa,
                                     JTAG_UART_avalon_jtag_slave_irq_from_sa,
                                     JTAG_UART_avalon_jtag_slave_readdata_from_sa,
                                     JTAG_UART_avalon_jtag_slave_waitrequest_from_sa,
                                     Out_Ports_avalon_parallel_port_slave_readdata_from_sa,
                                     Pushbuttons_avalon_parallel_port_slave_irq_from_sa,
                                     Pushbuttons_avalon_parallel_port_slave_readdata_from_sa,
                                     SDRAM_s1_readdata_from_sa,
                                     SDRAM_s1_waitrequest_from_sa,
                                     TIMER_s1_irq_from_sa,
                                     TIMER_s1_readdata_from_sa,
                                     clk,
                                     d1_AV_Config_avalon_on_board_config_slave_end_xfer,
                                     d1_Addr_Read_MEM_avalon_parallel_port_slave_end_xfer,
                                     d1_Addr_Write_MEM_avalon_parallel_port_slave_end_xfer,
                                     d1_Audio_avalon_audio_slave_end_xfer,
                                     d1_CPU_jtag_debug_module_end_xfer,
                                     d1_Data_Read_MEM_avalon_parallel_port_slave_end_xfer,
                                     d1_Data_Write_MEM_avalon_parallel_port_slave_end_xfer,
                                     d1_External_Clocks_avalon_external_clocks_slave_end_xfer,
                                     d1_Green_LEDs_avalon_parallel_port_slave_end_xfer,
                                     d1_JTAG_UART_avalon_jtag_slave_end_xfer,
                                     d1_Out_Ports_avalon_parallel_port_slave_end_xfer,
                                     d1_Pushbuttons_avalon_parallel_port_slave_end_xfer,
                                     d1_SDRAM_s1_end_xfer,
                                     d1_TIMER_s1_end_xfer,
                                     registered_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave,
                                     registered_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave,
                                     registered_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave,
                                     registered_CPU_data_master_read_data_valid_Audio_avalon_audio_slave,
                                     registered_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave,
                                     registered_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave,
                                     registered_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave,
                                     registered_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave,
                                     registered_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave,
                                     reset_n,

                                    // outputs:
                                     CPU_data_master_address_to_slave,
                                     CPU_data_master_dbs_address,
                                     CPU_data_master_dbs_write_16,
                                     CPU_data_master_irq,
                                     CPU_data_master_no_byte_enables_and_last_term,
                                     CPU_data_master_readdata,
                                     CPU_data_master_waitrequest
                                  )
;

  output  [ 24: 0] CPU_data_master_address_to_slave;
  output  [  1: 0] CPU_data_master_dbs_address;
  output  [ 15: 0] CPU_data_master_dbs_write_16;
  output  [ 31: 0] CPU_data_master_irq;
  output           CPU_data_master_no_byte_enables_and_last_term;
  output  [ 31: 0] CPU_data_master_readdata;
  output           CPU_data_master_waitrequest;
  input   [ 31: 0] AV_Config_avalon_on_board_config_slave_readdata_from_sa;
  input            AV_Config_avalon_on_board_config_slave_waitrequest_from_sa;
  input   [ 31: 0] Addr_Read_MEM_avalon_parallel_port_slave_readdata_from_sa;
  input   [ 31: 0] Addr_Write_MEM_avalon_parallel_port_slave_readdata_from_sa;
  input            Audio_avalon_audio_slave_irq_from_sa;
  input   [ 31: 0] Audio_avalon_audio_slave_readdata_from_sa;
  input   [ 24: 0] CPU_data_master_address;
  input   [  1: 0] CPU_data_master_byteenable_SDRAM_s1;
  input            CPU_data_master_granted_AV_Config_avalon_on_board_config_slave;
  input            CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_granted_Audio_avalon_audio_slave;
  input            CPU_data_master_granted_CPU_jtag_debug_module;
  input            CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave;
  input            CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave;
  input            CPU_data_master_granted_JTAG_UART_avalon_jtag_slave;
  input            CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave;
  input            CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave;
  input            CPU_data_master_granted_SDRAM_s1;
  input            CPU_data_master_granted_TIMER_s1;
  input            CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave;
  input            CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_qualified_request_Audio_avalon_audio_slave;
  input            CPU_data_master_qualified_request_CPU_jtag_debug_module;
  input            CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave;
  input            CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave;
  input            CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave;
  input            CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave;
  input            CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave;
  input            CPU_data_master_qualified_request_SDRAM_s1;
  input            CPU_data_master_qualified_request_TIMER_s1;
  input            CPU_data_master_read;
  input            CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave;
  input            CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_read_data_valid_Audio_avalon_audio_slave;
  input            CPU_data_master_read_data_valid_CPU_jtag_debug_module;
  input            CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_read_data_valid_External_Clocks_avalon_external_clocks_slave;
  input            CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  input            CPU_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave;
  input            CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave;
  input            CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  input            CPU_data_master_read_data_valid_SDRAM_s1;
  input            CPU_data_master_read_data_valid_SDRAM_s1_shift_register;
  input            CPU_data_master_read_data_valid_TIMER_s1;
  input            CPU_data_master_requests_AV_Config_avalon_on_board_config_slave;
  input            CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_requests_Audio_avalon_audio_slave;
  input            CPU_data_master_requests_CPU_jtag_debug_module;
  input            CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave;
  input            CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave;
  input            CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave;
  input            CPU_data_master_requests_JTAG_UART_avalon_jtag_slave;
  input            CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave;
  input            CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave;
  input            CPU_data_master_requests_SDRAM_s1;
  input            CPU_data_master_requests_TIMER_s1;
  input            CPU_data_master_write;
  input   [ 31: 0] CPU_data_master_writedata;
  input   [ 31: 0] CPU_jtag_debug_module_readdata_from_sa;
  input            Data_Read_MEM_avalon_parallel_port_slave_irq_from_sa;
  input   [ 31: 0] Data_Read_MEM_avalon_parallel_port_slave_readdata_from_sa;
  input   [ 31: 0] Data_Write_MEM_avalon_parallel_port_slave_readdata_from_sa;
  input   [ 31: 0] External_Clocks_avalon_external_clocks_slave_readdata_from_sa;
  input   [ 31: 0] Green_LEDs_avalon_parallel_port_slave_readdata_from_sa;
  input            JTAG_UART_avalon_jtag_slave_irq_from_sa;
  input   [ 31: 0] JTAG_UART_avalon_jtag_slave_readdata_from_sa;
  input            JTAG_UART_avalon_jtag_slave_waitrequest_from_sa;
  input   [ 31: 0] Out_Ports_avalon_parallel_port_slave_readdata_from_sa;
  input            Pushbuttons_avalon_parallel_port_slave_irq_from_sa;
  input   [ 31: 0] Pushbuttons_avalon_parallel_port_slave_readdata_from_sa;
  input   [ 15: 0] SDRAM_s1_readdata_from_sa;
  input            SDRAM_s1_waitrequest_from_sa;
  input            TIMER_s1_irq_from_sa;
  input   [ 15: 0] TIMER_s1_readdata_from_sa;
  input            clk;
  input            d1_AV_Config_avalon_on_board_config_slave_end_xfer;
  input            d1_Addr_Read_MEM_avalon_parallel_port_slave_end_xfer;
  input            d1_Addr_Write_MEM_avalon_parallel_port_slave_end_xfer;
  input            d1_Audio_avalon_audio_slave_end_xfer;
  input            d1_CPU_jtag_debug_module_end_xfer;
  input            d1_Data_Read_MEM_avalon_parallel_port_slave_end_xfer;
  input            d1_Data_Write_MEM_avalon_parallel_port_slave_end_xfer;
  input            d1_External_Clocks_avalon_external_clocks_slave_end_xfer;
  input            d1_Green_LEDs_avalon_parallel_port_slave_end_xfer;
  input            d1_JTAG_UART_avalon_jtag_slave_end_xfer;
  input            d1_Out_Ports_avalon_parallel_port_slave_end_xfer;
  input            d1_Pushbuttons_avalon_parallel_port_slave_end_xfer;
  input            d1_SDRAM_s1_end_xfer;
  input            d1_TIMER_s1_end_xfer;
  input            registered_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave;
  input            registered_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave;
  input            registered_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave;
  input            registered_CPU_data_master_read_data_valid_Audio_avalon_audio_slave;
  input            registered_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave;
  input            registered_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave;
  input            registered_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  input            registered_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave;
  input            registered_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  input            reset_n;

  wire    [ 24: 0] CPU_data_master_address_to_slave;
  reg     [  1: 0] CPU_data_master_dbs_address;
  wire    [  1: 0] CPU_data_master_dbs_increment;
  wire    [ 15: 0] CPU_data_master_dbs_write_16;
  wire    [ 31: 0] CPU_data_master_irq;
  reg              CPU_data_master_no_byte_enables_and_last_term;
  wire    [ 31: 0] CPU_data_master_readdata;
  wire             CPU_data_master_run;
  reg              CPU_data_master_waitrequest;
  reg     [ 15: 0] dbs_16_reg_segment_0;
  wire             dbs_count_enable;
  wire             dbs_counter_overflow;
  wire             last_dbs_term_and_run;
  wire    [  1: 0] next_dbs_address;
  wire    [ 15: 0] p1_dbs_16_reg_segment_0;
  wire    [ 31: 0] p1_registered_CPU_data_master_readdata;
  wire             pre_dbs_count_enable;
  wire             r_0;
  wire             r_1;
  wire             r_2;
  reg     [ 31: 0] registered_CPU_data_master_readdata;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave | registered_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave | ~CPU_data_master_requests_AV_Config_avalon_on_board_config_slave) & ((~CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave | ~CPU_data_master_read | (registered_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave & CPU_data_master_read))) & ((~CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave | ~(CPU_data_master_read | CPU_data_master_write) | (1 & ~AV_Config_avalon_on_board_config_slave_waitrequest_from_sa & (CPU_data_master_read | CPU_data_master_write)))) & 1 & (CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave | registered_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave | ~CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave) & ((~CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave | ~CPU_data_master_read | (registered_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave & CPU_data_master_read))) & ((~CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave | ~(CPU_data_master_read | CPU_data_master_write) | (1 & (CPU_data_master_read | CPU_data_master_write)))) & 1 & (CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave | registered_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave | ~CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave) & ((~CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave | ~CPU_data_master_read | (registered_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave & CPU_data_master_read))) & ((~CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave | ~(CPU_data_master_read | CPU_data_master_write) | (1 & (CPU_data_master_read | CPU_data_master_write)))) & 1 & (CPU_data_master_qualified_request_Audio_avalon_audio_slave | registered_CPU_data_master_read_data_valid_Audio_avalon_audio_slave | ~CPU_data_master_requests_Audio_avalon_audio_slave) & ((~CPU_data_master_qualified_request_Audio_avalon_audio_slave | ~CPU_data_master_read | (registered_CPU_data_master_read_data_valid_Audio_avalon_audio_slave & CPU_data_master_read))) & ((~CPU_data_master_qualified_request_Audio_avalon_audio_slave | ~(CPU_data_master_read | CPU_data_master_write) | (1 & (CPU_data_master_read | CPU_data_master_write)))) & 1 & (CPU_data_master_qualified_request_CPU_jtag_debug_module | ~CPU_data_master_requests_CPU_jtag_debug_module) & (CPU_data_master_granted_CPU_jtag_debug_module | ~CPU_data_master_qualified_request_CPU_jtag_debug_module) & ((~CPU_data_master_qualified_request_CPU_jtag_debug_module | ~CPU_data_master_read | (1 & 1 & CPU_data_master_read)));

  //cascaded wait assignment, which is an e_assign
  assign CPU_data_master_run = r_0 & r_1 & r_2;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = ((~CPU_data_master_qualified_request_CPU_jtag_debug_module | ~CPU_data_master_write | (1 & CPU_data_master_write))) & 1 & (CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave | registered_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave | ~CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave) & ((~CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave | ~CPU_data_master_read | (registered_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave & CPU_data_master_read))) & ((~CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave | ~(CPU_data_master_read | CPU_data_master_write) | (1 & (CPU_data_master_read | CPU_data_master_write)))) & 1 & (CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave | registered_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave | ~CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave) & ((~CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave | ~CPU_data_master_read | (registered_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave & CPU_data_master_read))) & ((~CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave | ~(CPU_data_master_read | CPU_data_master_write) | (1 & (CPU_data_master_read | CPU_data_master_write)))) & 1 & (CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave | ~CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave) & ((~CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave | ~(CPU_data_master_read | CPU_data_master_write) | (1 & (CPU_data_master_read | CPU_data_master_write)))) & ((~CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave | ~(CPU_data_master_read | CPU_data_master_write) | (1 & (CPU_data_master_read | CPU_data_master_write)))) & 1 & (CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave | registered_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave | ~CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave) & ((~CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave | ~CPU_data_master_read | (registered_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave & CPU_data_master_read))) & ((~CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave | ~(CPU_data_master_read | CPU_data_master_write) | (1 & (CPU_data_master_read | CPU_data_master_write)))) & 1 & (CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave | ~CPU_data_master_requests_JTAG_UART_avalon_jtag_slave) & ((~CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave | ~(CPU_data_master_read | CPU_data_master_write) | (1 & ~JTAG_UART_avalon_jtag_slave_waitrequest_from_sa & (CPU_data_master_read | CPU_data_master_write))));

  //r_2 master_run cascaded wait assignment, which is an e_assign
  assign r_2 = ((~CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave | ~(CPU_data_master_read | CPU_data_master_write) | (1 & ~JTAG_UART_avalon_jtag_slave_waitrequest_from_sa & (CPU_data_master_read | CPU_data_master_write)))) & 1 & (CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave | registered_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave | ~CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave) & ((~CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave | ~CPU_data_master_read | (registered_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave & CPU_data_master_read))) & ((~CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave | ~(CPU_data_master_read | CPU_data_master_write) | (1 & (CPU_data_master_read | CPU_data_master_write)))) & 1 & (CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave | registered_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave | ~CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave) & ((~CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave | ~CPU_data_master_read | (registered_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave & CPU_data_master_read))) & ((~CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave | ~(CPU_data_master_read | CPU_data_master_write) | (1 & (CPU_data_master_read | CPU_data_master_write)))) & 1 & (CPU_data_master_qualified_request_SDRAM_s1 | (CPU_data_master_read_data_valid_SDRAM_s1 & CPU_data_master_dbs_address[1]) | (CPU_data_master_write & !CPU_data_master_byteenable_SDRAM_s1 & CPU_data_master_dbs_address[1]) | ~CPU_data_master_requests_SDRAM_s1) & (CPU_data_master_granted_SDRAM_s1 | ~CPU_data_master_qualified_request_SDRAM_s1) & ((~CPU_data_master_qualified_request_SDRAM_s1 | ~CPU_data_master_read | (CPU_data_master_read_data_valid_SDRAM_s1 & (CPU_data_master_dbs_address[1]) & CPU_data_master_read))) & ((~CPU_data_master_qualified_request_SDRAM_s1 | ~CPU_data_master_write | (1 & ~SDRAM_s1_waitrequest_from_sa & (CPU_data_master_dbs_address[1]) & CPU_data_master_write))) & 1 & (CPU_data_master_qualified_request_TIMER_s1 | ~CPU_data_master_requests_TIMER_s1) & ((~CPU_data_master_qualified_request_TIMER_s1 | ~CPU_data_master_read | (1 & 1 & CPU_data_master_read))) & ((~CPU_data_master_qualified_request_TIMER_s1 | ~CPU_data_master_write | (1 & CPU_data_master_write)));

  //optimize select-logic by passing only those address bits which matter.
  assign CPU_data_master_address_to_slave = CPU_data_master_address[24 : 0];

  //CPU/data_master readdata mux, which is an e_mux
  assign CPU_data_master_readdata = ({32 {~CPU_data_master_requests_AV_Config_avalon_on_board_config_slave}} | AV_Config_avalon_on_board_config_slave_readdata_from_sa) &
    ({32 {~CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave}} | Addr_Read_MEM_avalon_parallel_port_slave_readdata_from_sa) &
    ({32 {~CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave}} | Addr_Write_MEM_avalon_parallel_port_slave_readdata_from_sa) &
    ({32 {~CPU_data_master_requests_Audio_avalon_audio_slave}} | Audio_avalon_audio_slave_readdata_from_sa) &
    ({32 {~CPU_data_master_requests_CPU_jtag_debug_module}} | CPU_jtag_debug_module_readdata_from_sa) &
    ({32 {~CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave}} | Data_Read_MEM_avalon_parallel_port_slave_readdata_from_sa) &
    ({32 {~CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave}} | Data_Write_MEM_avalon_parallel_port_slave_readdata_from_sa) &
    ({32 {~CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave}} | registered_CPU_data_master_readdata) &
    ({32 {~CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave}} | Green_LEDs_avalon_parallel_port_slave_readdata_from_sa) &
    ({32 {~CPU_data_master_requests_JTAG_UART_avalon_jtag_slave}} | registered_CPU_data_master_readdata) &
    ({32 {~CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave}} | Out_Ports_avalon_parallel_port_slave_readdata_from_sa) &
    ({32 {~CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave}} | Pushbuttons_avalon_parallel_port_slave_readdata_from_sa) &
    ({32 {~CPU_data_master_requests_SDRAM_s1}} | registered_CPU_data_master_readdata) &
    ({32 {~CPU_data_master_requests_TIMER_s1}} | TIMER_s1_readdata_from_sa);

  //actual waitrequest port, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_data_master_waitrequest <= ~0;
      else 
        CPU_data_master_waitrequest <= ~((~(CPU_data_master_read | CPU_data_master_write))? 0: (CPU_data_master_run & CPU_data_master_waitrequest));
    end


  //irq assign, which is an e_assign
  assign CPU_data_master_irq = {1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    TIMER_s1_irq_from_sa,
    Data_Read_MEM_avalon_parallel_port_slave_irq_from_sa,
    Pushbuttons_avalon_parallel_port_slave_irq_from_sa,
    Audio_avalon_audio_slave_irq_from_sa,
    JTAG_UART_avalon_jtag_slave_irq_from_sa};

  //unpredictable registered wait state incoming data, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          registered_CPU_data_master_readdata <= 0;
      else 
        registered_CPU_data_master_readdata <= p1_registered_CPU_data_master_readdata;
    end


  //registered readdata mux, which is an e_mux
  assign p1_registered_CPU_data_master_readdata = ({32 {~CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave}} | External_Clocks_avalon_external_clocks_slave_readdata_from_sa) &
    ({32 {~CPU_data_master_requests_JTAG_UART_avalon_jtag_slave}} | JTAG_UART_avalon_jtag_slave_readdata_from_sa) &
    ({32 {~CPU_data_master_requests_SDRAM_s1}} | {SDRAM_s1_readdata_from_sa[15 : 0],
    dbs_16_reg_segment_0});

  //no_byte_enables_and_last_term, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_data_master_no_byte_enables_and_last_term <= 0;
      else 
        CPU_data_master_no_byte_enables_and_last_term <= last_dbs_term_and_run;
    end


  //compute the last dbs term, which is an e_mux
  assign last_dbs_term_and_run = (CPU_data_master_dbs_address == 2'b10) & CPU_data_master_write & !CPU_data_master_byteenable_SDRAM_s1;

  //pre dbs count enable, which is an e_mux
  assign pre_dbs_count_enable = (((~CPU_data_master_no_byte_enables_and_last_term) & CPU_data_master_requests_SDRAM_s1 & CPU_data_master_write & !CPU_data_master_byteenable_SDRAM_s1)) |
    CPU_data_master_read_data_valid_SDRAM_s1 |
    (CPU_data_master_granted_SDRAM_s1 & CPU_data_master_write & 1 & 1 & ~SDRAM_s1_waitrequest_from_sa);

  //input to dbs-16 stored 0, which is an e_mux
  assign p1_dbs_16_reg_segment_0 = SDRAM_s1_readdata_from_sa;

  //dbs register for dbs-16 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_16_reg_segment_0 <= 0;
      else if (dbs_count_enable & ((CPU_data_master_dbs_address[1]) == 0))
          dbs_16_reg_segment_0 <= p1_dbs_16_reg_segment_0;
    end


  //mux write dbs 1, which is an e_mux
  assign CPU_data_master_dbs_write_16 = (CPU_data_master_dbs_address[1])? CPU_data_master_writedata[31 : 16] :
    CPU_data_master_writedata[15 : 0];

  //dbs count increment, which is an e_mux
  assign CPU_data_master_dbs_increment = (CPU_data_master_requests_SDRAM_s1)? 2 :
    0;

  //dbs counter overflow, which is an e_assign
  assign dbs_counter_overflow = CPU_data_master_dbs_address[1] & !(next_dbs_address[1]);

  //next master address, which is an e_assign
  assign next_dbs_address = CPU_data_master_dbs_address + CPU_data_master_dbs_increment;

  //dbs count enable, which is an e_mux
  assign dbs_count_enable = pre_dbs_count_enable &
    (~(CPU_data_master_requests_SDRAM_s1 & ~CPU_data_master_waitrequest));

  //dbs counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_data_master_dbs_address <= 0;
      else if (dbs_count_enable)
          CPU_data_master_dbs_address <= next_dbs_address;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module CPU_instruction_master_arbitrator (
                                           // inputs:
                                            CPU_instruction_master_address,
                                            CPU_instruction_master_granted_CPU_jtag_debug_module,
                                            CPU_instruction_master_granted_SDRAM_s1,
                                            CPU_instruction_master_qualified_request_CPU_jtag_debug_module,
                                            CPU_instruction_master_qualified_request_SDRAM_s1,
                                            CPU_instruction_master_read,
                                            CPU_instruction_master_read_data_valid_CPU_jtag_debug_module,
                                            CPU_instruction_master_read_data_valid_SDRAM_s1,
                                            CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register,
                                            CPU_instruction_master_requests_CPU_jtag_debug_module,
                                            CPU_instruction_master_requests_SDRAM_s1,
                                            CPU_jtag_debug_module_readdata_from_sa,
                                            SDRAM_s1_readdata_from_sa,
                                            SDRAM_s1_waitrequest_from_sa,
                                            clk,
                                            d1_CPU_jtag_debug_module_end_xfer,
                                            d1_SDRAM_s1_end_xfer,
                                            reset_n,

                                           // outputs:
                                            CPU_instruction_master_address_to_slave,
                                            CPU_instruction_master_dbs_address,
                                            CPU_instruction_master_latency_counter,
                                            CPU_instruction_master_readdata,
                                            CPU_instruction_master_readdatavalid,
                                            CPU_instruction_master_waitrequest
                                         )
;

  output  [ 24: 0] CPU_instruction_master_address_to_slave;
  output  [  1: 0] CPU_instruction_master_dbs_address;
  output           CPU_instruction_master_latency_counter;
  output  [ 31: 0] CPU_instruction_master_readdata;
  output           CPU_instruction_master_readdatavalid;
  output           CPU_instruction_master_waitrequest;
  input   [ 24: 0] CPU_instruction_master_address;
  input            CPU_instruction_master_granted_CPU_jtag_debug_module;
  input            CPU_instruction_master_granted_SDRAM_s1;
  input            CPU_instruction_master_qualified_request_CPU_jtag_debug_module;
  input            CPU_instruction_master_qualified_request_SDRAM_s1;
  input            CPU_instruction_master_read;
  input            CPU_instruction_master_read_data_valid_CPU_jtag_debug_module;
  input            CPU_instruction_master_read_data_valid_SDRAM_s1;
  input            CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register;
  input            CPU_instruction_master_requests_CPU_jtag_debug_module;
  input            CPU_instruction_master_requests_SDRAM_s1;
  input   [ 31: 0] CPU_jtag_debug_module_readdata_from_sa;
  input   [ 15: 0] SDRAM_s1_readdata_from_sa;
  input            SDRAM_s1_waitrequest_from_sa;
  input            clk;
  input            d1_CPU_jtag_debug_module_end_xfer;
  input            d1_SDRAM_s1_end_xfer;
  input            reset_n;

  reg     [ 24: 0] CPU_instruction_master_address_last_time;
  wire    [ 24: 0] CPU_instruction_master_address_to_slave;
  reg     [  1: 0] CPU_instruction_master_dbs_address;
  wire    [  1: 0] CPU_instruction_master_dbs_increment;
  reg     [  1: 0] CPU_instruction_master_dbs_rdv_counter;
  wire    [  1: 0] CPU_instruction_master_dbs_rdv_counter_inc;
  wire             CPU_instruction_master_is_granted_some_slave;
  reg              CPU_instruction_master_latency_counter;
  wire    [  1: 0] CPU_instruction_master_next_dbs_rdv_counter;
  reg              CPU_instruction_master_read_but_no_slave_selected;
  reg              CPU_instruction_master_read_last_time;
  wire    [ 31: 0] CPU_instruction_master_readdata;
  wire             CPU_instruction_master_readdatavalid;
  wire             CPU_instruction_master_run;
  wire             CPU_instruction_master_waitrequest;
  reg              active_and_waiting_last_time;
  wire             dbs_count_enable;
  wire             dbs_counter_overflow;
  reg     [ 15: 0] dbs_latent_16_reg_segment_0;
  wire             dbs_rdv_count_enable;
  wire             dbs_rdv_counter_overflow;
  wire             latency_load_value;
  wire    [  1: 0] next_dbs_address;
  wire             p1_CPU_instruction_master_latency_counter;
  wire    [ 15: 0] p1_dbs_latent_16_reg_segment_0;
  wire             pre_dbs_count_enable;
  wire             pre_flush_CPU_instruction_master_readdatavalid;
  wire             r_0;
  wire             r_1;
  wire             r_2;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (CPU_instruction_master_qualified_request_CPU_jtag_debug_module | ~CPU_instruction_master_requests_CPU_jtag_debug_module) & (CPU_instruction_master_granted_CPU_jtag_debug_module | ~CPU_instruction_master_qualified_request_CPU_jtag_debug_module);

  //cascaded wait assignment, which is an e_assign
  assign CPU_instruction_master_run = r_0 & r_1 & r_2;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = ~CPU_instruction_master_qualified_request_CPU_jtag_debug_module | ~CPU_instruction_master_read | (1 & ~d1_CPU_jtag_debug_module_end_xfer & CPU_instruction_master_read);

  //r_2 master_run cascaded wait assignment, which is an e_assign
  assign r_2 = 1 & (CPU_instruction_master_qualified_request_SDRAM_s1 | ~CPU_instruction_master_requests_SDRAM_s1) & (CPU_instruction_master_granted_SDRAM_s1 | ~CPU_instruction_master_qualified_request_SDRAM_s1) & ((~CPU_instruction_master_qualified_request_SDRAM_s1 | ~CPU_instruction_master_read | (1 & ~SDRAM_s1_waitrequest_from_sa & (CPU_instruction_master_dbs_address[1]) & CPU_instruction_master_read)));

  //optimize select-logic by passing only those address bits which matter.
  assign CPU_instruction_master_address_to_slave = CPU_instruction_master_address[24 : 0];

  //CPU_instruction_master_read_but_no_slave_selected assignment, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_instruction_master_read_but_no_slave_selected <= 0;
      else 
        CPU_instruction_master_read_but_no_slave_selected <= CPU_instruction_master_read & CPU_instruction_master_run & ~CPU_instruction_master_is_granted_some_slave;
    end


  //some slave is getting selected, which is an e_mux
  assign CPU_instruction_master_is_granted_some_slave = CPU_instruction_master_granted_CPU_jtag_debug_module |
    CPU_instruction_master_granted_SDRAM_s1;

  //latent slave read data valids which may be flushed, which is an e_mux
  assign pre_flush_CPU_instruction_master_readdatavalid = CPU_instruction_master_read_data_valid_SDRAM_s1 & dbs_rdv_counter_overflow;

  //latent slave read data valid which is not flushed, which is an e_mux
  assign CPU_instruction_master_readdatavalid = CPU_instruction_master_read_but_no_slave_selected |
    pre_flush_CPU_instruction_master_readdatavalid |
    CPU_instruction_master_read_data_valid_CPU_jtag_debug_module |
    CPU_instruction_master_read_but_no_slave_selected |
    pre_flush_CPU_instruction_master_readdatavalid;

  //CPU/instruction_master readdata mux, which is an e_mux
  assign CPU_instruction_master_readdata = ({32 {~(CPU_instruction_master_qualified_request_CPU_jtag_debug_module & CPU_instruction_master_read)}} | CPU_jtag_debug_module_readdata_from_sa) &
    ({32 {~CPU_instruction_master_read_data_valid_SDRAM_s1}} | {SDRAM_s1_readdata_from_sa[15 : 0],
    dbs_latent_16_reg_segment_0});

  //actual waitrequest port, which is an e_assign
  assign CPU_instruction_master_waitrequest = ~CPU_instruction_master_run;

  //latent max counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_instruction_master_latency_counter <= 0;
      else 
        CPU_instruction_master_latency_counter <= p1_CPU_instruction_master_latency_counter;
    end


  //latency counter load mux, which is an e_mux
  assign p1_CPU_instruction_master_latency_counter = ((CPU_instruction_master_run & CPU_instruction_master_read))? latency_load_value :
    (CPU_instruction_master_latency_counter)? CPU_instruction_master_latency_counter - 1 :
    0;

  //read latency load values, which is an e_mux
  assign latency_load_value = 0;

  //input to latent dbs-16 stored 0, which is an e_mux
  assign p1_dbs_latent_16_reg_segment_0 = SDRAM_s1_readdata_from_sa;

  //dbs register for latent dbs-16 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_latent_16_reg_segment_0 <= 0;
      else if (dbs_rdv_count_enable & ((CPU_instruction_master_dbs_rdv_counter[1]) == 0))
          dbs_latent_16_reg_segment_0 <= p1_dbs_latent_16_reg_segment_0;
    end


  //dbs count increment, which is an e_mux
  assign CPU_instruction_master_dbs_increment = (CPU_instruction_master_requests_SDRAM_s1)? 2 :
    0;

  //dbs counter overflow, which is an e_assign
  assign dbs_counter_overflow = CPU_instruction_master_dbs_address[1] & !(next_dbs_address[1]);

  //next master address, which is an e_assign
  assign next_dbs_address = CPU_instruction_master_dbs_address + CPU_instruction_master_dbs_increment;

  //dbs count enable, which is an e_mux
  assign dbs_count_enable = pre_dbs_count_enable;

  //dbs counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_instruction_master_dbs_address <= 0;
      else if (dbs_count_enable)
          CPU_instruction_master_dbs_address <= next_dbs_address;
    end


  //p1 dbs rdv counter, which is an e_assign
  assign CPU_instruction_master_next_dbs_rdv_counter = CPU_instruction_master_dbs_rdv_counter + CPU_instruction_master_dbs_rdv_counter_inc;

  //CPU_instruction_master_rdv_inc_mux, which is an e_mux
  assign CPU_instruction_master_dbs_rdv_counter_inc = 2;

  //master any slave rdv, which is an e_mux
  assign dbs_rdv_count_enable = CPU_instruction_master_read_data_valid_SDRAM_s1;

  //dbs rdv counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_instruction_master_dbs_rdv_counter <= 0;
      else if (dbs_rdv_count_enable)
          CPU_instruction_master_dbs_rdv_counter <= CPU_instruction_master_next_dbs_rdv_counter;
    end


  //dbs rdv counter overflow, which is an e_assign
  assign dbs_rdv_counter_overflow = CPU_instruction_master_dbs_rdv_counter[1] & ~CPU_instruction_master_next_dbs_rdv_counter[1];

  //pre dbs count enable, which is an e_mux
  assign pre_dbs_count_enable = CPU_instruction_master_granted_SDRAM_s1 & CPU_instruction_master_read & 1 & 1 & ~SDRAM_s1_waitrequest_from_sa;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //CPU_instruction_master_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_instruction_master_address_last_time <= 0;
      else 
        CPU_instruction_master_address_last_time <= CPU_instruction_master_address;
    end


  //CPU/instruction_master waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= CPU_instruction_master_waitrequest & (CPU_instruction_master_read);
    end


  //CPU_instruction_master_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (CPU_instruction_master_address != CPU_instruction_master_address_last_time))
        begin
          $write("%0d ns: CPU_instruction_master_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //CPU_instruction_master_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_instruction_master_read_last_time <= 0;
      else 
        CPU_instruction_master_read_last_time <= CPU_instruction_master_read;
    end


  //CPU_instruction_master_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (CPU_instruction_master_read != CPU_instruction_master_read_last_time))
        begin
          $write("%0d ns: CPU_instruction_master_read did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module CPU_fpoint_s1_arbitrator (
                                  // inputs:
                                   CPU_custom_instruction_master_multi_clk_en,
                                   CPU_custom_instruction_master_multi_dataa,
                                   CPU_custom_instruction_master_multi_datab,
                                   CPU_custom_instruction_master_multi_n,
                                   CPU_custom_instruction_master_start_CPU_fpoint_s1,
                                   CPU_fpoint_s1_done,
                                   CPU_fpoint_s1_result,
                                   CPU_fpoint_s1_select,
                                   clk,
                                   reset_n,

                                  // outputs:
                                   CPU_fpoint_s1_clk_en,
                                   CPU_fpoint_s1_dataa,
                                   CPU_fpoint_s1_datab,
                                   CPU_fpoint_s1_done_from_sa,
                                   CPU_fpoint_s1_n,
                                   CPU_fpoint_s1_reset,
                                   CPU_fpoint_s1_result_from_sa,
                                   CPU_fpoint_s1_start
                                )
;

  output           CPU_fpoint_s1_clk_en;
  output  [ 31: 0] CPU_fpoint_s1_dataa;
  output  [ 31: 0] CPU_fpoint_s1_datab;
  output           CPU_fpoint_s1_done_from_sa;
  output  [  1: 0] CPU_fpoint_s1_n;
  output           CPU_fpoint_s1_reset;
  output  [ 31: 0] CPU_fpoint_s1_result_from_sa;
  output           CPU_fpoint_s1_start;
  input            CPU_custom_instruction_master_multi_clk_en;
  input   [ 31: 0] CPU_custom_instruction_master_multi_dataa;
  input   [ 31: 0] CPU_custom_instruction_master_multi_datab;
  input   [  7: 0] CPU_custom_instruction_master_multi_n;
  input            CPU_custom_instruction_master_start_CPU_fpoint_s1;
  input            CPU_fpoint_s1_done;
  input   [ 31: 0] CPU_fpoint_s1_result;
  input            CPU_fpoint_s1_select;
  input            clk;
  input            reset_n;

  wire             CPU_fpoint_s1_clk_en;
  wire    [ 31: 0] CPU_fpoint_s1_dataa;
  wire    [ 31: 0] CPU_fpoint_s1_datab;
  wire             CPU_fpoint_s1_done_from_sa;
  wire    [  1: 0] CPU_fpoint_s1_n;
  wire             CPU_fpoint_s1_reset;
  wire    [ 31: 0] CPU_fpoint_s1_result_from_sa;
  wire             CPU_fpoint_s1_start;
  assign CPU_fpoint_s1_clk_en = CPU_custom_instruction_master_multi_clk_en;
  assign CPU_fpoint_s1_dataa = CPU_custom_instruction_master_multi_dataa;
  assign CPU_fpoint_s1_datab = CPU_custom_instruction_master_multi_datab;
  assign CPU_fpoint_s1_n = CPU_custom_instruction_master_multi_n;
  assign CPU_fpoint_s1_start = CPU_custom_instruction_master_start_CPU_fpoint_s1;
  //assign CPU_fpoint_s1_result_from_sa = CPU_fpoint_s1_result so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign CPU_fpoint_s1_result_from_sa = CPU_fpoint_s1_result;

  //assign CPU_fpoint_s1_done_from_sa = CPU_fpoint_s1_done so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign CPU_fpoint_s1_done_from_sa = CPU_fpoint_s1_done;

  //CPU_fpoint/s1 local reset_n, which is an e_assign
  assign CPU_fpoint_s1_reset = ~reset_n;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Data_Read_MEM_avalon_parallel_port_slave_arbitrator (
                                                             // inputs:
                                                              CPU_data_master_address_to_slave,
                                                              CPU_data_master_byteenable,
                                                              CPU_data_master_read,
                                                              CPU_data_master_waitrequest,
                                                              CPU_data_master_write,
                                                              CPU_data_master_writedata,
                                                              Data_Read_MEM_avalon_parallel_port_slave_irq,
                                                              Data_Read_MEM_avalon_parallel_port_slave_readdata,
                                                              clk,
                                                              reset_n,

                                                             // outputs:
                                                              CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave,
                                                              CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave,
                                                              CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave,
                                                              CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave,
                                                              Data_Read_MEM_avalon_parallel_port_slave_address,
                                                              Data_Read_MEM_avalon_parallel_port_slave_byteenable,
                                                              Data_Read_MEM_avalon_parallel_port_slave_chipselect,
                                                              Data_Read_MEM_avalon_parallel_port_slave_irq_from_sa,
                                                              Data_Read_MEM_avalon_parallel_port_slave_read,
                                                              Data_Read_MEM_avalon_parallel_port_slave_readdata_from_sa,
                                                              Data_Read_MEM_avalon_parallel_port_slave_reset,
                                                              Data_Read_MEM_avalon_parallel_port_slave_write,
                                                              Data_Read_MEM_avalon_parallel_port_slave_writedata,
                                                              d1_Data_Read_MEM_avalon_parallel_port_slave_end_xfer,
                                                              registered_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave
                                                           )
;

  output           CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave;
  output           CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave;
  output           CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave;
  output           CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave;
  output  [  1: 0] Data_Read_MEM_avalon_parallel_port_slave_address;
  output  [  3: 0] Data_Read_MEM_avalon_parallel_port_slave_byteenable;
  output           Data_Read_MEM_avalon_parallel_port_slave_chipselect;
  output           Data_Read_MEM_avalon_parallel_port_slave_irq_from_sa;
  output           Data_Read_MEM_avalon_parallel_port_slave_read;
  output  [ 31: 0] Data_Read_MEM_avalon_parallel_port_slave_readdata_from_sa;
  output           Data_Read_MEM_avalon_parallel_port_slave_reset;
  output           Data_Read_MEM_avalon_parallel_port_slave_write;
  output  [ 31: 0] Data_Read_MEM_avalon_parallel_port_slave_writedata;
  output           d1_Data_Read_MEM_avalon_parallel_port_slave_end_xfer;
  output           registered_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave;
  input   [ 24: 0] CPU_data_master_address_to_slave;
  input   [  3: 0] CPU_data_master_byteenable;
  input            CPU_data_master_read;
  input            CPU_data_master_waitrequest;
  input            CPU_data_master_write;
  input   [ 31: 0] CPU_data_master_writedata;
  input            Data_Read_MEM_avalon_parallel_port_slave_irq;
  input   [ 31: 0] Data_Read_MEM_avalon_parallel_port_slave_readdata;
  input            clk;
  input            reset_n;

  wire             CPU_data_master_arbiterlock;
  wire             CPU_data_master_arbiterlock2;
  wire             CPU_data_master_continuerequest;
  wire             CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave;
  reg              CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register;
  wire             CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register_in;
  wire             CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_saved_grant_Data_Read_MEM_avalon_parallel_port_slave;
  wire    [  1: 0] Data_Read_MEM_avalon_parallel_port_slave_address;
  wire             Data_Read_MEM_avalon_parallel_port_slave_allgrants;
  wire             Data_Read_MEM_avalon_parallel_port_slave_allow_new_arb_cycle;
  wire             Data_Read_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant;
  wire             Data_Read_MEM_avalon_parallel_port_slave_any_continuerequest;
  wire             Data_Read_MEM_avalon_parallel_port_slave_arb_counter_enable;
  reg     [  1: 0] Data_Read_MEM_avalon_parallel_port_slave_arb_share_counter;
  wire    [  1: 0] Data_Read_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;
  wire    [  1: 0] Data_Read_MEM_avalon_parallel_port_slave_arb_share_set_values;
  wire             Data_Read_MEM_avalon_parallel_port_slave_beginbursttransfer_internal;
  wire             Data_Read_MEM_avalon_parallel_port_slave_begins_xfer;
  wire    [  3: 0] Data_Read_MEM_avalon_parallel_port_slave_byteenable;
  wire             Data_Read_MEM_avalon_parallel_port_slave_chipselect;
  wire             Data_Read_MEM_avalon_parallel_port_slave_end_xfer;
  wire             Data_Read_MEM_avalon_parallel_port_slave_firsttransfer;
  wire             Data_Read_MEM_avalon_parallel_port_slave_grant_vector;
  wire             Data_Read_MEM_avalon_parallel_port_slave_in_a_read_cycle;
  wire             Data_Read_MEM_avalon_parallel_port_slave_in_a_write_cycle;
  wire             Data_Read_MEM_avalon_parallel_port_slave_irq_from_sa;
  wire             Data_Read_MEM_avalon_parallel_port_slave_master_qreq_vector;
  wire             Data_Read_MEM_avalon_parallel_port_slave_non_bursting_master_requests;
  wire             Data_Read_MEM_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Data_Read_MEM_avalon_parallel_port_slave_readdata_from_sa;
  reg              Data_Read_MEM_avalon_parallel_port_slave_reg_firsttransfer;
  wire             Data_Read_MEM_avalon_parallel_port_slave_reset;
  reg              Data_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable;
  wire             Data_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable2;
  wire             Data_Read_MEM_avalon_parallel_port_slave_unreg_firsttransfer;
  wire             Data_Read_MEM_avalon_parallel_port_slave_waits_for_read;
  wire             Data_Read_MEM_avalon_parallel_port_slave_waits_for_write;
  wire             Data_Read_MEM_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Data_Read_MEM_avalon_parallel_port_slave_writedata;
  reg              d1_Data_Read_MEM_avalon_parallel_port_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Data_Read_MEM_avalon_parallel_port_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register;
  wire             registered_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave;
  wire    [ 24: 0] shifted_address_to_Data_Read_MEM_avalon_parallel_port_slave_from_CPU_data_master;
  wire             wait_for_Data_Read_MEM_avalon_parallel_port_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~Data_Read_MEM_avalon_parallel_port_slave_end_xfer;
    end


  assign Data_Read_MEM_avalon_parallel_port_slave_begins_xfer = ~d1_reasons_to_wait & ((CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave));
  //assign Data_Read_MEM_avalon_parallel_port_slave_readdata_from_sa = Data_Read_MEM_avalon_parallel_port_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Data_Read_MEM_avalon_parallel_port_slave_readdata_from_sa = Data_Read_MEM_avalon_parallel_port_slave_readdata;

  assign CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave = ({CPU_data_master_address_to_slave[24 : 4] , 4'b0} == 25'h1001090) & (CPU_data_master_read | CPU_data_master_write);
  //registered rdv signal_name registered_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave assignment, which is an e_assign
  assign registered_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave = CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register_in;

  //Data_Read_MEM_avalon_parallel_port_slave_arb_share_counter set values, which is an e_mux
  assign Data_Read_MEM_avalon_parallel_port_slave_arb_share_set_values = 1;

  //Data_Read_MEM_avalon_parallel_port_slave_non_bursting_master_requests mux, which is an e_mux
  assign Data_Read_MEM_avalon_parallel_port_slave_non_bursting_master_requests = CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave;

  //Data_Read_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign Data_Read_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant = 0;

  //Data_Read_MEM_avalon_parallel_port_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign Data_Read_MEM_avalon_parallel_port_slave_arb_share_counter_next_value = Data_Read_MEM_avalon_parallel_port_slave_firsttransfer ? (Data_Read_MEM_avalon_parallel_port_slave_arb_share_set_values - 1) : |Data_Read_MEM_avalon_parallel_port_slave_arb_share_counter ? (Data_Read_MEM_avalon_parallel_port_slave_arb_share_counter - 1) : 0;

  //Data_Read_MEM_avalon_parallel_port_slave_allgrants all slave grants, which is an e_mux
  assign Data_Read_MEM_avalon_parallel_port_slave_allgrants = |Data_Read_MEM_avalon_parallel_port_slave_grant_vector;

  //Data_Read_MEM_avalon_parallel_port_slave_end_xfer assignment, which is an e_assign
  assign Data_Read_MEM_avalon_parallel_port_slave_end_xfer = ~(Data_Read_MEM_avalon_parallel_port_slave_waits_for_read | Data_Read_MEM_avalon_parallel_port_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_Data_Read_MEM_avalon_parallel_port_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Data_Read_MEM_avalon_parallel_port_slave = Data_Read_MEM_avalon_parallel_port_slave_end_xfer & (~Data_Read_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Data_Read_MEM_avalon_parallel_port_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign Data_Read_MEM_avalon_parallel_port_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_Data_Read_MEM_avalon_parallel_port_slave & Data_Read_MEM_avalon_parallel_port_slave_allgrants) | (end_xfer_arb_share_counter_term_Data_Read_MEM_avalon_parallel_port_slave & ~Data_Read_MEM_avalon_parallel_port_slave_non_bursting_master_requests);

  //Data_Read_MEM_avalon_parallel_port_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Data_Read_MEM_avalon_parallel_port_slave_arb_share_counter <= 0;
      else if (Data_Read_MEM_avalon_parallel_port_slave_arb_counter_enable)
          Data_Read_MEM_avalon_parallel_port_slave_arb_share_counter <= Data_Read_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //Data_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Data_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable <= 0;
      else if ((|Data_Read_MEM_avalon_parallel_port_slave_master_qreq_vector & end_xfer_arb_share_counter_term_Data_Read_MEM_avalon_parallel_port_slave) | (end_xfer_arb_share_counter_term_Data_Read_MEM_avalon_parallel_port_slave & ~Data_Read_MEM_avalon_parallel_port_slave_non_bursting_master_requests))
          Data_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable <= |Data_Read_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //CPU/data_master Data_Read_MEM/avalon_parallel_port_slave arbiterlock, which is an e_assign
  assign CPU_data_master_arbiterlock = Data_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable & CPU_data_master_continuerequest;

  //Data_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Data_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable2 = |Data_Read_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;

  //CPU/data_master Data_Read_MEM/avalon_parallel_port_slave arbiterlock2, which is an e_assign
  assign CPU_data_master_arbiterlock2 = Data_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable2 & CPU_data_master_continuerequest;

  //Data_Read_MEM_avalon_parallel_port_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Data_Read_MEM_avalon_parallel_port_slave_any_continuerequest = 1;

  //CPU_data_master_continuerequest continued request, which is an e_assign
  assign CPU_data_master_continuerequest = 1;

  assign CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave = CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave & ~((CPU_data_master_read & ((|CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register))) | ((~CPU_data_master_waitrequest) & CPU_data_master_write));
  //CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register_in = CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave & CPU_data_master_read & ~Data_Read_MEM_avalon_parallel_port_slave_waits_for_read & ~(|CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register);

  //shift register p1 CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register = {CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register, CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register_in};

  //CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register <= 0;
      else 
        CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register <= p1_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register;
    end


  //local readdatavalid CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave, which is an e_mux
  assign CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave = CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave_shift_register;

  //Data_Read_MEM_avalon_parallel_port_slave_writedata mux, which is an e_mux
  assign Data_Read_MEM_avalon_parallel_port_slave_writedata = CPU_data_master_writedata;

  //master is always granted when requested
  assign CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave = CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave;

  //CPU/data_master saved-grant Data_Read_MEM/avalon_parallel_port_slave, which is an e_assign
  assign CPU_data_master_saved_grant_Data_Read_MEM_avalon_parallel_port_slave = CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave;

  //allow new arb cycle for Data_Read_MEM/avalon_parallel_port_slave, which is an e_assign
  assign Data_Read_MEM_avalon_parallel_port_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Data_Read_MEM_avalon_parallel_port_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Data_Read_MEM_avalon_parallel_port_slave_master_qreq_vector = 1;

  //~Data_Read_MEM_avalon_parallel_port_slave_reset assignment, which is an e_assign
  assign Data_Read_MEM_avalon_parallel_port_slave_reset = ~reset_n;

  assign Data_Read_MEM_avalon_parallel_port_slave_chipselect = CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave;
  //Data_Read_MEM_avalon_parallel_port_slave_firsttransfer first transaction, which is an e_assign
  assign Data_Read_MEM_avalon_parallel_port_slave_firsttransfer = Data_Read_MEM_avalon_parallel_port_slave_begins_xfer ? Data_Read_MEM_avalon_parallel_port_slave_unreg_firsttransfer : Data_Read_MEM_avalon_parallel_port_slave_reg_firsttransfer;

  //Data_Read_MEM_avalon_parallel_port_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign Data_Read_MEM_avalon_parallel_port_slave_unreg_firsttransfer = ~(Data_Read_MEM_avalon_parallel_port_slave_slavearbiterlockenable & Data_Read_MEM_avalon_parallel_port_slave_any_continuerequest);

  //Data_Read_MEM_avalon_parallel_port_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Data_Read_MEM_avalon_parallel_port_slave_reg_firsttransfer <= 1'b1;
      else if (Data_Read_MEM_avalon_parallel_port_slave_begins_xfer)
          Data_Read_MEM_avalon_parallel_port_slave_reg_firsttransfer <= Data_Read_MEM_avalon_parallel_port_slave_unreg_firsttransfer;
    end


  //Data_Read_MEM_avalon_parallel_port_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Data_Read_MEM_avalon_parallel_port_slave_beginbursttransfer_internal = Data_Read_MEM_avalon_parallel_port_slave_begins_xfer;

  //Data_Read_MEM_avalon_parallel_port_slave_read assignment, which is an e_mux
  assign Data_Read_MEM_avalon_parallel_port_slave_read = CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave & CPU_data_master_read;

  //Data_Read_MEM_avalon_parallel_port_slave_write assignment, which is an e_mux
  assign Data_Read_MEM_avalon_parallel_port_slave_write = CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave & CPU_data_master_write;

  assign shifted_address_to_Data_Read_MEM_avalon_parallel_port_slave_from_CPU_data_master = CPU_data_master_address_to_slave;
  //Data_Read_MEM_avalon_parallel_port_slave_address mux, which is an e_mux
  assign Data_Read_MEM_avalon_parallel_port_slave_address = shifted_address_to_Data_Read_MEM_avalon_parallel_port_slave_from_CPU_data_master >> 2;

  //d1_Data_Read_MEM_avalon_parallel_port_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Data_Read_MEM_avalon_parallel_port_slave_end_xfer <= 1;
      else 
        d1_Data_Read_MEM_avalon_parallel_port_slave_end_xfer <= Data_Read_MEM_avalon_parallel_port_slave_end_xfer;
    end


  //Data_Read_MEM_avalon_parallel_port_slave_waits_for_read in a cycle, which is an e_mux
  assign Data_Read_MEM_avalon_parallel_port_slave_waits_for_read = Data_Read_MEM_avalon_parallel_port_slave_in_a_read_cycle & 0;

  //Data_Read_MEM_avalon_parallel_port_slave_in_a_read_cycle assignment, which is an e_assign
  assign Data_Read_MEM_avalon_parallel_port_slave_in_a_read_cycle = CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave & CPU_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Data_Read_MEM_avalon_parallel_port_slave_in_a_read_cycle;

  //Data_Read_MEM_avalon_parallel_port_slave_waits_for_write in a cycle, which is an e_mux
  assign Data_Read_MEM_avalon_parallel_port_slave_waits_for_write = Data_Read_MEM_avalon_parallel_port_slave_in_a_write_cycle & 0;

  //Data_Read_MEM_avalon_parallel_port_slave_in_a_write_cycle assignment, which is an e_assign
  assign Data_Read_MEM_avalon_parallel_port_slave_in_a_write_cycle = CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave & CPU_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Data_Read_MEM_avalon_parallel_port_slave_in_a_write_cycle;

  assign wait_for_Data_Read_MEM_avalon_parallel_port_slave_counter = 0;
  //Data_Read_MEM_avalon_parallel_port_slave_byteenable byte enable port mux, which is an e_mux
  assign Data_Read_MEM_avalon_parallel_port_slave_byteenable = (CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave)? CPU_data_master_byteenable :
    -1;

  //assign Data_Read_MEM_avalon_parallel_port_slave_irq_from_sa = Data_Read_MEM_avalon_parallel_port_slave_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Data_Read_MEM_avalon_parallel_port_slave_irq_from_sa = Data_Read_MEM_avalon_parallel_port_slave_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Data_Read_MEM/avalon_parallel_port_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Data_Write_MEM_avalon_parallel_port_slave_arbitrator (
                                                              // inputs:
                                                               CPU_data_master_address_to_slave,
                                                               CPU_data_master_byteenable,
                                                               CPU_data_master_read,
                                                               CPU_data_master_waitrequest,
                                                               CPU_data_master_write,
                                                               CPU_data_master_writedata,
                                                               Data_Write_MEM_avalon_parallel_port_slave_readdata,
                                                               clk,
                                                               reset_n,

                                                              // outputs:
                                                               CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave,
                                                               CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave,
                                                               CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave,
                                                               CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave,
                                                               Data_Write_MEM_avalon_parallel_port_slave_address,
                                                               Data_Write_MEM_avalon_parallel_port_slave_byteenable,
                                                               Data_Write_MEM_avalon_parallel_port_slave_chipselect,
                                                               Data_Write_MEM_avalon_parallel_port_slave_read,
                                                               Data_Write_MEM_avalon_parallel_port_slave_readdata_from_sa,
                                                               Data_Write_MEM_avalon_parallel_port_slave_reset,
                                                               Data_Write_MEM_avalon_parallel_port_slave_write,
                                                               Data_Write_MEM_avalon_parallel_port_slave_writedata,
                                                               d1_Data_Write_MEM_avalon_parallel_port_slave_end_xfer,
                                                               registered_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave
                                                            )
;

  output           CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave;
  output           CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave;
  output           CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave;
  output           CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave;
  output  [  1: 0] Data_Write_MEM_avalon_parallel_port_slave_address;
  output  [  3: 0] Data_Write_MEM_avalon_parallel_port_slave_byteenable;
  output           Data_Write_MEM_avalon_parallel_port_slave_chipselect;
  output           Data_Write_MEM_avalon_parallel_port_slave_read;
  output  [ 31: 0] Data_Write_MEM_avalon_parallel_port_slave_readdata_from_sa;
  output           Data_Write_MEM_avalon_parallel_port_slave_reset;
  output           Data_Write_MEM_avalon_parallel_port_slave_write;
  output  [ 31: 0] Data_Write_MEM_avalon_parallel_port_slave_writedata;
  output           d1_Data_Write_MEM_avalon_parallel_port_slave_end_xfer;
  output           registered_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave;
  input   [ 24: 0] CPU_data_master_address_to_slave;
  input   [  3: 0] CPU_data_master_byteenable;
  input            CPU_data_master_read;
  input            CPU_data_master_waitrequest;
  input            CPU_data_master_write;
  input   [ 31: 0] CPU_data_master_writedata;
  input   [ 31: 0] Data_Write_MEM_avalon_parallel_port_slave_readdata;
  input            clk;
  input            reset_n;

  wire             CPU_data_master_arbiterlock;
  wire             CPU_data_master_arbiterlock2;
  wire             CPU_data_master_continuerequest;
  wire             CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave;
  reg              CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register;
  wire             CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register_in;
  wire             CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_saved_grant_Data_Write_MEM_avalon_parallel_port_slave;
  wire    [  1: 0] Data_Write_MEM_avalon_parallel_port_slave_address;
  wire             Data_Write_MEM_avalon_parallel_port_slave_allgrants;
  wire             Data_Write_MEM_avalon_parallel_port_slave_allow_new_arb_cycle;
  wire             Data_Write_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant;
  wire             Data_Write_MEM_avalon_parallel_port_slave_any_continuerequest;
  wire             Data_Write_MEM_avalon_parallel_port_slave_arb_counter_enable;
  reg     [  1: 0] Data_Write_MEM_avalon_parallel_port_slave_arb_share_counter;
  wire    [  1: 0] Data_Write_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;
  wire    [  1: 0] Data_Write_MEM_avalon_parallel_port_slave_arb_share_set_values;
  wire             Data_Write_MEM_avalon_parallel_port_slave_beginbursttransfer_internal;
  wire             Data_Write_MEM_avalon_parallel_port_slave_begins_xfer;
  wire    [  3: 0] Data_Write_MEM_avalon_parallel_port_slave_byteenable;
  wire             Data_Write_MEM_avalon_parallel_port_slave_chipselect;
  wire             Data_Write_MEM_avalon_parallel_port_slave_end_xfer;
  wire             Data_Write_MEM_avalon_parallel_port_slave_firsttransfer;
  wire             Data_Write_MEM_avalon_parallel_port_slave_grant_vector;
  wire             Data_Write_MEM_avalon_parallel_port_slave_in_a_read_cycle;
  wire             Data_Write_MEM_avalon_parallel_port_slave_in_a_write_cycle;
  wire             Data_Write_MEM_avalon_parallel_port_slave_master_qreq_vector;
  wire             Data_Write_MEM_avalon_parallel_port_slave_non_bursting_master_requests;
  wire             Data_Write_MEM_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Data_Write_MEM_avalon_parallel_port_slave_readdata_from_sa;
  reg              Data_Write_MEM_avalon_parallel_port_slave_reg_firsttransfer;
  wire             Data_Write_MEM_avalon_parallel_port_slave_reset;
  reg              Data_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable;
  wire             Data_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable2;
  wire             Data_Write_MEM_avalon_parallel_port_slave_unreg_firsttransfer;
  wire             Data_Write_MEM_avalon_parallel_port_slave_waits_for_read;
  wire             Data_Write_MEM_avalon_parallel_port_slave_waits_for_write;
  wire             Data_Write_MEM_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Data_Write_MEM_avalon_parallel_port_slave_writedata;
  reg              d1_Data_Write_MEM_avalon_parallel_port_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Data_Write_MEM_avalon_parallel_port_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register;
  wire             registered_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave;
  wire    [ 24: 0] shifted_address_to_Data_Write_MEM_avalon_parallel_port_slave_from_CPU_data_master;
  wire             wait_for_Data_Write_MEM_avalon_parallel_port_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~Data_Write_MEM_avalon_parallel_port_slave_end_xfer;
    end


  assign Data_Write_MEM_avalon_parallel_port_slave_begins_xfer = ~d1_reasons_to_wait & ((CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave));
  //assign Data_Write_MEM_avalon_parallel_port_slave_readdata_from_sa = Data_Write_MEM_avalon_parallel_port_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Data_Write_MEM_avalon_parallel_port_slave_readdata_from_sa = Data_Write_MEM_avalon_parallel_port_slave_readdata;

  assign CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave = ({CPU_data_master_address_to_slave[24 : 4] , 4'b0} == 25'h1001080) & (CPU_data_master_read | CPU_data_master_write);
  //registered rdv signal_name registered_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave assignment, which is an e_assign
  assign registered_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave = CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register_in;

  //Data_Write_MEM_avalon_parallel_port_slave_arb_share_counter set values, which is an e_mux
  assign Data_Write_MEM_avalon_parallel_port_slave_arb_share_set_values = 1;

  //Data_Write_MEM_avalon_parallel_port_slave_non_bursting_master_requests mux, which is an e_mux
  assign Data_Write_MEM_avalon_parallel_port_slave_non_bursting_master_requests = CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave;

  //Data_Write_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign Data_Write_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant = 0;

  //Data_Write_MEM_avalon_parallel_port_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign Data_Write_MEM_avalon_parallel_port_slave_arb_share_counter_next_value = Data_Write_MEM_avalon_parallel_port_slave_firsttransfer ? (Data_Write_MEM_avalon_parallel_port_slave_arb_share_set_values - 1) : |Data_Write_MEM_avalon_parallel_port_slave_arb_share_counter ? (Data_Write_MEM_avalon_parallel_port_slave_arb_share_counter - 1) : 0;

  //Data_Write_MEM_avalon_parallel_port_slave_allgrants all slave grants, which is an e_mux
  assign Data_Write_MEM_avalon_parallel_port_slave_allgrants = |Data_Write_MEM_avalon_parallel_port_slave_grant_vector;

  //Data_Write_MEM_avalon_parallel_port_slave_end_xfer assignment, which is an e_assign
  assign Data_Write_MEM_avalon_parallel_port_slave_end_xfer = ~(Data_Write_MEM_avalon_parallel_port_slave_waits_for_read | Data_Write_MEM_avalon_parallel_port_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_Data_Write_MEM_avalon_parallel_port_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Data_Write_MEM_avalon_parallel_port_slave = Data_Write_MEM_avalon_parallel_port_slave_end_xfer & (~Data_Write_MEM_avalon_parallel_port_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Data_Write_MEM_avalon_parallel_port_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign Data_Write_MEM_avalon_parallel_port_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_Data_Write_MEM_avalon_parallel_port_slave & Data_Write_MEM_avalon_parallel_port_slave_allgrants) | (end_xfer_arb_share_counter_term_Data_Write_MEM_avalon_parallel_port_slave & ~Data_Write_MEM_avalon_parallel_port_slave_non_bursting_master_requests);

  //Data_Write_MEM_avalon_parallel_port_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Data_Write_MEM_avalon_parallel_port_slave_arb_share_counter <= 0;
      else if (Data_Write_MEM_avalon_parallel_port_slave_arb_counter_enable)
          Data_Write_MEM_avalon_parallel_port_slave_arb_share_counter <= Data_Write_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //Data_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Data_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable <= 0;
      else if ((|Data_Write_MEM_avalon_parallel_port_slave_master_qreq_vector & end_xfer_arb_share_counter_term_Data_Write_MEM_avalon_parallel_port_slave) | (end_xfer_arb_share_counter_term_Data_Write_MEM_avalon_parallel_port_slave & ~Data_Write_MEM_avalon_parallel_port_slave_non_bursting_master_requests))
          Data_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable <= |Data_Write_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //CPU/data_master Data_Write_MEM/avalon_parallel_port_slave arbiterlock, which is an e_assign
  assign CPU_data_master_arbiterlock = Data_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable & CPU_data_master_continuerequest;

  //Data_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Data_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable2 = |Data_Write_MEM_avalon_parallel_port_slave_arb_share_counter_next_value;

  //CPU/data_master Data_Write_MEM/avalon_parallel_port_slave arbiterlock2, which is an e_assign
  assign CPU_data_master_arbiterlock2 = Data_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable2 & CPU_data_master_continuerequest;

  //Data_Write_MEM_avalon_parallel_port_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Data_Write_MEM_avalon_parallel_port_slave_any_continuerequest = 1;

  //CPU_data_master_continuerequest continued request, which is an e_assign
  assign CPU_data_master_continuerequest = 1;

  assign CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave = CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave & ~((CPU_data_master_read & ((|CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register))) | ((~CPU_data_master_waitrequest) & CPU_data_master_write));
  //CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register_in = CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave & CPU_data_master_read & ~Data_Write_MEM_avalon_parallel_port_slave_waits_for_read & ~(|CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register);

  //shift register p1 CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register = {CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register, CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register_in};

  //CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register <= 0;
      else 
        CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register <= p1_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register;
    end


  //local readdatavalid CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave, which is an e_mux
  assign CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave = CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave_shift_register;

  //Data_Write_MEM_avalon_parallel_port_slave_writedata mux, which is an e_mux
  assign Data_Write_MEM_avalon_parallel_port_slave_writedata = CPU_data_master_writedata;

  //master is always granted when requested
  assign CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave = CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave;

  //CPU/data_master saved-grant Data_Write_MEM/avalon_parallel_port_slave, which is an e_assign
  assign CPU_data_master_saved_grant_Data_Write_MEM_avalon_parallel_port_slave = CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave;

  //allow new arb cycle for Data_Write_MEM/avalon_parallel_port_slave, which is an e_assign
  assign Data_Write_MEM_avalon_parallel_port_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Data_Write_MEM_avalon_parallel_port_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Data_Write_MEM_avalon_parallel_port_slave_master_qreq_vector = 1;

  //~Data_Write_MEM_avalon_parallel_port_slave_reset assignment, which is an e_assign
  assign Data_Write_MEM_avalon_parallel_port_slave_reset = ~reset_n;

  assign Data_Write_MEM_avalon_parallel_port_slave_chipselect = CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave;
  //Data_Write_MEM_avalon_parallel_port_slave_firsttransfer first transaction, which is an e_assign
  assign Data_Write_MEM_avalon_parallel_port_slave_firsttransfer = Data_Write_MEM_avalon_parallel_port_slave_begins_xfer ? Data_Write_MEM_avalon_parallel_port_slave_unreg_firsttransfer : Data_Write_MEM_avalon_parallel_port_slave_reg_firsttransfer;

  //Data_Write_MEM_avalon_parallel_port_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign Data_Write_MEM_avalon_parallel_port_slave_unreg_firsttransfer = ~(Data_Write_MEM_avalon_parallel_port_slave_slavearbiterlockenable & Data_Write_MEM_avalon_parallel_port_slave_any_continuerequest);

  //Data_Write_MEM_avalon_parallel_port_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Data_Write_MEM_avalon_parallel_port_slave_reg_firsttransfer <= 1'b1;
      else if (Data_Write_MEM_avalon_parallel_port_slave_begins_xfer)
          Data_Write_MEM_avalon_parallel_port_slave_reg_firsttransfer <= Data_Write_MEM_avalon_parallel_port_slave_unreg_firsttransfer;
    end


  //Data_Write_MEM_avalon_parallel_port_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Data_Write_MEM_avalon_parallel_port_slave_beginbursttransfer_internal = Data_Write_MEM_avalon_parallel_port_slave_begins_xfer;

  //Data_Write_MEM_avalon_parallel_port_slave_read assignment, which is an e_mux
  assign Data_Write_MEM_avalon_parallel_port_slave_read = CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave & CPU_data_master_read;

  //Data_Write_MEM_avalon_parallel_port_slave_write assignment, which is an e_mux
  assign Data_Write_MEM_avalon_parallel_port_slave_write = CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave & CPU_data_master_write;

  assign shifted_address_to_Data_Write_MEM_avalon_parallel_port_slave_from_CPU_data_master = CPU_data_master_address_to_slave;
  //Data_Write_MEM_avalon_parallel_port_slave_address mux, which is an e_mux
  assign Data_Write_MEM_avalon_parallel_port_slave_address = shifted_address_to_Data_Write_MEM_avalon_parallel_port_slave_from_CPU_data_master >> 2;

  //d1_Data_Write_MEM_avalon_parallel_port_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Data_Write_MEM_avalon_parallel_port_slave_end_xfer <= 1;
      else 
        d1_Data_Write_MEM_avalon_parallel_port_slave_end_xfer <= Data_Write_MEM_avalon_parallel_port_slave_end_xfer;
    end


  //Data_Write_MEM_avalon_parallel_port_slave_waits_for_read in a cycle, which is an e_mux
  assign Data_Write_MEM_avalon_parallel_port_slave_waits_for_read = Data_Write_MEM_avalon_parallel_port_slave_in_a_read_cycle & 0;

  //Data_Write_MEM_avalon_parallel_port_slave_in_a_read_cycle assignment, which is an e_assign
  assign Data_Write_MEM_avalon_parallel_port_slave_in_a_read_cycle = CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave & CPU_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Data_Write_MEM_avalon_parallel_port_slave_in_a_read_cycle;

  //Data_Write_MEM_avalon_parallel_port_slave_waits_for_write in a cycle, which is an e_mux
  assign Data_Write_MEM_avalon_parallel_port_slave_waits_for_write = Data_Write_MEM_avalon_parallel_port_slave_in_a_write_cycle & 0;

  //Data_Write_MEM_avalon_parallel_port_slave_in_a_write_cycle assignment, which is an e_assign
  assign Data_Write_MEM_avalon_parallel_port_slave_in_a_write_cycle = CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave & CPU_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Data_Write_MEM_avalon_parallel_port_slave_in_a_write_cycle;

  assign wait_for_Data_Write_MEM_avalon_parallel_port_slave_counter = 0;
  //Data_Write_MEM_avalon_parallel_port_slave_byteenable byte enable port mux, which is an e_mux
  assign Data_Write_MEM_avalon_parallel_port_slave_byteenable = (CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave)? CPU_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Data_Write_MEM/avalon_parallel_port_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module External_Clocks_avalon_external_clocks_slave_arbitrator (
                                                                 // inputs:
                                                                  CPU_data_master_address_to_slave,
                                                                  CPU_data_master_byteenable,
                                                                  CPU_data_master_read,
                                                                  CPU_data_master_waitrequest,
                                                                  CPU_data_master_write,
                                                                  CPU_data_master_writedata,
                                                                  External_Clocks_avalon_external_clocks_slave_readdata,
                                                                  clk,
                                                                  reset_n,

                                                                 // outputs:
                                                                  CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave,
                                                                  CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave,
                                                                  CPU_data_master_read_data_valid_External_Clocks_avalon_external_clocks_slave,
                                                                  CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave,
                                                                  External_Clocks_avalon_external_clocks_slave_byteenable,
                                                                  External_Clocks_avalon_external_clocks_slave_chipselect,
                                                                  External_Clocks_avalon_external_clocks_slave_read,
                                                                  External_Clocks_avalon_external_clocks_slave_readdata_from_sa,
                                                                  External_Clocks_avalon_external_clocks_slave_reset,
                                                                  External_Clocks_avalon_external_clocks_slave_write,
                                                                  External_Clocks_avalon_external_clocks_slave_writedata,
                                                                  d1_External_Clocks_avalon_external_clocks_slave_end_xfer
                                                               )
;

  output           CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave;
  output           CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave;
  output           CPU_data_master_read_data_valid_External_Clocks_avalon_external_clocks_slave;
  output           CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave;
  output  [  3: 0] External_Clocks_avalon_external_clocks_slave_byteenable;
  output           External_Clocks_avalon_external_clocks_slave_chipselect;
  output           External_Clocks_avalon_external_clocks_slave_read;
  output  [ 31: 0] External_Clocks_avalon_external_clocks_slave_readdata_from_sa;
  output           External_Clocks_avalon_external_clocks_slave_reset;
  output           External_Clocks_avalon_external_clocks_slave_write;
  output  [ 31: 0] External_Clocks_avalon_external_clocks_slave_writedata;
  output           d1_External_Clocks_avalon_external_clocks_slave_end_xfer;
  input   [ 24: 0] CPU_data_master_address_to_slave;
  input   [  3: 0] CPU_data_master_byteenable;
  input            CPU_data_master_read;
  input            CPU_data_master_waitrequest;
  input            CPU_data_master_write;
  input   [ 31: 0] CPU_data_master_writedata;
  input   [ 31: 0] External_Clocks_avalon_external_clocks_slave_readdata;
  input            clk;
  input            reset_n;

  wire             CPU_data_master_arbiterlock;
  wire             CPU_data_master_arbiterlock2;
  wire             CPU_data_master_continuerequest;
  wire             CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave;
  wire             CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave;
  wire             CPU_data_master_read_data_valid_External_Clocks_avalon_external_clocks_slave;
  wire             CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave;
  wire             CPU_data_master_saved_grant_External_Clocks_avalon_external_clocks_slave;
  wire             External_Clocks_avalon_external_clocks_slave_allgrants;
  wire             External_Clocks_avalon_external_clocks_slave_allow_new_arb_cycle;
  wire             External_Clocks_avalon_external_clocks_slave_any_bursting_master_saved_grant;
  wire             External_Clocks_avalon_external_clocks_slave_any_continuerequest;
  wire             External_Clocks_avalon_external_clocks_slave_arb_counter_enable;
  reg     [  1: 0] External_Clocks_avalon_external_clocks_slave_arb_share_counter;
  wire    [  1: 0] External_Clocks_avalon_external_clocks_slave_arb_share_counter_next_value;
  wire    [  1: 0] External_Clocks_avalon_external_clocks_slave_arb_share_set_values;
  wire             External_Clocks_avalon_external_clocks_slave_beginbursttransfer_internal;
  wire             External_Clocks_avalon_external_clocks_slave_begins_xfer;
  wire    [  3: 0] External_Clocks_avalon_external_clocks_slave_byteenable;
  wire             External_Clocks_avalon_external_clocks_slave_chipselect;
  wire             External_Clocks_avalon_external_clocks_slave_end_xfer;
  wire             External_Clocks_avalon_external_clocks_slave_firsttransfer;
  wire             External_Clocks_avalon_external_clocks_slave_grant_vector;
  wire             External_Clocks_avalon_external_clocks_slave_in_a_read_cycle;
  wire             External_Clocks_avalon_external_clocks_slave_in_a_write_cycle;
  wire             External_Clocks_avalon_external_clocks_slave_master_qreq_vector;
  wire             External_Clocks_avalon_external_clocks_slave_non_bursting_master_requests;
  wire             External_Clocks_avalon_external_clocks_slave_read;
  wire    [ 31: 0] External_Clocks_avalon_external_clocks_slave_readdata_from_sa;
  reg              External_Clocks_avalon_external_clocks_slave_reg_firsttransfer;
  wire             External_Clocks_avalon_external_clocks_slave_reset;
  reg              External_Clocks_avalon_external_clocks_slave_slavearbiterlockenable;
  wire             External_Clocks_avalon_external_clocks_slave_slavearbiterlockenable2;
  wire             External_Clocks_avalon_external_clocks_slave_unreg_firsttransfer;
  wire             External_Clocks_avalon_external_clocks_slave_waits_for_read;
  wire             External_Clocks_avalon_external_clocks_slave_waits_for_write;
  wire             External_Clocks_avalon_external_clocks_slave_write;
  wire    [ 31: 0] External_Clocks_avalon_external_clocks_slave_writedata;
  reg              d1_External_Clocks_avalon_external_clocks_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_External_Clocks_avalon_external_clocks_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 24: 0] shifted_address_to_External_Clocks_avalon_external_clocks_slave_from_CPU_data_master;
  wire             wait_for_External_Clocks_avalon_external_clocks_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~External_Clocks_avalon_external_clocks_slave_end_xfer;
    end


  assign External_Clocks_avalon_external_clocks_slave_begins_xfer = ~d1_reasons_to_wait & ((CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave));
  //assign External_Clocks_avalon_external_clocks_slave_readdata_from_sa = External_Clocks_avalon_external_clocks_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign External_Clocks_avalon_external_clocks_slave_readdata_from_sa = External_Clocks_avalon_external_clocks_slave_readdata;

  assign CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave = ({CPU_data_master_address_to_slave[24 : 2] , 2'b0} == 25'h10010c8) & (CPU_data_master_read | CPU_data_master_write);
  //External_Clocks_avalon_external_clocks_slave_arb_share_counter set values, which is an e_mux
  assign External_Clocks_avalon_external_clocks_slave_arb_share_set_values = 1;

  //External_Clocks_avalon_external_clocks_slave_non_bursting_master_requests mux, which is an e_mux
  assign External_Clocks_avalon_external_clocks_slave_non_bursting_master_requests = CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave;

  //External_Clocks_avalon_external_clocks_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign External_Clocks_avalon_external_clocks_slave_any_bursting_master_saved_grant = 0;

  //External_Clocks_avalon_external_clocks_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign External_Clocks_avalon_external_clocks_slave_arb_share_counter_next_value = External_Clocks_avalon_external_clocks_slave_firsttransfer ? (External_Clocks_avalon_external_clocks_slave_arb_share_set_values - 1) : |External_Clocks_avalon_external_clocks_slave_arb_share_counter ? (External_Clocks_avalon_external_clocks_slave_arb_share_counter - 1) : 0;

  //External_Clocks_avalon_external_clocks_slave_allgrants all slave grants, which is an e_mux
  assign External_Clocks_avalon_external_clocks_slave_allgrants = |External_Clocks_avalon_external_clocks_slave_grant_vector;

  //External_Clocks_avalon_external_clocks_slave_end_xfer assignment, which is an e_assign
  assign External_Clocks_avalon_external_clocks_slave_end_xfer = ~(External_Clocks_avalon_external_clocks_slave_waits_for_read | External_Clocks_avalon_external_clocks_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_External_Clocks_avalon_external_clocks_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_External_Clocks_avalon_external_clocks_slave = External_Clocks_avalon_external_clocks_slave_end_xfer & (~External_Clocks_avalon_external_clocks_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //External_Clocks_avalon_external_clocks_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign External_Clocks_avalon_external_clocks_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_External_Clocks_avalon_external_clocks_slave & External_Clocks_avalon_external_clocks_slave_allgrants) | (end_xfer_arb_share_counter_term_External_Clocks_avalon_external_clocks_slave & ~External_Clocks_avalon_external_clocks_slave_non_bursting_master_requests);

  //External_Clocks_avalon_external_clocks_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          External_Clocks_avalon_external_clocks_slave_arb_share_counter <= 0;
      else if (External_Clocks_avalon_external_clocks_slave_arb_counter_enable)
          External_Clocks_avalon_external_clocks_slave_arb_share_counter <= External_Clocks_avalon_external_clocks_slave_arb_share_counter_next_value;
    end


  //External_Clocks_avalon_external_clocks_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          External_Clocks_avalon_external_clocks_slave_slavearbiterlockenable <= 0;
      else if ((|External_Clocks_avalon_external_clocks_slave_master_qreq_vector & end_xfer_arb_share_counter_term_External_Clocks_avalon_external_clocks_slave) | (end_xfer_arb_share_counter_term_External_Clocks_avalon_external_clocks_slave & ~External_Clocks_avalon_external_clocks_slave_non_bursting_master_requests))
          External_Clocks_avalon_external_clocks_slave_slavearbiterlockenable <= |External_Clocks_avalon_external_clocks_slave_arb_share_counter_next_value;
    end


  //CPU/data_master External_Clocks/avalon_external_clocks_slave arbiterlock, which is an e_assign
  assign CPU_data_master_arbiterlock = External_Clocks_avalon_external_clocks_slave_slavearbiterlockenable & CPU_data_master_continuerequest;

  //External_Clocks_avalon_external_clocks_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign External_Clocks_avalon_external_clocks_slave_slavearbiterlockenable2 = |External_Clocks_avalon_external_clocks_slave_arb_share_counter_next_value;

  //CPU/data_master External_Clocks/avalon_external_clocks_slave arbiterlock2, which is an e_assign
  assign CPU_data_master_arbiterlock2 = External_Clocks_avalon_external_clocks_slave_slavearbiterlockenable2 & CPU_data_master_continuerequest;

  //External_Clocks_avalon_external_clocks_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign External_Clocks_avalon_external_clocks_slave_any_continuerequest = 1;

  //CPU_data_master_continuerequest continued request, which is an e_assign
  assign CPU_data_master_continuerequest = 1;

  assign CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave = CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave & ~((CPU_data_master_read & (~CPU_data_master_waitrequest)) | ((~CPU_data_master_waitrequest) & CPU_data_master_write));
  //External_Clocks_avalon_external_clocks_slave_writedata mux, which is an e_mux
  assign External_Clocks_avalon_external_clocks_slave_writedata = CPU_data_master_writedata;

  //master is always granted when requested
  assign CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave = CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave;

  //CPU/data_master saved-grant External_Clocks/avalon_external_clocks_slave, which is an e_assign
  assign CPU_data_master_saved_grant_External_Clocks_avalon_external_clocks_slave = CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave;

  //allow new arb cycle for External_Clocks/avalon_external_clocks_slave, which is an e_assign
  assign External_Clocks_avalon_external_clocks_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign External_Clocks_avalon_external_clocks_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign External_Clocks_avalon_external_clocks_slave_master_qreq_vector = 1;

  //~External_Clocks_avalon_external_clocks_slave_reset assignment, which is an e_assign
  assign External_Clocks_avalon_external_clocks_slave_reset = ~reset_n;

  assign External_Clocks_avalon_external_clocks_slave_chipselect = CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave;
  //External_Clocks_avalon_external_clocks_slave_firsttransfer first transaction, which is an e_assign
  assign External_Clocks_avalon_external_clocks_slave_firsttransfer = External_Clocks_avalon_external_clocks_slave_begins_xfer ? External_Clocks_avalon_external_clocks_slave_unreg_firsttransfer : External_Clocks_avalon_external_clocks_slave_reg_firsttransfer;

  //External_Clocks_avalon_external_clocks_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign External_Clocks_avalon_external_clocks_slave_unreg_firsttransfer = ~(External_Clocks_avalon_external_clocks_slave_slavearbiterlockenable & External_Clocks_avalon_external_clocks_slave_any_continuerequest);

  //External_Clocks_avalon_external_clocks_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          External_Clocks_avalon_external_clocks_slave_reg_firsttransfer <= 1'b1;
      else if (External_Clocks_avalon_external_clocks_slave_begins_xfer)
          External_Clocks_avalon_external_clocks_slave_reg_firsttransfer <= External_Clocks_avalon_external_clocks_slave_unreg_firsttransfer;
    end


  //External_Clocks_avalon_external_clocks_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign External_Clocks_avalon_external_clocks_slave_beginbursttransfer_internal = External_Clocks_avalon_external_clocks_slave_begins_xfer;

  //External_Clocks_avalon_external_clocks_slave_read assignment, which is an e_mux
  assign External_Clocks_avalon_external_clocks_slave_read = CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave & CPU_data_master_read;

  //External_Clocks_avalon_external_clocks_slave_write assignment, which is an e_mux
  assign External_Clocks_avalon_external_clocks_slave_write = CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave & CPU_data_master_write;

  assign shifted_address_to_External_Clocks_avalon_external_clocks_slave_from_CPU_data_master = CPU_data_master_address_to_slave;
  //d1_External_Clocks_avalon_external_clocks_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_External_Clocks_avalon_external_clocks_slave_end_xfer <= 1;
      else 
        d1_External_Clocks_avalon_external_clocks_slave_end_xfer <= External_Clocks_avalon_external_clocks_slave_end_xfer;
    end


  //External_Clocks_avalon_external_clocks_slave_waits_for_read in a cycle, which is an e_mux
  assign External_Clocks_avalon_external_clocks_slave_waits_for_read = External_Clocks_avalon_external_clocks_slave_in_a_read_cycle & 0;

  //External_Clocks_avalon_external_clocks_slave_in_a_read_cycle assignment, which is an e_assign
  assign External_Clocks_avalon_external_clocks_slave_in_a_read_cycle = CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave & CPU_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = External_Clocks_avalon_external_clocks_slave_in_a_read_cycle;

  //External_Clocks_avalon_external_clocks_slave_waits_for_write in a cycle, which is an e_mux
  assign External_Clocks_avalon_external_clocks_slave_waits_for_write = External_Clocks_avalon_external_clocks_slave_in_a_write_cycle & 0;

  //External_Clocks_avalon_external_clocks_slave_in_a_write_cycle assignment, which is an e_assign
  assign External_Clocks_avalon_external_clocks_slave_in_a_write_cycle = CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave & CPU_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = External_Clocks_avalon_external_clocks_slave_in_a_write_cycle;

  assign wait_for_External_Clocks_avalon_external_clocks_slave_counter = 0;
  //External_Clocks_avalon_external_clocks_slave_byteenable byte enable port mux, which is an e_mux
  assign External_Clocks_avalon_external_clocks_slave_byteenable = (CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave)? CPU_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //External_Clocks/avalon_external_clocks_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Green_LEDs_avalon_parallel_port_slave_arbitrator (
                                                          // inputs:
                                                           CPU_data_master_address_to_slave,
                                                           CPU_data_master_byteenable,
                                                           CPU_data_master_read,
                                                           CPU_data_master_waitrequest,
                                                           CPU_data_master_write,
                                                           CPU_data_master_writedata,
                                                           Green_LEDs_avalon_parallel_port_slave_readdata,
                                                           clk,
                                                           reset_n,

                                                          // outputs:
                                                           CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave,
                                                           CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave,
                                                           CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave,
                                                           CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave,
                                                           Green_LEDs_avalon_parallel_port_slave_address,
                                                           Green_LEDs_avalon_parallel_port_slave_byteenable,
                                                           Green_LEDs_avalon_parallel_port_slave_chipselect,
                                                           Green_LEDs_avalon_parallel_port_slave_read,
                                                           Green_LEDs_avalon_parallel_port_slave_readdata_from_sa,
                                                           Green_LEDs_avalon_parallel_port_slave_reset,
                                                           Green_LEDs_avalon_parallel_port_slave_write,
                                                           Green_LEDs_avalon_parallel_port_slave_writedata,
                                                           d1_Green_LEDs_avalon_parallel_port_slave_end_xfer,
                                                           registered_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave
                                                        )
;

  output           CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave;
  output           CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave;
  output           CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  output           CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave;
  output  [  1: 0] Green_LEDs_avalon_parallel_port_slave_address;
  output  [  3: 0] Green_LEDs_avalon_parallel_port_slave_byteenable;
  output           Green_LEDs_avalon_parallel_port_slave_chipselect;
  output           Green_LEDs_avalon_parallel_port_slave_read;
  output  [ 31: 0] Green_LEDs_avalon_parallel_port_slave_readdata_from_sa;
  output           Green_LEDs_avalon_parallel_port_slave_reset;
  output           Green_LEDs_avalon_parallel_port_slave_write;
  output  [ 31: 0] Green_LEDs_avalon_parallel_port_slave_writedata;
  output           d1_Green_LEDs_avalon_parallel_port_slave_end_xfer;
  output           registered_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  input   [ 24: 0] CPU_data_master_address_to_slave;
  input   [  3: 0] CPU_data_master_byteenable;
  input            CPU_data_master_read;
  input            CPU_data_master_waitrequest;
  input            CPU_data_master_write;
  input   [ 31: 0] CPU_data_master_writedata;
  input   [ 31: 0] Green_LEDs_avalon_parallel_port_slave_readdata;
  input            clk;
  input            reset_n;

  wire             CPU_data_master_arbiterlock;
  wire             CPU_data_master_arbiterlock2;
  wire             CPU_data_master_continuerequest;
  wire             CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave;
  wire             CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave;
  wire             CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  reg              CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register;
  wire             CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register_in;
  wire             CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave;
  wire             CPU_data_master_saved_grant_Green_LEDs_avalon_parallel_port_slave;
  wire    [  1: 0] Green_LEDs_avalon_parallel_port_slave_address;
  wire             Green_LEDs_avalon_parallel_port_slave_allgrants;
  wire             Green_LEDs_avalon_parallel_port_slave_allow_new_arb_cycle;
  wire             Green_LEDs_avalon_parallel_port_slave_any_bursting_master_saved_grant;
  wire             Green_LEDs_avalon_parallel_port_slave_any_continuerequest;
  wire             Green_LEDs_avalon_parallel_port_slave_arb_counter_enable;
  reg     [  1: 0] Green_LEDs_avalon_parallel_port_slave_arb_share_counter;
  wire    [  1: 0] Green_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value;
  wire    [  1: 0] Green_LEDs_avalon_parallel_port_slave_arb_share_set_values;
  wire             Green_LEDs_avalon_parallel_port_slave_beginbursttransfer_internal;
  wire             Green_LEDs_avalon_parallel_port_slave_begins_xfer;
  wire    [  3: 0] Green_LEDs_avalon_parallel_port_slave_byteenable;
  wire             Green_LEDs_avalon_parallel_port_slave_chipselect;
  wire             Green_LEDs_avalon_parallel_port_slave_end_xfer;
  wire             Green_LEDs_avalon_parallel_port_slave_firsttransfer;
  wire             Green_LEDs_avalon_parallel_port_slave_grant_vector;
  wire             Green_LEDs_avalon_parallel_port_slave_in_a_read_cycle;
  wire             Green_LEDs_avalon_parallel_port_slave_in_a_write_cycle;
  wire             Green_LEDs_avalon_parallel_port_slave_master_qreq_vector;
  wire             Green_LEDs_avalon_parallel_port_slave_non_bursting_master_requests;
  wire             Green_LEDs_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Green_LEDs_avalon_parallel_port_slave_readdata_from_sa;
  reg              Green_LEDs_avalon_parallel_port_slave_reg_firsttransfer;
  wire             Green_LEDs_avalon_parallel_port_slave_reset;
  reg              Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable;
  wire             Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable2;
  wire             Green_LEDs_avalon_parallel_port_slave_unreg_firsttransfer;
  wire             Green_LEDs_avalon_parallel_port_slave_waits_for_read;
  wire             Green_LEDs_avalon_parallel_port_slave_waits_for_write;
  wire             Green_LEDs_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Green_LEDs_avalon_parallel_port_slave_writedata;
  reg              d1_Green_LEDs_avalon_parallel_port_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Green_LEDs_avalon_parallel_port_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register;
  wire             registered_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  wire    [ 24: 0] shifted_address_to_Green_LEDs_avalon_parallel_port_slave_from_CPU_data_master;
  wire             wait_for_Green_LEDs_avalon_parallel_port_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~Green_LEDs_avalon_parallel_port_slave_end_xfer;
    end


  assign Green_LEDs_avalon_parallel_port_slave_begins_xfer = ~d1_reasons_to_wait & ((CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave));
  //assign Green_LEDs_avalon_parallel_port_slave_readdata_from_sa = Green_LEDs_avalon_parallel_port_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_readdata_from_sa = Green_LEDs_avalon_parallel_port_slave_readdata;

  assign CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave = ({CPU_data_master_address_to_slave[24 : 4] , 4'b0} == 25'h1001050) & (CPU_data_master_read | CPU_data_master_write);
  //registered rdv signal_name registered_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave assignment, which is an e_assign
  assign registered_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave = CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register_in;

  //Green_LEDs_avalon_parallel_port_slave_arb_share_counter set values, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_arb_share_set_values = 1;

  //Green_LEDs_avalon_parallel_port_slave_non_bursting_master_requests mux, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_non_bursting_master_requests = CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave;

  //Green_LEDs_avalon_parallel_port_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_any_bursting_master_saved_grant = 0;

  //Green_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value = Green_LEDs_avalon_parallel_port_slave_firsttransfer ? (Green_LEDs_avalon_parallel_port_slave_arb_share_set_values - 1) : |Green_LEDs_avalon_parallel_port_slave_arb_share_counter ? (Green_LEDs_avalon_parallel_port_slave_arb_share_counter - 1) : 0;

  //Green_LEDs_avalon_parallel_port_slave_allgrants all slave grants, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_allgrants = |Green_LEDs_avalon_parallel_port_slave_grant_vector;

  //Green_LEDs_avalon_parallel_port_slave_end_xfer assignment, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_end_xfer = ~(Green_LEDs_avalon_parallel_port_slave_waits_for_read | Green_LEDs_avalon_parallel_port_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_Green_LEDs_avalon_parallel_port_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Green_LEDs_avalon_parallel_port_slave = Green_LEDs_avalon_parallel_port_slave_end_xfer & (~Green_LEDs_avalon_parallel_port_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Green_LEDs_avalon_parallel_port_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_Green_LEDs_avalon_parallel_port_slave & Green_LEDs_avalon_parallel_port_slave_allgrants) | (end_xfer_arb_share_counter_term_Green_LEDs_avalon_parallel_port_slave & ~Green_LEDs_avalon_parallel_port_slave_non_bursting_master_requests);

  //Green_LEDs_avalon_parallel_port_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Green_LEDs_avalon_parallel_port_slave_arb_share_counter <= 0;
      else if (Green_LEDs_avalon_parallel_port_slave_arb_counter_enable)
          Green_LEDs_avalon_parallel_port_slave_arb_share_counter <= Green_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable <= 0;
      else if ((|Green_LEDs_avalon_parallel_port_slave_master_qreq_vector & end_xfer_arb_share_counter_term_Green_LEDs_avalon_parallel_port_slave) | (end_xfer_arb_share_counter_term_Green_LEDs_avalon_parallel_port_slave & ~Green_LEDs_avalon_parallel_port_slave_non_bursting_master_requests))
          Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable <= |Green_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //CPU/data_master Green_LEDs/avalon_parallel_port_slave arbiterlock, which is an e_assign
  assign CPU_data_master_arbiterlock = Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable & CPU_data_master_continuerequest;

  //Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable2 = |Green_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value;

  //CPU/data_master Green_LEDs/avalon_parallel_port_slave arbiterlock2, which is an e_assign
  assign CPU_data_master_arbiterlock2 = Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable2 & CPU_data_master_continuerequest;

  //Green_LEDs_avalon_parallel_port_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_any_continuerequest = 1;

  //CPU_data_master_continuerequest continued request, which is an e_assign
  assign CPU_data_master_continuerequest = 1;

  assign CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave = CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave & ~((CPU_data_master_read & ((|CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register))) | ((~CPU_data_master_waitrequest) & CPU_data_master_write));
  //CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register_in = CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave & CPU_data_master_read & ~Green_LEDs_avalon_parallel_port_slave_waits_for_read & ~(|CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register);

  //shift register p1 CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register = {CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register, CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register_in};

  //CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register <= 0;
      else 
        CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register <= p1_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register;
    end


  //local readdatavalid CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave, which is an e_mux
  assign CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave = CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register;

  //Green_LEDs_avalon_parallel_port_slave_writedata mux, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_writedata = CPU_data_master_writedata;

  //master is always granted when requested
  assign CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave = CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave;

  //CPU/data_master saved-grant Green_LEDs/avalon_parallel_port_slave, which is an e_assign
  assign CPU_data_master_saved_grant_Green_LEDs_avalon_parallel_port_slave = CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave;

  //allow new arb cycle for Green_LEDs/avalon_parallel_port_slave, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Green_LEDs_avalon_parallel_port_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Green_LEDs_avalon_parallel_port_slave_master_qreq_vector = 1;

  //~Green_LEDs_avalon_parallel_port_slave_reset assignment, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_reset = ~reset_n;

  assign Green_LEDs_avalon_parallel_port_slave_chipselect = CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave;
  //Green_LEDs_avalon_parallel_port_slave_firsttransfer first transaction, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_firsttransfer = Green_LEDs_avalon_parallel_port_slave_begins_xfer ? Green_LEDs_avalon_parallel_port_slave_unreg_firsttransfer : Green_LEDs_avalon_parallel_port_slave_reg_firsttransfer;

  //Green_LEDs_avalon_parallel_port_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_unreg_firsttransfer = ~(Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable & Green_LEDs_avalon_parallel_port_slave_any_continuerequest);

  //Green_LEDs_avalon_parallel_port_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Green_LEDs_avalon_parallel_port_slave_reg_firsttransfer <= 1'b1;
      else if (Green_LEDs_avalon_parallel_port_slave_begins_xfer)
          Green_LEDs_avalon_parallel_port_slave_reg_firsttransfer <= Green_LEDs_avalon_parallel_port_slave_unreg_firsttransfer;
    end


  //Green_LEDs_avalon_parallel_port_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_beginbursttransfer_internal = Green_LEDs_avalon_parallel_port_slave_begins_xfer;

  //Green_LEDs_avalon_parallel_port_slave_read assignment, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_read = CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave & CPU_data_master_read;

  //Green_LEDs_avalon_parallel_port_slave_write assignment, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_write = CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave & CPU_data_master_write;

  assign shifted_address_to_Green_LEDs_avalon_parallel_port_slave_from_CPU_data_master = CPU_data_master_address_to_slave;
  //Green_LEDs_avalon_parallel_port_slave_address mux, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_address = shifted_address_to_Green_LEDs_avalon_parallel_port_slave_from_CPU_data_master >> 2;

  //d1_Green_LEDs_avalon_parallel_port_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Green_LEDs_avalon_parallel_port_slave_end_xfer <= 1;
      else 
        d1_Green_LEDs_avalon_parallel_port_slave_end_xfer <= Green_LEDs_avalon_parallel_port_slave_end_xfer;
    end


  //Green_LEDs_avalon_parallel_port_slave_waits_for_read in a cycle, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_waits_for_read = Green_LEDs_avalon_parallel_port_slave_in_a_read_cycle & 0;

  //Green_LEDs_avalon_parallel_port_slave_in_a_read_cycle assignment, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_in_a_read_cycle = CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave & CPU_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Green_LEDs_avalon_parallel_port_slave_in_a_read_cycle;

  //Green_LEDs_avalon_parallel_port_slave_waits_for_write in a cycle, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_waits_for_write = Green_LEDs_avalon_parallel_port_slave_in_a_write_cycle & 0;

  //Green_LEDs_avalon_parallel_port_slave_in_a_write_cycle assignment, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_in_a_write_cycle = CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave & CPU_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Green_LEDs_avalon_parallel_port_slave_in_a_write_cycle;

  assign wait_for_Green_LEDs_avalon_parallel_port_slave_counter = 0;
  //Green_LEDs_avalon_parallel_port_slave_byteenable byte enable port mux, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_byteenable = (CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave)? CPU_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Green_LEDs/avalon_parallel_port_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module JTAG_UART_avalon_jtag_slave_arbitrator (
                                                // inputs:
                                                 CPU_data_master_address_to_slave,
                                                 CPU_data_master_read,
                                                 CPU_data_master_waitrequest,
                                                 CPU_data_master_write,
                                                 CPU_data_master_writedata,
                                                 JTAG_UART_avalon_jtag_slave_dataavailable,
                                                 JTAG_UART_avalon_jtag_slave_irq,
                                                 JTAG_UART_avalon_jtag_slave_readdata,
                                                 JTAG_UART_avalon_jtag_slave_readyfordata,
                                                 JTAG_UART_avalon_jtag_slave_waitrequest,
                                                 clk,
                                                 reset_n,

                                                // outputs:
                                                 CPU_data_master_granted_JTAG_UART_avalon_jtag_slave,
                                                 CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave,
                                                 CPU_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave,
                                                 CPU_data_master_requests_JTAG_UART_avalon_jtag_slave,
                                                 JTAG_UART_avalon_jtag_slave_address,
                                                 JTAG_UART_avalon_jtag_slave_chipselect,
                                                 JTAG_UART_avalon_jtag_slave_dataavailable_from_sa,
                                                 JTAG_UART_avalon_jtag_slave_irq_from_sa,
                                                 JTAG_UART_avalon_jtag_slave_read_n,
                                                 JTAG_UART_avalon_jtag_slave_readdata_from_sa,
                                                 JTAG_UART_avalon_jtag_slave_readyfordata_from_sa,
                                                 JTAG_UART_avalon_jtag_slave_reset_n,
                                                 JTAG_UART_avalon_jtag_slave_waitrequest_from_sa,
                                                 JTAG_UART_avalon_jtag_slave_write_n,
                                                 JTAG_UART_avalon_jtag_slave_writedata,
                                                 d1_JTAG_UART_avalon_jtag_slave_end_xfer
                                              )
;

  output           CPU_data_master_granted_JTAG_UART_avalon_jtag_slave;
  output           CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave;
  output           CPU_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave;
  output           CPU_data_master_requests_JTAG_UART_avalon_jtag_slave;
  output           JTAG_UART_avalon_jtag_slave_address;
  output           JTAG_UART_avalon_jtag_slave_chipselect;
  output           JTAG_UART_avalon_jtag_slave_dataavailable_from_sa;
  output           JTAG_UART_avalon_jtag_slave_irq_from_sa;
  output           JTAG_UART_avalon_jtag_slave_read_n;
  output  [ 31: 0] JTAG_UART_avalon_jtag_slave_readdata_from_sa;
  output           JTAG_UART_avalon_jtag_slave_readyfordata_from_sa;
  output           JTAG_UART_avalon_jtag_slave_reset_n;
  output           JTAG_UART_avalon_jtag_slave_waitrequest_from_sa;
  output           JTAG_UART_avalon_jtag_slave_write_n;
  output  [ 31: 0] JTAG_UART_avalon_jtag_slave_writedata;
  output           d1_JTAG_UART_avalon_jtag_slave_end_xfer;
  input   [ 24: 0] CPU_data_master_address_to_slave;
  input            CPU_data_master_read;
  input            CPU_data_master_waitrequest;
  input            CPU_data_master_write;
  input   [ 31: 0] CPU_data_master_writedata;
  input            JTAG_UART_avalon_jtag_slave_dataavailable;
  input            JTAG_UART_avalon_jtag_slave_irq;
  input   [ 31: 0] JTAG_UART_avalon_jtag_slave_readdata;
  input            JTAG_UART_avalon_jtag_slave_readyfordata;
  input            JTAG_UART_avalon_jtag_slave_waitrequest;
  input            clk;
  input            reset_n;

  wire             CPU_data_master_arbiterlock;
  wire             CPU_data_master_arbiterlock2;
  wire             CPU_data_master_continuerequest;
  wire             CPU_data_master_granted_JTAG_UART_avalon_jtag_slave;
  wire             CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave;
  wire             CPU_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave;
  wire             CPU_data_master_requests_JTAG_UART_avalon_jtag_slave;
  wire             CPU_data_master_saved_grant_JTAG_UART_avalon_jtag_slave;
  wire             JTAG_UART_avalon_jtag_slave_address;
  wire             JTAG_UART_avalon_jtag_slave_allgrants;
  wire             JTAG_UART_avalon_jtag_slave_allow_new_arb_cycle;
  wire             JTAG_UART_avalon_jtag_slave_any_bursting_master_saved_grant;
  wire             JTAG_UART_avalon_jtag_slave_any_continuerequest;
  wire             JTAG_UART_avalon_jtag_slave_arb_counter_enable;
  reg     [  1: 0] JTAG_UART_avalon_jtag_slave_arb_share_counter;
  wire    [  1: 0] JTAG_UART_avalon_jtag_slave_arb_share_counter_next_value;
  wire    [  1: 0] JTAG_UART_avalon_jtag_slave_arb_share_set_values;
  wire             JTAG_UART_avalon_jtag_slave_beginbursttransfer_internal;
  wire             JTAG_UART_avalon_jtag_slave_begins_xfer;
  wire             JTAG_UART_avalon_jtag_slave_chipselect;
  wire             JTAG_UART_avalon_jtag_slave_dataavailable_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_end_xfer;
  wire             JTAG_UART_avalon_jtag_slave_firsttransfer;
  wire             JTAG_UART_avalon_jtag_slave_grant_vector;
  wire             JTAG_UART_avalon_jtag_slave_in_a_read_cycle;
  wire             JTAG_UART_avalon_jtag_slave_in_a_write_cycle;
  wire             JTAG_UART_avalon_jtag_slave_irq_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_master_qreq_vector;
  wire             JTAG_UART_avalon_jtag_slave_non_bursting_master_requests;
  wire             JTAG_UART_avalon_jtag_slave_read_n;
  wire    [ 31: 0] JTAG_UART_avalon_jtag_slave_readdata_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_readyfordata_from_sa;
  reg              JTAG_UART_avalon_jtag_slave_reg_firsttransfer;
  wire             JTAG_UART_avalon_jtag_slave_reset_n;
  reg              JTAG_UART_avalon_jtag_slave_slavearbiterlockenable;
  wire             JTAG_UART_avalon_jtag_slave_slavearbiterlockenable2;
  wire             JTAG_UART_avalon_jtag_slave_unreg_firsttransfer;
  wire             JTAG_UART_avalon_jtag_slave_waitrequest_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_waits_for_read;
  wire             JTAG_UART_avalon_jtag_slave_waits_for_write;
  wire             JTAG_UART_avalon_jtag_slave_write_n;
  wire    [ 31: 0] JTAG_UART_avalon_jtag_slave_writedata;
  reg              d1_JTAG_UART_avalon_jtag_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_JTAG_UART_avalon_jtag_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 24: 0] shifted_address_to_JTAG_UART_avalon_jtag_slave_from_CPU_data_master;
  wire             wait_for_JTAG_UART_avalon_jtag_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~JTAG_UART_avalon_jtag_slave_end_xfer;
    end


  assign JTAG_UART_avalon_jtag_slave_begins_xfer = ~d1_reasons_to_wait & ((CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave));
  //assign JTAG_UART_avalon_jtag_slave_readdata_from_sa = JTAG_UART_avalon_jtag_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_readdata_from_sa = JTAG_UART_avalon_jtag_slave_readdata;

  assign CPU_data_master_requests_JTAG_UART_avalon_jtag_slave = ({CPU_data_master_address_to_slave[24 : 3] , 3'b0} == 25'h10010c0) & (CPU_data_master_read | CPU_data_master_write);
  //assign JTAG_UART_avalon_jtag_slave_dataavailable_from_sa = JTAG_UART_avalon_jtag_slave_dataavailable so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_dataavailable_from_sa = JTAG_UART_avalon_jtag_slave_dataavailable;

  //assign JTAG_UART_avalon_jtag_slave_readyfordata_from_sa = JTAG_UART_avalon_jtag_slave_readyfordata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_readyfordata_from_sa = JTAG_UART_avalon_jtag_slave_readyfordata;

  //assign JTAG_UART_avalon_jtag_slave_waitrequest_from_sa = JTAG_UART_avalon_jtag_slave_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_waitrequest_from_sa = JTAG_UART_avalon_jtag_slave_waitrequest;

  //JTAG_UART_avalon_jtag_slave_arb_share_counter set values, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_arb_share_set_values = 1;

  //JTAG_UART_avalon_jtag_slave_non_bursting_master_requests mux, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_non_bursting_master_requests = CPU_data_master_requests_JTAG_UART_avalon_jtag_slave;

  //JTAG_UART_avalon_jtag_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_any_bursting_master_saved_grant = 0;

  //JTAG_UART_avalon_jtag_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_arb_share_counter_next_value = JTAG_UART_avalon_jtag_slave_firsttransfer ? (JTAG_UART_avalon_jtag_slave_arb_share_set_values - 1) : |JTAG_UART_avalon_jtag_slave_arb_share_counter ? (JTAG_UART_avalon_jtag_slave_arb_share_counter - 1) : 0;

  //JTAG_UART_avalon_jtag_slave_allgrants all slave grants, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_allgrants = |JTAG_UART_avalon_jtag_slave_grant_vector;

  //JTAG_UART_avalon_jtag_slave_end_xfer assignment, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_end_xfer = ~(JTAG_UART_avalon_jtag_slave_waits_for_read | JTAG_UART_avalon_jtag_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_JTAG_UART_avalon_jtag_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_JTAG_UART_avalon_jtag_slave = JTAG_UART_avalon_jtag_slave_end_xfer & (~JTAG_UART_avalon_jtag_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //JTAG_UART_avalon_jtag_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_JTAG_UART_avalon_jtag_slave & JTAG_UART_avalon_jtag_slave_allgrants) | (end_xfer_arb_share_counter_term_JTAG_UART_avalon_jtag_slave & ~JTAG_UART_avalon_jtag_slave_non_bursting_master_requests);

  //JTAG_UART_avalon_jtag_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          JTAG_UART_avalon_jtag_slave_arb_share_counter <= 0;
      else if (JTAG_UART_avalon_jtag_slave_arb_counter_enable)
          JTAG_UART_avalon_jtag_slave_arb_share_counter <= JTAG_UART_avalon_jtag_slave_arb_share_counter_next_value;
    end


  //JTAG_UART_avalon_jtag_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          JTAG_UART_avalon_jtag_slave_slavearbiterlockenable <= 0;
      else if ((|JTAG_UART_avalon_jtag_slave_master_qreq_vector & end_xfer_arb_share_counter_term_JTAG_UART_avalon_jtag_slave) | (end_xfer_arb_share_counter_term_JTAG_UART_avalon_jtag_slave & ~JTAG_UART_avalon_jtag_slave_non_bursting_master_requests))
          JTAG_UART_avalon_jtag_slave_slavearbiterlockenable <= |JTAG_UART_avalon_jtag_slave_arb_share_counter_next_value;
    end


  //CPU/data_master JTAG_UART/avalon_jtag_slave arbiterlock, which is an e_assign
  assign CPU_data_master_arbiterlock = JTAG_UART_avalon_jtag_slave_slavearbiterlockenable & CPU_data_master_continuerequest;

  //JTAG_UART_avalon_jtag_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_slavearbiterlockenable2 = |JTAG_UART_avalon_jtag_slave_arb_share_counter_next_value;

  //CPU/data_master JTAG_UART/avalon_jtag_slave arbiterlock2, which is an e_assign
  assign CPU_data_master_arbiterlock2 = JTAG_UART_avalon_jtag_slave_slavearbiterlockenable2 & CPU_data_master_continuerequest;

  //JTAG_UART_avalon_jtag_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_any_continuerequest = 1;

  //CPU_data_master_continuerequest continued request, which is an e_assign
  assign CPU_data_master_continuerequest = 1;

  assign CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave = CPU_data_master_requests_JTAG_UART_avalon_jtag_slave & ~((CPU_data_master_read & (~CPU_data_master_waitrequest)) | ((~CPU_data_master_waitrequest) & CPU_data_master_write));
  //JTAG_UART_avalon_jtag_slave_writedata mux, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_writedata = CPU_data_master_writedata;

  //master is always granted when requested
  assign CPU_data_master_granted_JTAG_UART_avalon_jtag_slave = CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave;

  //CPU/data_master saved-grant JTAG_UART/avalon_jtag_slave, which is an e_assign
  assign CPU_data_master_saved_grant_JTAG_UART_avalon_jtag_slave = CPU_data_master_requests_JTAG_UART_avalon_jtag_slave;

  //allow new arb cycle for JTAG_UART/avalon_jtag_slave, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign JTAG_UART_avalon_jtag_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign JTAG_UART_avalon_jtag_slave_master_qreq_vector = 1;

  //JTAG_UART_avalon_jtag_slave_reset_n assignment, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_reset_n = reset_n;

  assign JTAG_UART_avalon_jtag_slave_chipselect = CPU_data_master_granted_JTAG_UART_avalon_jtag_slave;
  //JTAG_UART_avalon_jtag_slave_firsttransfer first transaction, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_firsttransfer = JTAG_UART_avalon_jtag_slave_begins_xfer ? JTAG_UART_avalon_jtag_slave_unreg_firsttransfer : JTAG_UART_avalon_jtag_slave_reg_firsttransfer;

  //JTAG_UART_avalon_jtag_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_unreg_firsttransfer = ~(JTAG_UART_avalon_jtag_slave_slavearbiterlockenable & JTAG_UART_avalon_jtag_slave_any_continuerequest);

  //JTAG_UART_avalon_jtag_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          JTAG_UART_avalon_jtag_slave_reg_firsttransfer <= 1'b1;
      else if (JTAG_UART_avalon_jtag_slave_begins_xfer)
          JTAG_UART_avalon_jtag_slave_reg_firsttransfer <= JTAG_UART_avalon_jtag_slave_unreg_firsttransfer;
    end


  //JTAG_UART_avalon_jtag_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_beginbursttransfer_internal = JTAG_UART_avalon_jtag_slave_begins_xfer;

  //~JTAG_UART_avalon_jtag_slave_read_n assignment, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_read_n = ~(CPU_data_master_granted_JTAG_UART_avalon_jtag_slave & CPU_data_master_read);

  //~JTAG_UART_avalon_jtag_slave_write_n assignment, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_write_n = ~(CPU_data_master_granted_JTAG_UART_avalon_jtag_slave & CPU_data_master_write);

  assign shifted_address_to_JTAG_UART_avalon_jtag_slave_from_CPU_data_master = CPU_data_master_address_to_slave;
  //JTAG_UART_avalon_jtag_slave_address mux, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_address = shifted_address_to_JTAG_UART_avalon_jtag_slave_from_CPU_data_master >> 2;

  //d1_JTAG_UART_avalon_jtag_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_JTAG_UART_avalon_jtag_slave_end_xfer <= 1;
      else 
        d1_JTAG_UART_avalon_jtag_slave_end_xfer <= JTAG_UART_avalon_jtag_slave_end_xfer;
    end


  //JTAG_UART_avalon_jtag_slave_waits_for_read in a cycle, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_waits_for_read = JTAG_UART_avalon_jtag_slave_in_a_read_cycle & JTAG_UART_avalon_jtag_slave_waitrequest_from_sa;

  //JTAG_UART_avalon_jtag_slave_in_a_read_cycle assignment, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_in_a_read_cycle = CPU_data_master_granted_JTAG_UART_avalon_jtag_slave & CPU_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = JTAG_UART_avalon_jtag_slave_in_a_read_cycle;

  //JTAG_UART_avalon_jtag_slave_waits_for_write in a cycle, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_waits_for_write = JTAG_UART_avalon_jtag_slave_in_a_write_cycle & JTAG_UART_avalon_jtag_slave_waitrequest_from_sa;

  //JTAG_UART_avalon_jtag_slave_in_a_write_cycle assignment, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_in_a_write_cycle = CPU_data_master_granted_JTAG_UART_avalon_jtag_slave & CPU_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = JTAG_UART_avalon_jtag_slave_in_a_write_cycle;

  assign wait_for_JTAG_UART_avalon_jtag_slave_counter = 0;
  //assign JTAG_UART_avalon_jtag_slave_irq_from_sa = JTAG_UART_avalon_jtag_slave_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_irq_from_sa = JTAG_UART_avalon_jtag_slave_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //JTAG_UART/avalon_jtag_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Out_Ports_avalon_parallel_port_slave_arbitrator (
                                                         // inputs:
                                                          CPU_data_master_address_to_slave,
                                                          CPU_data_master_byteenable,
                                                          CPU_data_master_read,
                                                          CPU_data_master_waitrequest,
                                                          CPU_data_master_write,
                                                          CPU_data_master_writedata,
                                                          Out_Ports_avalon_parallel_port_slave_readdata,
                                                          clk,
                                                          reset_n,

                                                         // outputs:
                                                          CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave,
                                                          CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave,
                                                          CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave,
                                                          CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave,
                                                          Out_Ports_avalon_parallel_port_slave_address,
                                                          Out_Ports_avalon_parallel_port_slave_byteenable,
                                                          Out_Ports_avalon_parallel_port_slave_chipselect,
                                                          Out_Ports_avalon_parallel_port_slave_read,
                                                          Out_Ports_avalon_parallel_port_slave_readdata_from_sa,
                                                          Out_Ports_avalon_parallel_port_slave_reset,
                                                          Out_Ports_avalon_parallel_port_slave_write,
                                                          Out_Ports_avalon_parallel_port_slave_writedata,
                                                          d1_Out_Ports_avalon_parallel_port_slave_end_xfer,
                                                          registered_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave
                                                       )
;

  output           CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave;
  output           CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave;
  output           CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave;
  output           CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave;
  output  [  1: 0] Out_Ports_avalon_parallel_port_slave_address;
  output  [  3: 0] Out_Ports_avalon_parallel_port_slave_byteenable;
  output           Out_Ports_avalon_parallel_port_slave_chipselect;
  output           Out_Ports_avalon_parallel_port_slave_read;
  output  [ 31: 0] Out_Ports_avalon_parallel_port_slave_readdata_from_sa;
  output           Out_Ports_avalon_parallel_port_slave_reset;
  output           Out_Ports_avalon_parallel_port_slave_write;
  output  [ 31: 0] Out_Ports_avalon_parallel_port_slave_writedata;
  output           d1_Out_Ports_avalon_parallel_port_slave_end_xfer;
  output           registered_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave;
  input   [ 24: 0] CPU_data_master_address_to_slave;
  input   [  3: 0] CPU_data_master_byteenable;
  input            CPU_data_master_read;
  input            CPU_data_master_waitrequest;
  input            CPU_data_master_write;
  input   [ 31: 0] CPU_data_master_writedata;
  input   [ 31: 0] Out_Ports_avalon_parallel_port_slave_readdata;
  input            clk;
  input            reset_n;

  wire             CPU_data_master_arbiterlock;
  wire             CPU_data_master_arbiterlock2;
  wire             CPU_data_master_continuerequest;
  wire             CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave;
  wire             CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave;
  wire             CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave;
  reg              CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register;
  wire             CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register_in;
  wire             CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave;
  wire             CPU_data_master_saved_grant_Out_Ports_avalon_parallel_port_slave;
  wire    [  1: 0] Out_Ports_avalon_parallel_port_slave_address;
  wire             Out_Ports_avalon_parallel_port_slave_allgrants;
  wire             Out_Ports_avalon_parallel_port_slave_allow_new_arb_cycle;
  wire             Out_Ports_avalon_parallel_port_slave_any_bursting_master_saved_grant;
  wire             Out_Ports_avalon_parallel_port_slave_any_continuerequest;
  wire             Out_Ports_avalon_parallel_port_slave_arb_counter_enable;
  reg     [  1: 0] Out_Ports_avalon_parallel_port_slave_arb_share_counter;
  wire    [  1: 0] Out_Ports_avalon_parallel_port_slave_arb_share_counter_next_value;
  wire    [  1: 0] Out_Ports_avalon_parallel_port_slave_arb_share_set_values;
  wire             Out_Ports_avalon_parallel_port_slave_beginbursttransfer_internal;
  wire             Out_Ports_avalon_parallel_port_slave_begins_xfer;
  wire    [  3: 0] Out_Ports_avalon_parallel_port_slave_byteenable;
  wire             Out_Ports_avalon_parallel_port_slave_chipselect;
  wire             Out_Ports_avalon_parallel_port_slave_end_xfer;
  wire             Out_Ports_avalon_parallel_port_slave_firsttransfer;
  wire             Out_Ports_avalon_parallel_port_slave_grant_vector;
  wire             Out_Ports_avalon_parallel_port_slave_in_a_read_cycle;
  wire             Out_Ports_avalon_parallel_port_slave_in_a_write_cycle;
  wire             Out_Ports_avalon_parallel_port_slave_master_qreq_vector;
  wire             Out_Ports_avalon_parallel_port_slave_non_bursting_master_requests;
  wire             Out_Ports_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Out_Ports_avalon_parallel_port_slave_readdata_from_sa;
  reg              Out_Ports_avalon_parallel_port_slave_reg_firsttransfer;
  wire             Out_Ports_avalon_parallel_port_slave_reset;
  reg              Out_Ports_avalon_parallel_port_slave_slavearbiterlockenable;
  wire             Out_Ports_avalon_parallel_port_slave_slavearbiterlockenable2;
  wire             Out_Ports_avalon_parallel_port_slave_unreg_firsttransfer;
  wire             Out_Ports_avalon_parallel_port_slave_waits_for_read;
  wire             Out_Ports_avalon_parallel_port_slave_waits_for_write;
  wire             Out_Ports_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Out_Ports_avalon_parallel_port_slave_writedata;
  reg              d1_Out_Ports_avalon_parallel_port_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Out_Ports_avalon_parallel_port_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register;
  wire             registered_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave;
  wire    [ 24: 0] shifted_address_to_Out_Ports_avalon_parallel_port_slave_from_CPU_data_master;
  wire             wait_for_Out_Ports_avalon_parallel_port_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~Out_Ports_avalon_parallel_port_slave_end_xfer;
    end


  assign Out_Ports_avalon_parallel_port_slave_begins_xfer = ~d1_reasons_to_wait & ((CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave));
  //assign Out_Ports_avalon_parallel_port_slave_readdata_from_sa = Out_Ports_avalon_parallel_port_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Out_Ports_avalon_parallel_port_slave_readdata_from_sa = Out_Ports_avalon_parallel_port_slave_readdata;

  assign CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave = ({CPU_data_master_address_to_slave[24 : 4] , 4'b0} == 25'h1001070) & (CPU_data_master_read | CPU_data_master_write);
  //registered rdv signal_name registered_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave assignment, which is an e_assign
  assign registered_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave = CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register_in;

  //Out_Ports_avalon_parallel_port_slave_arb_share_counter set values, which is an e_mux
  assign Out_Ports_avalon_parallel_port_slave_arb_share_set_values = 1;

  //Out_Ports_avalon_parallel_port_slave_non_bursting_master_requests mux, which is an e_mux
  assign Out_Ports_avalon_parallel_port_slave_non_bursting_master_requests = CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave;

  //Out_Ports_avalon_parallel_port_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign Out_Ports_avalon_parallel_port_slave_any_bursting_master_saved_grant = 0;

  //Out_Ports_avalon_parallel_port_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign Out_Ports_avalon_parallel_port_slave_arb_share_counter_next_value = Out_Ports_avalon_parallel_port_slave_firsttransfer ? (Out_Ports_avalon_parallel_port_slave_arb_share_set_values - 1) : |Out_Ports_avalon_parallel_port_slave_arb_share_counter ? (Out_Ports_avalon_parallel_port_slave_arb_share_counter - 1) : 0;

  //Out_Ports_avalon_parallel_port_slave_allgrants all slave grants, which is an e_mux
  assign Out_Ports_avalon_parallel_port_slave_allgrants = |Out_Ports_avalon_parallel_port_slave_grant_vector;

  //Out_Ports_avalon_parallel_port_slave_end_xfer assignment, which is an e_assign
  assign Out_Ports_avalon_parallel_port_slave_end_xfer = ~(Out_Ports_avalon_parallel_port_slave_waits_for_read | Out_Ports_avalon_parallel_port_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_Out_Ports_avalon_parallel_port_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Out_Ports_avalon_parallel_port_slave = Out_Ports_avalon_parallel_port_slave_end_xfer & (~Out_Ports_avalon_parallel_port_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Out_Ports_avalon_parallel_port_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign Out_Ports_avalon_parallel_port_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_Out_Ports_avalon_parallel_port_slave & Out_Ports_avalon_parallel_port_slave_allgrants) | (end_xfer_arb_share_counter_term_Out_Ports_avalon_parallel_port_slave & ~Out_Ports_avalon_parallel_port_slave_non_bursting_master_requests);

  //Out_Ports_avalon_parallel_port_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Out_Ports_avalon_parallel_port_slave_arb_share_counter <= 0;
      else if (Out_Ports_avalon_parallel_port_slave_arb_counter_enable)
          Out_Ports_avalon_parallel_port_slave_arb_share_counter <= Out_Ports_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //Out_Ports_avalon_parallel_port_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Out_Ports_avalon_parallel_port_slave_slavearbiterlockenable <= 0;
      else if ((|Out_Ports_avalon_parallel_port_slave_master_qreq_vector & end_xfer_arb_share_counter_term_Out_Ports_avalon_parallel_port_slave) | (end_xfer_arb_share_counter_term_Out_Ports_avalon_parallel_port_slave & ~Out_Ports_avalon_parallel_port_slave_non_bursting_master_requests))
          Out_Ports_avalon_parallel_port_slave_slavearbiterlockenable <= |Out_Ports_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //CPU/data_master Out_Ports/avalon_parallel_port_slave arbiterlock, which is an e_assign
  assign CPU_data_master_arbiterlock = Out_Ports_avalon_parallel_port_slave_slavearbiterlockenable & CPU_data_master_continuerequest;

  //Out_Ports_avalon_parallel_port_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Out_Ports_avalon_parallel_port_slave_slavearbiterlockenable2 = |Out_Ports_avalon_parallel_port_slave_arb_share_counter_next_value;

  //CPU/data_master Out_Ports/avalon_parallel_port_slave arbiterlock2, which is an e_assign
  assign CPU_data_master_arbiterlock2 = Out_Ports_avalon_parallel_port_slave_slavearbiterlockenable2 & CPU_data_master_continuerequest;

  //Out_Ports_avalon_parallel_port_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Out_Ports_avalon_parallel_port_slave_any_continuerequest = 1;

  //CPU_data_master_continuerequest continued request, which is an e_assign
  assign CPU_data_master_continuerequest = 1;

  assign CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave = CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave & ~((CPU_data_master_read & ((|CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register))) | ((~CPU_data_master_waitrequest) & CPU_data_master_write));
  //CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register_in = CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave & CPU_data_master_read & ~Out_Ports_avalon_parallel_port_slave_waits_for_read & ~(|CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register);

  //shift register p1 CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register = {CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register, CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register_in};

  //CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register <= 0;
      else 
        CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register <= p1_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register;
    end


  //local readdatavalid CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave, which is an e_mux
  assign CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave = CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave_shift_register;

  //Out_Ports_avalon_parallel_port_slave_writedata mux, which is an e_mux
  assign Out_Ports_avalon_parallel_port_slave_writedata = CPU_data_master_writedata;

  //master is always granted when requested
  assign CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave = CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave;

  //CPU/data_master saved-grant Out_Ports/avalon_parallel_port_slave, which is an e_assign
  assign CPU_data_master_saved_grant_Out_Ports_avalon_parallel_port_slave = CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave;

  //allow new arb cycle for Out_Ports/avalon_parallel_port_slave, which is an e_assign
  assign Out_Ports_avalon_parallel_port_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Out_Ports_avalon_parallel_port_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Out_Ports_avalon_parallel_port_slave_master_qreq_vector = 1;

  //~Out_Ports_avalon_parallel_port_slave_reset assignment, which is an e_assign
  assign Out_Ports_avalon_parallel_port_slave_reset = ~reset_n;

  assign Out_Ports_avalon_parallel_port_slave_chipselect = CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave;
  //Out_Ports_avalon_parallel_port_slave_firsttransfer first transaction, which is an e_assign
  assign Out_Ports_avalon_parallel_port_slave_firsttransfer = Out_Ports_avalon_parallel_port_slave_begins_xfer ? Out_Ports_avalon_parallel_port_slave_unreg_firsttransfer : Out_Ports_avalon_parallel_port_slave_reg_firsttransfer;

  //Out_Ports_avalon_parallel_port_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign Out_Ports_avalon_parallel_port_slave_unreg_firsttransfer = ~(Out_Ports_avalon_parallel_port_slave_slavearbiterlockenable & Out_Ports_avalon_parallel_port_slave_any_continuerequest);

  //Out_Ports_avalon_parallel_port_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Out_Ports_avalon_parallel_port_slave_reg_firsttransfer <= 1'b1;
      else if (Out_Ports_avalon_parallel_port_slave_begins_xfer)
          Out_Ports_avalon_parallel_port_slave_reg_firsttransfer <= Out_Ports_avalon_parallel_port_slave_unreg_firsttransfer;
    end


  //Out_Ports_avalon_parallel_port_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Out_Ports_avalon_parallel_port_slave_beginbursttransfer_internal = Out_Ports_avalon_parallel_port_slave_begins_xfer;

  //Out_Ports_avalon_parallel_port_slave_read assignment, which is an e_mux
  assign Out_Ports_avalon_parallel_port_slave_read = CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave & CPU_data_master_read;

  //Out_Ports_avalon_parallel_port_slave_write assignment, which is an e_mux
  assign Out_Ports_avalon_parallel_port_slave_write = CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave & CPU_data_master_write;

  assign shifted_address_to_Out_Ports_avalon_parallel_port_slave_from_CPU_data_master = CPU_data_master_address_to_slave;
  //Out_Ports_avalon_parallel_port_slave_address mux, which is an e_mux
  assign Out_Ports_avalon_parallel_port_slave_address = shifted_address_to_Out_Ports_avalon_parallel_port_slave_from_CPU_data_master >> 2;

  //d1_Out_Ports_avalon_parallel_port_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Out_Ports_avalon_parallel_port_slave_end_xfer <= 1;
      else 
        d1_Out_Ports_avalon_parallel_port_slave_end_xfer <= Out_Ports_avalon_parallel_port_slave_end_xfer;
    end


  //Out_Ports_avalon_parallel_port_slave_waits_for_read in a cycle, which is an e_mux
  assign Out_Ports_avalon_parallel_port_slave_waits_for_read = Out_Ports_avalon_parallel_port_slave_in_a_read_cycle & 0;

  //Out_Ports_avalon_parallel_port_slave_in_a_read_cycle assignment, which is an e_assign
  assign Out_Ports_avalon_parallel_port_slave_in_a_read_cycle = CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave & CPU_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Out_Ports_avalon_parallel_port_slave_in_a_read_cycle;

  //Out_Ports_avalon_parallel_port_slave_waits_for_write in a cycle, which is an e_mux
  assign Out_Ports_avalon_parallel_port_slave_waits_for_write = Out_Ports_avalon_parallel_port_slave_in_a_write_cycle & 0;

  //Out_Ports_avalon_parallel_port_slave_in_a_write_cycle assignment, which is an e_assign
  assign Out_Ports_avalon_parallel_port_slave_in_a_write_cycle = CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave & CPU_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Out_Ports_avalon_parallel_port_slave_in_a_write_cycle;

  assign wait_for_Out_Ports_avalon_parallel_port_slave_counter = 0;
  //Out_Ports_avalon_parallel_port_slave_byteenable byte enable port mux, which is an e_mux
  assign Out_Ports_avalon_parallel_port_slave_byteenable = (CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave)? CPU_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Out_Ports/avalon_parallel_port_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Pushbuttons_avalon_parallel_port_slave_arbitrator (
                                                           // inputs:
                                                            CPU_data_master_address_to_slave,
                                                            CPU_data_master_byteenable,
                                                            CPU_data_master_read,
                                                            CPU_data_master_waitrequest,
                                                            CPU_data_master_write,
                                                            CPU_data_master_writedata,
                                                            Pushbuttons_avalon_parallel_port_slave_irq,
                                                            Pushbuttons_avalon_parallel_port_slave_readdata,
                                                            clk,
                                                            reset_n,

                                                           // outputs:
                                                            CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave,
                                                            CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave,
                                                            CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave,
                                                            CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave,
                                                            Pushbuttons_avalon_parallel_port_slave_address,
                                                            Pushbuttons_avalon_parallel_port_slave_byteenable,
                                                            Pushbuttons_avalon_parallel_port_slave_chipselect,
                                                            Pushbuttons_avalon_parallel_port_slave_irq_from_sa,
                                                            Pushbuttons_avalon_parallel_port_slave_read,
                                                            Pushbuttons_avalon_parallel_port_slave_readdata_from_sa,
                                                            Pushbuttons_avalon_parallel_port_slave_reset,
                                                            Pushbuttons_avalon_parallel_port_slave_write,
                                                            Pushbuttons_avalon_parallel_port_slave_writedata,
                                                            d1_Pushbuttons_avalon_parallel_port_slave_end_xfer,
                                                            registered_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave
                                                         )
;

  output           CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave;
  output           CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave;
  output           CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  output           CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave;
  output  [  1: 0] Pushbuttons_avalon_parallel_port_slave_address;
  output  [  3: 0] Pushbuttons_avalon_parallel_port_slave_byteenable;
  output           Pushbuttons_avalon_parallel_port_slave_chipselect;
  output           Pushbuttons_avalon_parallel_port_slave_irq_from_sa;
  output           Pushbuttons_avalon_parallel_port_slave_read;
  output  [ 31: 0] Pushbuttons_avalon_parallel_port_slave_readdata_from_sa;
  output           Pushbuttons_avalon_parallel_port_slave_reset;
  output           Pushbuttons_avalon_parallel_port_slave_write;
  output  [ 31: 0] Pushbuttons_avalon_parallel_port_slave_writedata;
  output           d1_Pushbuttons_avalon_parallel_port_slave_end_xfer;
  output           registered_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  input   [ 24: 0] CPU_data_master_address_to_slave;
  input   [  3: 0] CPU_data_master_byteenable;
  input            CPU_data_master_read;
  input            CPU_data_master_waitrequest;
  input            CPU_data_master_write;
  input   [ 31: 0] CPU_data_master_writedata;
  input            Pushbuttons_avalon_parallel_port_slave_irq;
  input   [ 31: 0] Pushbuttons_avalon_parallel_port_slave_readdata;
  input            clk;
  input            reset_n;

  wire             CPU_data_master_arbiterlock;
  wire             CPU_data_master_arbiterlock2;
  wire             CPU_data_master_continuerequest;
  wire             CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave;
  wire             CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave;
  wire             CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  reg              CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register;
  wire             CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register_in;
  wire             CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave;
  wire             CPU_data_master_saved_grant_Pushbuttons_avalon_parallel_port_slave;
  wire    [  1: 0] Pushbuttons_avalon_parallel_port_slave_address;
  wire             Pushbuttons_avalon_parallel_port_slave_allgrants;
  wire             Pushbuttons_avalon_parallel_port_slave_allow_new_arb_cycle;
  wire             Pushbuttons_avalon_parallel_port_slave_any_bursting_master_saved_grant;
  wire             Pushbuttons_avalon_parallel_port_slave_any_continuerequest;
  wire             Pushbuttons_avalon_parallel_port_slave_arb_counter_enable;
  reg     [  1: 0] Pushbuttons_avalon_parallel_port_slave_arb_share_counter;
  wire    [  1: 0] Pushbuttons_avalon_parallel_port_slave_arb_share_counter_next_value;
  wire    [  1: 0] Pushbuttons_avalon_parallel_port_slave_arb_share_set_values;
  wire             Pushbuttons_avalon_parallel_port_slave_beginbursttransfer_internal;
  wire             Pushbuttons_avalon_parallel_port_slave_begins_xfer;
  wire    [  3: 0] Pushbuttons_avalon_parallel_port_slave_byteenable;
  wire             Pushbuttons_avalon_parallel_port_slave_chipselect;
  wire             Pushbuttons_avalon_parallel_port_slave_end_xfer;
  wire             Pushbuttons_avalon_parallel_port_slave_firsttransfer;
  wire             Pushbuttons_avalon_parallel_port_slave_grant_vector;
  wire             Pushbuttons_avalon_parallel_port_slave_in_a_read_cycle;
  wire             Pushbuttons_avalon_parallel_port_slave_in_a_write_cycle;
  wire             Pushbuttons_avalon_parallel_port_slave_irq_from_sa;
  wire             Pushbuttons_avalon_parallel_port_slave_master_qreq_vector;
  wire             Pushbuttons_avalon_parallel_port_slave_non_bursting_master_requests;
  wire             Pushbuttons_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Pushbuttons_avalon_parallel_port_slave_readdata_from_sa;
  reg              Pushbuttons_avalon_parallel_port_slave_reg_firsttransfer;
  wire             Pushbuttons_avalon_parallel_port_slave_reset;
  reg              Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable;
  wire             Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable2;
  wire             Pushbuttons_avalon_parallel_port_slave_unreg_firsttransfer;
  wire             Pushbuttons_avalon_parallel_port_slave_waits_for_read;
  wire             Pushbuttons_avalon_parallel_port_slave_waits_for_write;
  wire             Pushbuttons_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Pushbuttons_avalon_parallel_port_slave_writedata;
  reg              d1_Pushbuttons_avalon_parallel_port_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Pushbuttons_avalon_parallel_port_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register;
  wire             registered_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  wire    [ 24: 0] shifted_address_to_Pushbuttons_avalon_parallel_port_slave_from_CPU_data_master;
  wire             wait_for_Pushbuttons_avalon_parallel_port_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~Pushbuttons_avalon_parallel_port_slave_end_xfer;
    end


  assign Pushbuttons_avalon_parallel_port_slave_begins_xfer = ~d1_reasons_to_wait & ((CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave));
  //assign Pushbuttons_avalon_parallel_port_slave_readdata_from_sa = Pushbuttons_avalon_parallel_port_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_readdata_from_sa = Pushbuttons_avalon_parallel_port_slave_readdata;

  assign CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave = ({CPU_data_master_address_to_slave[24 : 4] , 4'b0} == 25'h1001060) & (CPU_data_master_read | CPU_data_master_write);
  //registered rdv signal_name registered_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave assignment, which is an e_assign
  assign registered_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave = CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register_in;

  //Pushbuttons_avalon_parallel_port_slave_arb_share_counter set values, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_arb_share_set_values = 1;

  //Pushbuttons_avalon_parallel_port_slave_non_bursting_master_requests mux, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_non_bursting_master_requests = CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave;

  //Pushbuttons_avalon_parallel_port_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_any_bursting_master_saved_grant = 0;

  //Pushbuttons_avalon_parallel_port_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_arb_share_counter_next_value = Pushbuttons_avalon_parallel_port_slave_firsttransfer ? (Pushbuttons_avalon_parallel_port_slave_arb_share_set_values - 1) : |Pushbuttons_avalon_parallel_port_slave_arb_share_counter ? (Pushbuttons_avalon_parallel_port_slave_arb_share_counter - 1) : 0;

  //Pushbuttons_avalon_parallel_port_slave_allgrants all slave grants, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_allgrants = |Pushbuttons_avalon_parallel_port_slave_grant_vector;

  //Pushbuttons_avalon_parallel_port_slave_end_xfer assignment, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_end_xfer = ~(Pushbuttons_avalon_parallel_port_slave_waits_for_read | Pushbuttons_avalon_parallel_port_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_Pushbuttons_avalon_parallel_port_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Pushbuttons_avalon_parallel_port_slave = Pushbuttons_avalon_parallel_port_slave_end_xfer & (~Pushbuttons_avalon_parallel_port_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Pushbuttons_avalon_parallel_port_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_Pushbuttons_avalon_parallel_port_slave & Pushbuttons_avalon_parallel_port_slave_allgrants) | (end_xfer_arb_share_counter_term_Pushbuttons_avalon_parallel_port_slave & ~Pushbuttons_avalon_parallel_port_slave_non_bursting_master_requests);

  //Pushbuttons_avalon_parallel_port_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Pushbuttons_avalon_parallel_port_slave_arb_share_counter <= 0;
      else if (Pushbuttons_avalon_parallel_port_slave_arb_counter_enable)
          Pushbuttons_avalon_parallel_port_slave_arb_share_counter <= Pushbuttons_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable <= 0;
      else if ((|Pushbuttons_avalon_parallel_port_slave_master_qreq_vector & end_xfer_arb_share_counter_term_Pushbuttons_avalon_parallel_port_slave) | (end_xfer_arb_share_counter_term_Pushbuttons_avalon_parallel_port_slave & ~Pushbuttons_avalon_parallel_port_slave_non_bursting_master_requests))
          Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable <= |Pushbuttons_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //CPU/data_master Pushbuttons/avalon_parallel_port_slave arbiterlock, which is an e_assign
  assign CPU_data_master_arbiterlock = Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable & CPU_data_master_continuerequest;

  //Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable2 = |Pushbuttons_avalon_parallel_port_slave_arb_share_counter_next_value;

  //CPU/data_master Pushbuttons/avalon_parallel_port_slave arbiterlock2, which is an e_assign
  assign CPU_data_master_arbiterlock2 = Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable2 & CPU_data_master_continuerequest;

  //Pushbuttons_avalon_parallel_port_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_any_continuerequest = 1;

  //CPU_data_master_continuerequest continued request, which is an e_assign
  assign CPU_data_master_continuerequest = 1;

  assign CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave = CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave & ~((CPU_data_master_read & ((|CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register))) | ((~CPU_data_master_waitrequest) & CPU_data_master_write));
  //CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register_in = CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave & CPU_data_master_read & ~Pushbuttons_avalon_parallel_port_slave_waits_for_read & ~(|CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register);

  //shift register p1 CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register = {CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register, CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register_in};

  //CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register <= 0;
      else 
        CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register <= p1_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register;
    end


  //local readdatavalid CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave, which is an e_mux
  assign CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave = CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register;

  //Pushbuttons_avalon_parallel_port_slave_writedata mux, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_writedata = CPU_data_master_writedata;

  //master is always granted when requested
  assign CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave = CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave;

  //CPU/data_master saved-grant Pushbuttons/avalon_parallel_port_slave, which is an e_assign
  assign CPU_data_master_saved_grant_Pushbuttons_avalon_parallel_port_slave = CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave;

  //allow new arb cycle for Pushbuttons/avalon_parallel_port_slave, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Pushbuttons_avalon_parallel_port_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Pushbuttons_avalon_parallel_port_slave_master_qreq_vector = 1;

  //~Pushbuttons_avalon_parallel_port_slave_reset assignment, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_reset = ~reset_n;

  assign Pushbuttons_avalon_parallel_port_slave_chipselect = CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave;
  //Pushbuttons_avalon_parallel_port_slave_firsttransfer first transaction, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_firsttransfer = Pushbuttons_avalon_parallel_port_slave_begins_xfer ? Pushbuttons_avalon_parallel_port_slave_unreg_firsttransfer : Pushbuttons_avalon_parallel_port_slave_reg_firsttransfer;

  //Pushbuttons_avalon_parallel_port_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_unreg_firsttransfer = ~(Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable & Pushbuttons_avalon_parallel_port_slave_any_continuerequest);

  //Pushbuttons_avalon_parallel_port_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Pushbuttons_avalon_parallel_port_slave_reg_firsttransfer <= 1'b1;
      else if (Pushbuttons_avalon_parallel_port_slave_begins_xfer)
          Pushbuttons_avalon_parallel_port_slave_reg_firsttransfer <= Pushbuttons_avalon_parallel_port_slave_unreg_firsttransfer;
    end


  //Pushbuttons_avalon_parallel_port_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_beginbursttransfer_internal = Pushbuttons_avalon_parallel_port_slave_begins_xfer;

  //Pushbuttons_avalon_parallel_port_slave_read assignment, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_read = CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave & CPU_data_master_read;

  //Pushbuttons_avalon_parallel_port_slave_write assignment, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_write = CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave & CPU_data_master_write;

  assign shifted_address_to_Pushbuttons_avalon_parallel_port_slave_from_CPU_data_master = CPU_data_master_address_to_slave;
  //Pushbuttons_avalon_parallel_port_slave_address mux, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_address = shifted_address_to_Pushbuttons_avalon_parallel_port_slave_from_CPU_data_master >> 2;

  //d1_Pushbuttons_avalon_parallel_port_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Pushbuttons_avalon_parallel_port_slave_end_xfer <= 1;
      else 
        d1_Pushbuttons_avalon_parallel_port_slave_end_xfer <= Pushbuttons_avalon_parallel_port_slave_end_xfer;
    end


  //Pushbuttons_avalon_parallel_port_slave_waits_for_read in a cycle, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_waits_for_read = Pushbuttons_avalon_parallel_port_slave_in_a_read_cycle & 0;

  //Pushbuttons_avalon_parallel_port_slave_in_a_read_cycle assignment, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_in_a_read_cycle = CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave & CPU_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Pushbuttons_avalon_parallel_port_slave_in_a_read_cycle;

  //Pushbuttons_avalon_parallel_port_slave_waits_for_write in a cycle, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_waits_for_write = Pushbuttons_avalon_parallel_port_slave_in_a_write_cycle & 0;

  //Pushbuttons_avalon_parallel_port_slave_in_a_write_cycle assignment, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_in_a_write_cycle = CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave & CPU_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Pushbuttons_avalon_parallel_port_slave_in_a_write_cycle;

  assign wait_for_Pushbuttons_avalon_parallel_port_slave_counter = 0;
  //Pushbuttons_avalon_parallel_port_slave_byteenable byte enable port mux, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_byteenable = (CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave)? CPU_data_master_byteenable :
    -1;

  //assign Pushbuttons_avalon_parallel_port_slave_irq_from_sa = Pushbuttons_avalon_parallel_port_slave_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_irq_from_sa = Pushbuttons_avalon_parallel_port_slave_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Pushbuttons/avalon_parallel_port_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module rdv_fifo_for_CPU_data_master_to_SDRAM_s1_module (
                                                         // inputs:
                                                          clear_fifo,
                                                          clk,
                                                          data_in,
                                                          read,
                                                          reset_n,
                                                          sync_reset,
                                                          write,

                                                         // outputs:
                                                          data_out,
                                                          empty,
                                                          fifo_contains_ones_n,
                                                          full
                                                       )
;

  output           data_out;
  output           empty;
  output           fifo_contains_ones_n;
  output           full;
  input            clear_fifo;
  input            clk;
  input            data_in;
  input            read;
  input            reset_n;
  input            sync_reset;
  input            write;

  wire             data_out;
  wire             empty;
  reg              fifo_contains_ones_n;
  wire             full;
  reg              full_0;
  reg              full_1;
  reg              full_2;
  reg              full_3;
  reg              full_4;
  reg              full_5;
  reg              full_6;
  wire             full_7;
  reg     [  3: 0] how_many_ones;
  wire    [  3: 0] one_count_minus_one;
  wire    [  3: 0] one_count_plus_one;
  wire             p0_full_0;
  wire             p0_stage_0;
  wire             p1_full_1;
  wire             p1_stage_1;
  wire             p2_full_2;
  wire             p2_stage_2;
  wire             p3_full_3;
  wire             p3_stage_3;
  wire             p4_full_4;
  wire             p4_stage_4;
  wire             p5_full_5;
  wire             p5_stage_5;
  wire             p6_full_6;
  wire             p6_stage_6;
  reg              stage_0;
  reg              stage_1;
  reg              stage_2;
  reg              stage_3;
  reg              stage_4;
  reg              stage_5;
  reg              stage_6;
  wire    [  3: 0] updated_one_count;
  assign data_out = stage_0;
  assign full = full_6;
  assign empty = !full_0;
  assign full_7 = 0;
  //data_6, which is an e_mux
  assign p6_stage_6 = ((full_7 & ~clear_fifo) == 0)? data_in :
    data_in;

  //data_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_6 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_6))
          if (sync_reset & full_6 & !((full_7 == 0) & read & write))
              stage_6 <= 0;
          else 
            stage_6 <= p6_stage_6;
    end


  //control_6, which is an e_mux
  assign p6_full_6 = ((read & !write) == 0)? full_5 :
    0;

  //control_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_6 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_6 <= 0;
          else 
            full_6 <= p6_full_6;
    end


  //data_5, which is an e_mux
  assign p5_stage_5 = ((full_6 & ~clear_fifo) == 0)? data_in :
    stage_6;

  //data_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_5 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_5))
          if (sync_reset & full_5 & !((full_6 == 0) & read & write))
              stage_5 <= 0;
          else 
            stage_5 <= p5_stage_5;
    end


  //control_5, which is an e_mux
  assign p5_full_5 = ((read & !write) == 0)? full_4 :
    full_6;

  //control_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_5 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_5 <= 0;
          else 
            full_5 <= p5_full_5;
    end


  //data_4, which is an e_mux
  assign p4_stage_4 = ((full_5 & ~clear_fifo) == 0)? data_in :
    stage_5;

  //data_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_4 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_4))
          if (sync_reset & full_4 & !((full_5 == 0) & read & write))
              stage_4 <= 0;
          else 
            stage_4 <= p4_stage_4;
    end


  //control_4, which is an e_mux
  assign p4_full_4 = ((read & !write) == 0)? full_3 :
    full_5;

  //control_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_4 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_4 <= 0;
          else 
            full_4 <= p4_full_4;
    end


  //data_3, which is an e_mux
  assign p3_stage_3 = ((full_4 & ~clear_fifo) == 0)? data_in :
    stage_4;

  //data_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_3 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_3))
          if (sync_reset & full_3 & !((full_4 == 0) & read & write))
              stage_3 <= 0;
          else 
            stage_3 <= p3_stage_3;
    end


  //control_3, which is an e_mux
  assign p3_full_3 = ((read & !write) == 0)? full_2 :
    full_4;

  //control_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_3 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_3 <= 0;
          else 
            full_3 <= p3_full_3;
    end


  //data_2, which is an e_mux
  assign p2_stage_2 = ((full_3 & ~clear_fifo) == 0)? data_in :
    stage_3;

  //data_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_2 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_2))
          if (sync_reset & full_2 & !((full_3 == 0) & read & write))
              stage_2 <= 0;
          else 
            stage_2 <= p2_stage_2;
    end


  //control_2, which is an e_mux
  assign p2_full_2 = ((read & !write) == 0)? full_1 :
    full_3;

  //control_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_2 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_2 <= 0;
          else 
            full_2 <= p2_full_2;
    end


  //data_1, which is an e_mux
  assign p1_stage_1 = ((full_2 & ~clear_fifo) == 0)? data_in :
    stage_2;

  //data_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_1 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_1))
          if (sync_reset & full_1 & !((full_2 == 0) & read & write))
              stage_1 <= 0;
          else 
            stage_1 <= p1_stage_1;
    end


  //control_1, which is an e_mux
  assign p1_full_1 = ((read & !write) == 0)? full_0 :
    full_2;

  //control_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_1 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_1 <= 0;
          else 
            full_1 <= p1_full_1;
    end


  //data_0, which is an e_mux
  assign p0_stage_0 = ((full_1 & ~clear_fifo) == 0)? data_in :
    stage_1;

  //data_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_0 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_0))
          if (sync_reset & full_0 & !((full_1 == 0) & read & write))
              stage_0 <= 0;
          else 
            stage_0 <= p0_stage_0;
    end


  //control_0, which is an e_mux
  assign p0_full_0 = ((read & !write) == 0)? 1 :
    full_1;

  //control_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_0 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo & ~write)
              full_0 <= 0;
          else 
            full_0 <= p0_full_0;
    end


  assign one_count_plus_one = how_many_ones + 1;
  assign one_count_minus_one = how_many_ones - 1;
  //updated_one_count, which is an e_mux
  assign updated_one_count = ((((clear_fifo | sync_reset) & !write)))? 0 :
    ((((clear_fifo | sync_reset) & write)))? |data_in :
    ((read & (|data_in) & write & (|stage_0)))? how_many_ones :
    ((write & (|data_in)))? one_count_plus_one :
    ((read & (|stage_0)))? one_count_minus_one :
    how_many_ones;

  //counts how many ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          how_many_ones <= 0;
      else if (clear_fifo | sync_reset | read | write)
          how_many_ones <= updated_one_count;
    end


  //this fifo contains ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_contains_ones_n <= 1;
      else if (clear_fifo | sync_reset | read | write)
          fifo_contains_ones_n <= ~(|updated_one_count);
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module rdv_fifo_for_CPU_instruction_master_to_SDRAM_s1_module (
                                                                // inputs:
                                                                 clear_fifo,
                                                                 clk,
                                                                 data_in,
                                                                 read,
                                                                 reset_n,
                                                                 sync_reset,
                                                                 write,

                                                                // outputs:
                                                                 data_out,
                                                                 empty,
                                                                 fifo_contains_ones_n,
                                                                 full
                                                              )
;

  output           data_out;
  output           empty;
  output           fifo_contains_ones_n;
  output           full;
  input            clear_fifo;
  input            clk;
  input            data_in;
  input            read;
  input            reset_n;
  input            sync_reset;
  input            write;

  wire             data_out;
  wire             empty;
  reg              fifo_contains_ones_n;
  wire             full;
  reg              full_0;
  reg              full_1;
  reg              full_2;
  reg              full_3;
  reg              full_4;
  reg              full_5;
  reg              full_6;
  wire             full_7;
  reg     [  3: 0] how_many_ones;
  wire    [  3: 0] one_count_minus_one;
  wire    [  3: 0] one_count_plus_one;
  wire             p0_full_0;
  wire             p0_stage_0;
  wire             p1_full_1;
  wire             p1_stage_1;
  wire             p2_full_2;
  wire             p2_stage_2;
  wire             p3_full_3;
  wire             p3_stage_3;
  wire             p4_full_4;
  wire             p4_stage_4;
  wire             p5_full_5;
  wire             p5_stage_5;
  wire             p6_full_6;
  wire             p6_stage_6;
  reg              stage_0;
  reg              stage_1;
  reg              stage_2;
  reg              stage_3;
  reg              stage_4;
  reg              stage_5;
  reg              stage_6;
  wire    [  3: 0] updated_one_count;
  assign data_out = stage_0;
  assign full = full_6;
  assign empty = !full_0;
  assign full_7 = 0;
  //data_6, which is an e_mux
  assign p6_stage_6 = ((full_7 & ~clear_fifo) == 0)? data_in :
    data_in;

  //data_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_6 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_6))
          if (sync_reset & full_6 & !((full_7 == 0) & read & write))
              stage_6 <= 0;
          else 
            stage_6 <= p6_stage_6;
    end


  //control_6, which is an e_mux
  assign p6_full_6 = ((read & !write) == 0)? full_5 :
    0;

  //control_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_6 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_6 <= 0;
          else 
            full_6 <= p6_full_6;
    end


  //data_5, which is an e_mux
  assign p5_stage_5 = ((full_6 & ~clear_fifo) == 0)? data_in :
    stage_6;

  //data_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_5 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_5))
          if (sync_reset & full_5 & !((full_6 == 0) & read & write))
              stage_5 <= 0;
          else 
            stage_5 <= p5_stage_5;
    end


  //control_5, which is an e_mux
  assign p5_full_5 = ((read & !write) == 0)? full_4 :
    full_6;

  //control_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_5 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_5 <= 0;
          else 
            full_5 <= p5_full_5;
    end


  //data_4, which is an e_mux
  assign p4_stage_4 = ((full_5 & ~clear_fifo) == 0)? data_in :
    stage_5;

  //data_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_4 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_4))
          if (sync_reset & full_4 & !((full_5 == 0) & read & write))
              stage_4 <= 0;
          else 
            stage_4 <= p4_stage_4;
    end


  //control_4, which is an e_mux
  assign p4_full_4 = ((read & !write) == 0)? full_3 :
    full_5;

  //control_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_4 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_4 <= 0;
          else 
            full_4 <= p4_full_4;
    end


  //data_3, which is an e_mux
  assign p3_stage_3 = ((full_4 & ~clear_fifo) == 0)? data_in :
    stage_4;

  //data_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_3 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_3))
          if (sync_reset & full_3 & !((full_4 == 0) & read & write))
              stage_3 <= 0;
          else 
            stage_3 <= p3_stage_3;
    end


  //control_3, which is an e_mux
  assign p3_full_3 = ((read & !write) == 0)? full_2 :
    full_4;

  //control_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_3 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_3 <= 0;
          else 
            full_3 <= p3_full_3;
    end


  //data_2, which is an e_mux
  assign p2_stage_2 = ((full_3 & ~clear_fifo) == 0)? data_in :
    stage_3;

  //data_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_2 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_2))
          if (sync_reset & full_2 & !((full_3 == 0) & read & write))
              stage_2 <= 0;
          else 
            stage_2 <= p2_stage_2;
    end


  //control_2, which is an e_mux
  assign p2_full_2 = ((read & !write) == 0)? full_1 :
    full_3;

  //control_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_2 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_2 <= 0;
          else 
            full_2 <= p2_full_2;
    end


  //data_1, which is an e_mux
  assign p1_stage_1 = ((full_2 & ~clear_fifo) == 0)? data_in :
    stage_2;

  //data_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_1 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_1))
          if (sync_reset & full_1 & !((full_2 == 0) & read & write))
              stage_1 <= 0;
          else 
            stage_1 <= p1_stage_1;
    end


  //control_1, which is an e_mux
  assign p1_full_1 = ((read & !write) == 0)? full_0 :
    full_2;

  //control_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_1 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_1 <= 0;
          else 
            full_1 <= p1_full_1;
    end


  //data_0, which is an e_mux
  assign p0_stage_0 = ((full_1 & ~clear_fifo) == 0)? data_in :
    stage_1;

  //data_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_0 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_0))
          if (sync_reset & full_0 & !((full_1 == 0) & read & write))
              stage_0 <= 0;
          else 
            stage_0 <= p0_stage_0;
    end


  //control_0, which is an e_mux
  assign p0_full_0 = ((read & !write) == 0)? 1 :
    full_1;

  //control_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_0 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo & ~write)
              full_0 <= 0;
          else 
            full_0 <= p0_full_0;
    end


  assign one_count_plus_one = how_many_ones + 1;
  assign one_count_minus_one = how_many_ones - 1;
  //updated_one_count, which is an e_mux
  assign updated_one_count = ((((clear_fifo | sync_reset) & !write)))? 0 :
    ((((clear_fifo | sync_reset) & write)))? |data_in :
    ((read & (|data_in) & write & (|stage_0)))? how_many_ones :
    ((write & (|data_in)))? one_count_plus_one :
    ((read & (|stage_0)))? one_count_minus_one :
    how_many_ones;

  //counts how many ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          how_many_ones <= 0;
      else if (clear_fifo | sync_reset | read | write)
          how_many_ones <= updated_one_count;
    end


  //this fifo contains ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_contains_ones_n <= 1;
      else if (clear_fifo | sync_reset | read | write)
          fifo_contains_ones_n <= ~(|updated_one_count);
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module SDRAM_s1_arbitrator (
                             // inputs:
                              CPU_data_master_address_to_slave,
                              CPU_data_master_byteenable,
                              CPU_data_master_dbs_address,
                              CPU_data_master_dbs_write_16,
                              CPU_data_master_no_byte_enables_and_last_term,
                              CPU_data_master_read,
                              CPU_data_master_waitrequest,
                              CPU_data_master_write,
                              CPU_instruction_master_address_to_slave,
                              CPU_instruction_master_dbs_address,
                              CPU_instruction_master_latency_counter,
                              CPU_instruction_master_read,
                              SDRAM_s1_readdata,
                              SDRAM_s1_readdatavalid,
                              SDRAM_s1_waitrequest,
                              clk,
                              reset_n,

                             // outputs:
                              CPU_data_master_byteenable_SDRAM_s1,
                              CPU_data_master_granted_SDRAM_s1,
                              CPU_data_master_qualified_request_SDRAM_s1,
                              CPU_data_master_read_data_valid_SDRAM_s1,
                              CPU_data_master_read_data_valid_SDRAM_s1_shift_register,
                              CPU_data_master_requests_SDRAM_s1,
                              CPU_instruction_master_granted_SDRAM_s1,
                              CPU_instruction_master_qualified_request_SDRAM_s1,
                              CPU_instruction_master_read_data_valid_SDRAM_s1,
                              CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register,
                              CPU_instruction_master_requests_SDRAM_s1,
                              SDRAM_s1_address,
                              SDRAM_s1_byteenable_n,
                              SDRAM_s1_chipselect,
                              SDRAM_s1_read_n,
                              SDRAM_s1_readdata_from_sa,
                              SDRAM_s1_reset_n,
                              SDRAM_s1_waitrequest_from_sa,
                              SDRAM_s1_write_n,
                              SDRAM_s1_writedata,
                              d1_SDRAM_s1_end_xfer
                           )
;

  output  [  1: 0] CPU_data_master_byteenable_SDRAM_s1;
  output           CPU_data_master_granted_SDRAM_s1;
  output           CPU_data_master_qualified_request_SDRAM_s1;
  output           CPU_data_master_read_data_valid_SDRAM_s1;
  output           CPU_data_master_read_data_valid_SDRAM_s1_shift_register;
  output           CPU_data_master_requests_SDRAM_s1;
  output           CPU_instruction_master_granted_SDRAM_s1;
  output           CPU_instruction_master_qualified_request_SDRAM_s1;
  output           CPU_instruction_master_read_data_valid_SDRAM_s1;
  output           CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register;
  output           CPU_instruction_master_requests_SDRAM_s1;
  output  [ 21: 0] SDRAM_s1_address;
  output  [  1: 0] SDRAM_s1_byteenable_n;
  output           SDRAM_s1_chipselect;
  output           SDRAM_s1_read_n;
  output  [ 15: 0] SDRAM_s1_readdata_from_sa;
  output           SDRAM_s1_reset_n;
  output           SDRAM_s1_waitrequest_from_sa;
  output           SDRAM_s1_write_n;
  output  [ 15: 0] SDRAM_s1_writedata;
  output           d1_SDRAM_s1_end_xfer;
  input   [ 24: 0] CPU_data_master_address_to_slave;
  input   [  3: 0] CPU_data_master_byteenable;
  input   [  1: 0] CPU_data_master_dbs_address;
  input   [ 15: 0] CPU_data_master_dbs_write_16;
  input            CPU_data_master_no_byte_enables_and_last_term;
  input            CPU_data_master_read;
  input            CPU_data_master_waitrequest;
  input            CPU_data_master_write;
  input   [ 24: 0] CPU_instruction_master_address_to_slave;
  input   [  1: 0] CPU_instruction_master_dbs_address;
  input            CPU_instruction_master_latency_counter;
  input            CPU_instruction_master_read;
  input   [ 15: 0] SDRAM_s1_readdata;
  input            SDRAM_s1_readdatavalid;
  input            SDRAM_s1_waitrequest;
  input            clk;
  input            reset_n;

  wire             CPU_data_master_arbiterlock;
  wire             CPU_data_master_arbiterlock2;
  wire    [  1: 0] CPU_data_master_byteenable_SDRAM_s1;
  wire    [  1: 0] CPU_data_master_byteenable_SDRAM_s1_segment_0;
  wire    [  1: 0] CPU_data_master_byteenable_SDRAM_s1_segment_1;
  wire             CPU_data_master_continuerequest;
  wire             CPU_data_master_granted_SDRAM_s1;
  wire             CPU_data_master_qualified_request_SDRAM_s1;
  wire             CPU_data_master_rdv_fifo_empty_SDRAM_s1;
  wire             CPU_data_master_rdv_fifo_output_from_SDRAM_s1;
  wire             CPU_data_master_read_data_valid_SDRAM_s1;
  wire             CPU_data_master_read_data_valid_SDRAM_s1_shift_register;
  wire             CPU_data_master_requests_SDRAM_s1;
  wire             CPU_data_master_saved_grant_SDRAM_s1;
  wire             CPU_instruction_master_arbiterlock;
  wire             CPU_instruction_master_arbiterlock2;
  wire             CPU_instruction_master_continuerequest;
  wire             CPU_instruction_master_granted_SDRAM_s1;
  wire             CPU_instruction_master_qualified_request_SDRAM_s1;
  wire             CPU_instruction_master_rdv_fifo_empty_SDRAM_s1;
  wire             CPU_instruction_master_rdv_fifo_output_from_SDRAM_s1;
  wire             CPU_instruction_master_read_data_valid_SDRAM_s1;
  wire             CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register;
  wire             CPU_instruction_master_requests_SDRAM_s1;
  wire             CPU_instruction_master_saved_grant_SDRAM_s1;
  wire    [ 21: 0] SDRAM_s1_address;
  wire             SDRAM_s1_allgrants;
  wire             SDRAM_s1_allow_new_arb_cycle;
  wire             SDRAM_s1_any_bursting_master_saved_grant;
  wire             SDRAM_s1_any_continuerequest;
  reg     [  1: 0] SDRAM_s1_arb_addend;
  wire             SDRAM_s1_arb_counter_enable;
  reg     [  1: 0] SDRAM_s1_arb_share_counter;
  wire    [  1: 0] SDRAM_s1_arb_share_counter_next_value;
  wire    [  1: 0] SDRAM_s1_arb_share_set_values;
  wire    [  1: 0] SDRAM_s1_arb_winner;
  wire             SDRAM_s1_arbitration_holdoff_internal;
  wire             SDRAM_s1_beginbursttransfer_internal;
  wire             SDRAM_s1_begins_xfer;
  wire    [  1: 0] SDRAM_s1_byteenable_n;
  wire             SDRAM_s1_chipselect;
  wire    [  3: 0] SDRAM_s1_chosen_master_double_vector;
  wire    [  1: 0] SDRAM_s1_chosen_master_rot_left;
  wire             SDRAM_s1_end_xfer;
  wire             SDRAM_s1_firsttransfer;
  wire    [  1: 0] SDRAM_s1_grant_vector;
  wire             SDRAM_s1_in_a_read_cycle;
  wire             SDRAM_s1_in_a_write_cycle;
  wire    [  1: 0] SDRAM_s1_master_qreq_vector;
  wire             SDRAM_s1_move_on_to_next_transaction;
  wire             SDRAM_s1_non_bursting_master_requests;
  wire             SDRAM_s1_read_n;
  wire    [ 15: 0] SDRAM_s1_readdata_from_sa;
  wire             SDRAM_s1_readdatavalid_from_sa;
  reg              SDRAM_s1_reg_firsttransfer;
  wire             SDRAM_s1_reset_n;
  reg     [  1: 0] SDRAM_s1_saved_chosen_master_vector;
  reg              SDRAM_s1_slavearbiterlockenable;
  wire             SDRAM_s1_slavearbiterlockenable2;
  wire             SDRAM_s1_unreg_firsttransfer;
  wire             SDRAM_s1_waitrequest_from_sa;
  wire             SDRAM_s1_waits_for_read;
  wire             SDRAM_s1_waits_for_write;
  wire             SDRAM_s1_write_n;
  wire    [ 15: 0] SDRAM_s1_writedata;
  reg              d1_SDRAM_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_SDRAM_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_CPU_data_master_granted_slave_SDRAM_s1;
  reg              last_cycle_CPU_instruction_master_granted_slave_SDRAM_s1;
  wire    [ 24: 0] shifted_address_to_SDRAM_s1_from_CPU_data_master;
  wire    [ 24: 0] shifted_address_to_SDRAM_s1_from_CPU_instruction_master;
  wire             wait_for_SDRAM_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~SDRAM_s1_end_xfer;
    end


  assign SDRAM_s1_begins_xfer = ~d1_reasons_to_wait & ((CPU_data_master_qualified_request_SDRAM_s1 | CPU_instruction_master_qualified_request_SDRAM_s1));
  //assign SDRAM_s1_readdatavalid_from_sa = SDRAM_s1_readdatavalid so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign SDRAM_s1_readdatavalid_from_sa = SDRAM_s1_readdatavalid;

  //assign SDRAM_s1_readdata_from_sa = SDRAM_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign SDRAM_s1_readdata_from_sa = SDRAM_s1_readdata;

  assign CPU_data_master_requests_SDRAM_s1 = ({CPU_data_master_address_to_slave[24 : 23] , 23'b0} == 25'h800000) & (CPU_data_master_read | CPU_data_master_write);
  //assign SDRAM_s1_waitrequest_from_sa = SDRAM_s1_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign SDRAM_s1_waitrequest_from_sa = SDRAM_s1_waitrequest;

  //SDRAM_s1_arb_share_counter set values, which is an e_mux
  assign SDRAM_s1_arb_share_set_values = (CPU_data_master_granted_SDRAM_s1)? 2 :
    (CPU_instruction_master_granted_SDRAM_s1)? 2 :
    (CPU_data_master_granted_SDRAM_s1)? 2 :
    (CPU_instruction_master_granted_SDRAM_s1)? 2 :
    1;

  //SDRAM_s1_non_bursting_master_requests mux, which is an e_mux
  assign SDRAM_s1_non_bursting_master_requests = CPU_data_master_requests_SDRAM_s1 |
    CPU_instruction_master_requests_SDRAM_s1 |
    CPU_data_master_requests_SDRAM_s1 |
    CPU_instruction_master_requests_SDRAM_s1;

  //SDRAM_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign SDRAM_s1_any_bursting_master_saved_grant = 0;

  //SDRAM_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign SDRAM_s1_arb_share_counter_next_value = SDRAM_s1_firsttransfer ? (SDRAM_s1_arb_share_set_values - 1) : |SDRAM_s1_arb_share_counter ? (SDRAM_s1_arb_share_counter - 1) : 0;

  //SDRAM_s1_allgrants all slave grants, which is an e_mux
  assign SDRAM_s1_allgrants = (|SDRAM_s1_grant_vector) |
    (|SDRAM_s1_grant_vector) |
    (|SDRAM_s1_grant_vector) |
    (|SDRAM_s1_grant_vector);

  //SDRAM_s1_end_xfer assignment, which is an e_assign
  assign SDRAM_s1_end_xfer = ~(SDRAM_s1_waits_for_read | SDRAM_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_SDRAM_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_SDRAM_s1 = SDRAM_s1_end_xfer & (~SDRAM_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //SDRAM_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign SDRAM_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_SDRAM_s1 & SDRAM_s1_allgrants) | (end_xfer_arb_share_counter_term_SDRAM_s1 & ~SDRAM_s1_non_bursting_master_requests);

  //SDRAM_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          SDRAM_s1_arb_share_counter <= 0;
      else if (SDRAM_s1_arb_counter_enable)
          SDRAM_s1_arb_share_counter <= SDRAM_s1_arb_share_counter_next_value;
    end


  //SDRAM_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          SDRAM_s1_slavearbiterlockenable <= 0;
      else if ((|SDRAM_s1_master_qreq_vector & end_xfer_arb_share_counter_term_SDRAM_s1) | (end_xfer_arb_share_counter_term_SDRAM_s1 & ~SDRAM_s1_non_bursting_master_requests))
          SDRAM_s1_slavearbiterlockenable <= |SDRAM_s1_arb_share_counter_next_value;
    end


  //CPU/data_master SDRAM/s1 arbiterlock, which is an e_assign
  assign CPU_data_master_arbiterlock = SDRAM_s1_slavearbiterlockenable & CPU_data_master_continuerequest;

  //SDRAM_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign SDRAM_s1_slavearbiterlockenable2 = |SDRAM_s1_arb_share_counter_next_value;

  //CPU/data_master SDRAM/s1 arbiterlock2, which is an e_assign
  assign CPU_data_master_arbiterlock2 = SDRAM_s1_slavearbiterlockenable2 & CPU_data_master_continuerequest;

  //CPU/instruction_master SDRAM/s1 arbiterlock, which is an e_assign
  assign CPU_instruction_master_arbiterlock = SDRAM_s1_slavearbiterlockenable & CPU_instruction_master_continuerequest;

  //CPU/instruction_master SDRAM/s1 arbiterlock2, which is an e_assign
  assign CPU_instruction_master_arbiterlock2 = SDRAM_s1_slavearbiterlockenable2 & CPU_instruction_master_continuerequest;

  //CPU/instruction_master granted SDRAM/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_CPU_instruction_master_granted_slave_SDRAM_s1 <= 0;
      else 
        last_cycle_CPU_instruction_master_granted_slave_SDRAM_s1 <= CPU_instruction_master_saved_grant_SDRAM_s1 ? 1 : (SDRAM_s1_arbitration_holdoff_internal | ~CPU_instruction_master_requests_SDRAM_s1) ? 0 : last_cycle_CPU_instruction_master_granted_slave_SDRAM_s1;
    end


  //CPU_instruction_master_continuerequest continued request, which is an e_mux
  assign CPU_instruction_master_continuerequest = last_cycle_CPU_instruction_master_granted_slave_SDRAM_s1 & CPU_instruction_master_requests_SDRAM_s1;

  //SDRAM_s1_any_continuerequest at least one master continues requesting, which is an e_mux
  assign SDRAM_s1_any_continuerequest = CPU_instruction_master_continuerequest |
    CPU_data_master_continuerequest;

  assign CPU_data_master_qualified_request_SDRAM_s1 = CPU_data_master_requests_SDRAM_s1 & ~((CPU_data_master_read & (~CPU_data_master_waitrequest | (|CPU_data_master_read_data_valid_SDRAM_s1_shift_register))) | ((~CPU_data_master_waitrequest | CPU_data_master_no_byte_enables_and_last_term | !CPU_data_master_byteenable_SDRAM_s1) & CPU_data_master_write) | CPU_instruction_master_arbiterlock);
  //unique name for SDRAM_s1_move_on_to_next_transaction, which is an e_assign
  assign SDRAM_s1_move_on_to_next_transaction = SDRAM_s1_readdatavalid_from_sa;

  //rdv_fifo_for_CPU_data_master_to_SDRAM_s1, which is an e_fifo_with_registered_outputs
  rdv_fifo_for_CPU_data_master_to_SDRAM_s1_module rdv_fifo_for_CPU_data_master_to_SDRAM_s1
    (
      .clear_fifo           (1'b0),
      .clk                  (clk),
      .data_in              (CPU_data_master_granted_SDRAM_s1),
      .data_out             (CPU_data_master_rdv_fifo_output_from_SDRAM_s1),
      .empty                (),
      .fifo_contains_ones_n (CPU_data_master_rdv_fifo_empty_SDRAM_s1),
      .full                 (),
      .read                 (SDRAM_s1_move_on_to_next_transaction),
      .reset_n              (reset_n),
      .sync_reset           (1'b0),
      .write                (in_a_read_cycle & ~SDRAM_s1_waits_for_read)
    );

  assign CPU_data_master_read_data_valid_SDRAM_s1_shift_register = ~CPU_data_master_rdv_fifo_empty_SDRAM_s1;
  //local readdatavalid CPU_data_master_read_data_valid_SDRAM_s1, which is an e_mux
  assign CPU_data_master_read_data_valid_SDRAM_s1 = (SDRAM_s1_readdatavalid_from_sa & CPU_data_master_rdv_fifo_output_from_SDRAM_s1) & ~ CPU_data_master_rdv_fifo_empty_SDRAM_s1;

  //SDRAM_s1_writedata mux, which is an e_mux
  assign SDRAM_s1_writedata = CPU_data_master_dbs_write_16;

  assign CPU_instruction_master_requests_SDRAM_s1 = (({CPU_instruction_master_address_to_slave[24 : 23] , 23'b0} == 25'h800000) & (CPU_instruction_master_read)) & CPU_instruction_master_read;
  //CPU/data_master granted SDRAM/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_CPU_data_master_granted_slave_SDRAM_s1 <= 0;
      else 
        last_cycle_CPU_data_master_granted_slave_SDRAM_s1 <= CPU_data_master_saved_grant_SDRAM_s1 ? 1 : (SDRAM_s1_arbitration_holdoff_internal | ~CPU_data_master_requests_SDRAM_s1) ? 0 : last_cycle_CPU_data_master_granted_slave_SDRAM_s1;
    end


  //CPU_data_master_continuerequest continued request, which is an e_mux
  assign CPU_data_master_continuerequest = last_cycle_CPU_data_master_granted_slave_SDRAM_s1 & CPU_data_master_requests_SDRAM_s1;

  assign CPU_instruction_master_qualified_request_SDRAM_s1 = CPU_instruction_master_requests_SDRAM_s1 & ~((CPU_instruction_master_read & ((CPU_instruction_master_latency_counter != 0) | (1 < CPU_instruction_master_latency_counter))) | CPU_data_master_arbiterlock);
  //rdv_fifo_for_CPU_instruction_master_to_SDRAM_s1, which is an e_fifo_with_registered_outputs
  rdv_fifo_for_CPU_instruction_master_to_SDRAM_s1_module rdv_fifo_for_CPU_instruction_master_to_SDRAM_s1
    (
      .clear_fifo           (1'b0),
      .clk                  (clk),
      .data_in              (CPU_instruction_master_granted_SDRAM_s1),
      .data_out             (CPU_instruction_master_rdv_fifo_output_from_SDRAM_s1),
      .empty                (),
      .fifo_contains_ones_n (CPU_instruction_master_rdv_fifo_empty_SDRAM_s1),
      .full                 (),
      .read                 (SDRAM_s1_move_on_to_next_transaction),
      .reset_n              (reset_n),
      .sync_reset           (1'b0),
      .write                (in_a_read_cycle & ~SDRAM_s1_waits_for_read)
    );

  assign CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register = ~CPU_instruction_master_rdv_fifo_empty_SDRAM_s1;
  //local readdatavalid CPU_instruction_master_read_data_valid_SDRAM_s1, which is an e_mux
  assign CPU_instruction_master_read_data_valid_SDRAM_s1 = (SDRAM_s1_readdatavalid_from_sa & CPU_instruction_master_rdv_fifo_output_from_SDRAM_s1) & ~ CPU_instruction_master_rdv_fifo_empty_SDRAM_s1;

  //allow new arb cycle for SDRAM/s1, which is an e_assign
  assign SDRAM_s1_allow_new_arb_cycle = ~CPU_data_master_arbiterlock & ~CPU_instruction_master_arbiterlock;

  //CPU/instruction_master assignment into master qualified-requests vector for SDRAM/s1, which is an e_assign
  assign SDRAM_s1_master_qreq_vector[0] = CPU_instruction_master_qualified_request_SDRAM_s1;

  //CPU/instruction_master grant SDRAM/s1, which is an e_assign
  assign CPU_instruction_master_granted_SDRAM_s1 = SDRAM_s1_grant_vector[0];

  //CPU/instruction_master saved-grant SDRAM/s1, which is an e_assign
  assign CPU_instruction_master_saved_grant_SDRAM_s1 = SDRAM_s1_arb_winner[0] && CPU_instruction_master_requests_SDRAM_s1;

  //CPU/data_master assignment into master qualified-requests vector for SDRAM/s1, which is an e_assign
  assign SDRAM_s1_master_qreq_vector[1] = CPU_data_master_qualified_request_SDRAM_s1;

  //CPU/data_master grant SDRAM/s1, which is an e_assign
  assign CPU_data_master_granted_SDRAM_s1 = SDRAM_s1_grant_vector[1];

  //CPU/data_master saved-grant SDRAM/s1, which is an e_assign
  assign CPU_data_master_saved_grant_SDRAM_s1 = SDRAM_s1_arb_winner[1] && CPU_data_master_requests_SDRAM_s1;

  //SDRAM/s1 chosen-master double-vector, which is an e_assign
  assign SDRAM_s1_chosen_master_double_vector = {SDRAM_s1_master_qreq_vector, SDRAM_s1_master_qreq_vector} & ({~SDRAM_s1_master_qreq_vector, ~SDRAM_s1_master_qreq_vector} + SDRAM_s1_arb_addend);

  //stable onehot encoding of arb winner
  assign SDRAM_s1_arb_winner = (SDRAM_s1_allow_new_arb_cycle & | SDRAM_s1_grant_vector) ? SDRAM_s1_grant_vector : SDRAM_s1_saved_chosen_master_vector;

  //saved SDRAM_s1_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          SDRAM_s1_saved_chosen_master_vector <= 0;
      else if (SDRAM_s1_allow_new_arb_cycle)
          SDRAM_s1_saved_chosen_master_vector <= |SDRAM_s1_grant_vector ? SDRAM_s1_grant_vector : SDRAM_s1_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign SDRAM_s1_grant_vector = {(SDRAM_s1_chosen_master_double_vector[1] | SDRAM_s1_chosen_master_double_vector[3]),
    (SDRAM_s1_chosen_master_double_vector[0] | SDRAM_s1_chosen_master_double_vector[2])};

  //SDRAM/s1 chosen master rotated left, which is an e_assign
  assign SDRAM_s1_chosen_master_rot_left = (SDRAM_s1_arb_winner << 1) ? (SDRAM_s1_arb_winner << 1) : 1;

  //SDRAM/s1's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          SDRAM_s1_arb_addend <= 1;
      else if (|SDRAM_s1_grant_vector)
          SDRAM_s1_arb_addend <= SDRAM_s1_end_xfer? SDRAM_s1_chosen_master_rot_left : SDRAM_s1_grant_vector;
    end


  //SDRAM_s1_reset_n assignment, which is an e_assign
  assign SDRAM_s1_reset_n = reset_n;

  assign SDRAM_s1_chipselect = CPU_data_master_granted_SDRAM_s1 | CPU_instruction_master_granted_SDRAM_s1;
  //SDRAM_s1_firsttransfer first transaction, which is an e_assign
  assign SDRAM_s1_firsttransfer = SDRAM_s1_begins_xfer ? SDRAM_s1_unreg_firsttransfer : SDRAM_s1_reg_firsttransfer;

  //SDRAM_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign SDRAM_s1_unreg_firsttransfer = ~(SDRAM_s1_slavearbiterlockenable & SDRAM_s1_any_continuerequest);

  //SDRAM_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          SDRAM_s1_reg_firsttransfer <= 1'b1;
      else if (SDRAM_s1_begins_xfer)
          SDRAM_s1_reg_firsttransfer <= SDRAM_s1_unreg_firsttransfer;
    end


  //SDRAM_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign SDRAM_s1_beginbursttransfer_internal = SDRAM_s1_begins_xfer;

  //SDRAM_s1_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign SDRAM_s1_arbitration_holdoff_internal = SDRAM_s1_begins_xfer & SDRAM_s1_firsttransfer;

  //~SDRAM_s1_read_n assignment, which is an e_mux
  assign SDRAM_s1_read_n = ~((CPU_data_master_granted_SDRAM_s1 & CPU_data_master_read) | (CPU_instruction_master_granted_SDRAM_s1 & CPU_instruction_master_read));

  //~SDRAM_s1_write_n assignment, which is an e_mux
  assign SDRAM_s1_write_n = ~(CPU_data_master_granted_SDRAM_s1 & CPU_data_master_write);

  assign shifted_address_to_SDRAM_s1_from_CPU_data_master = {CPU_data_master_address_to_slave >> 2,
    CPU_data_master_dbs_address[1],
    {1 {1'b0}}};

  //SDRAM_s1_address mux, which is an e_mux
  assign SDRAM_s1_address = (CPU_data_master_granted_SDRAM_s1)? (shifted_address_to_SDRAM_s1_from_CPU_data_master >> 1) :
    (shifted_address_to_SDRAM_s1_from_CPU_instruction_master >> 1);

  assign shifted_address_to_SDRAM_s1_from_CPU_instruction_master = {CPU_instruction_master_address_to_slave >> 2,
    CPU_instruction_master_dbs_address[1],
    {1 {1'b0}}};

  //d1_SDRAM_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_SDRAM_s1_end_xfer <= 1;
      else 
        d1_SDRAM_s1_end_xfer <= SDRAM_s1_end_xfer;
    end


  //SDRAM_s1_waits_for_read in a cycle, which is an e_mux
  assign SDRAM_s1_waits_for_read = SDRAM_s1_in_a_read_cycle & SDRAM_s1_waitrequest_from_sa;

  //SDRAM_s1_in_a_read_cycle assignment, which is an e_assign
  assign SDRAM_s1_in_a_read_cycle = (CPU_data_master_granted_SDRAM_s1 & CPU_data_master_read) | (CPU_instruction_master_granted_SDRAM_s1 & CPU_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = SDRAM_s1_in_a_read_cycle;

  //SDRAM_s1_waits_for_write in a cycle, which is an e_mux
  assign SDRAM_s1_waits_for_write = SDRAM_s1_in_a_write_cycle & SDRAM_s1_waitrequest_from_sa;

  //SDRAM_s1_in_a_write_cycle assignment, which is an e_assign
  assign SDRAM_s1_in_a_write_cycle = CPU_data_master_granted_SDRAM_s1 & CPU_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = SDRAM_s1_in_a_write_cycle;

  assign wait_for_SDRAM_s1_counter = 0;
  //~SDRAM_s1_byteenable_n byte enable port mux, which is an e_mux
  assign SDRAM_s1_byteenable_n = ~((CPU_data_master_granted_SDRAM_s1)? CPU_data_master_byteenable_SDRAM_s1 :
    -1);

  assign {CPU_data_master_byteenable_SDRAM_s1_segment_1,
CPU_data_master_byteenable_SDRAM_s1_segment_0} = CPU_data_master_byteenable;
  assign CPU_data_master_byteenable_SDRAM_s1 = ((CPU_data_master_dbs_address[1] == 0))? CPU_data_master_byteenable_SDRAM_s1_segment_0 :
    CPU_data_master_byteenable_SDRAM_s1_segment_1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //SDRAM/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (CPU_data_master_granted_SDRAM_s1 + CPU_instruction_master_granted_SDRAM_s1 > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (CPU_data_master_saved_grant_SDRAM_s1 + CPU_instruction_master_saved_grant_SDRAM_s1 > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module TIMER_s1_arbitrator (
                             // inputs:
                              CPU_data_master_address_to_slave,
                              CPU_data_master_read,
                              CPU_data_master_waitrequest,
                              CPU_data_master_write,
                              CPU_data_master_writedata,
                              TIMER_s1_irq,
                              TIMER_s1_readdata,
                              clk,
                              reset_n,

                             // outputs:
                              CPU_data_master_granted_TIMER_s1,
                              CPU_data_master_qualified_request_TIMER_s1,
                              CPU_data_master_read_data_valid_TIMER_s1,
                              CPU_data_master_requests_TIMER_s1,
                              TIMER_s1_address,
                              TIMER_s1_chipselect,
                              TIMER_s1_irq_from_sa,
                              TIMER_s1_readdata_from_sa,
                              TIMER_s1_reset_n,
                              TIMER_s1_write_n,
                              TIMER_s1_writedata,
                              d1_TIMER_s1_end_xfer
                           )
;

  output           CPU_data_master_granted_TIMER_s1;
  output           CPU_data_master_qualified_request_TIMER_s1;
  output           CPU_data_master_read_data_valid_TIMER_s1;
  output           CPU_data_master_requests_TIMER_s1;
  output  [  2: 0] TIMER_s1_address;
  output           TIMER_s1_chipselect;
  output           TIMER_s1_irq_from_sa;
  output  [ 15: 0] TIMER_s1_readdata_from_sa;
  output           TIMER_s1_reset_n;
  output           TIMER_s1_write_n;
  output  [ 15: 0] TIMER_s1_writedata;
  output           d1_TIMER_s1_end_xfer;
  input   [ 24: 0] CPU_data_master_address_to_slave;
  input            CPU_data_master_read;
  input            CPU_data_master_waitrequest;
  input            CPU_data_master_write;
  input   [ 31: 0] CPU_data_master_writedata;
  input            TIMER_s1_irq;
  input   [ 15: 0] TIMER_s1_readdata;
  input            clk;
  input            reset_n;

  wire             CPU_data_master_arbiterlock;
  wire             CPU_data_master_arbiterlock2;
  wire             CPU_data_master_continuerequest;
  wire             CPU_data_master_granted_TIMER_s1;
  wire             CPU_data_master_qualified_request_TIMER_s1;
  wire             CPU_data_master_read_data_valid_TIMER_s1;
  wire             CPU_data_master_requests_TIMER_s1;
  wire             CPU_data_master_saved_grant_TIMER_s1;
  wire    [  2: 0] TIMER_s1_address;
  wire             TIMER_s1_allgrants;
  wire             TIMER_s1_allow_new_arb_cycle;
  wire             TIMER_s1_any_bursting_master_saved_grant;
  wire             TIMER_s1_any_continuerequest;
  wire             TIMER_s1_arb_counter_enable;
  reg     [  1: 0] TIMER_s1_arb_share_counter;
  wire    [  1: 0] TIMER_s1_arb_share_counter_next_value;
  wire    [  1: 0] TIMER_s1_arb_share_set_values;
  wire             TIMER_s1_beginbursttransfer_internal;
  wire             TIMER_s1_begins_xfer;
  wire             TIMER_s1_chipselect;
  wire             TIMER_s1_end_xfer;
  wire             TIMER_s1_firsttransfer;
  wire             TIMER_s1_grant_vector;
  wire             TIMER_s1_in_a_read_cycle;
  wire             TIMER_s1_in_a_write_cycle;
  wire             TIMER_s1_irq_from_sa;
  wire             TIMER_s1_master_qreq_vector;
  wire             TIMER_s1_non_bursting_master_requests;
  wire    [ 15: 0] TIMER_s1_readdata_from_sa;
  reg              TIMER_s1_reg_firsttransfer;
  wire             TIMER_s1_reset_n;
  reg              TIMER_s1_slavearbiterlockenable;
  wire             TIMER_s1_slavearbiterlockenable2;
  wire             TIMER_s1_unreg_firsttransfer;
  wire             TIMER_s1_waits_for_read;
  wire             TIMER_s1_waits_for_write;
  wire             TIMER_s1_write_n;
  wire    [ 15: 0] TIMER_s1_writedata;
  reg              d1_TIMER_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_TIMER_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 24: 0] shifted_address_to_TIMER_s1_from_CPU_data_master;
  wire             wait_for_TIMER_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~TIMER_s1_end_xfer;
    end


  assign TIMER_s1_begins_xfer = ~d1_reasons_to_wait & ((CPU_data_master_qualified_request_TIMER_s1));
  //assign TIMER_s1_readdata_from_sa = TIMER_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign TIMER_s1_readdata_from_sa = TIMER_s1_readdata;

  assign CPU_data_master_requests_TIMER_s1 = ({CPU_data_master_address_to_slave[24 : 5] , 5'b0} == 25'h1001020) & (CPU_data_master_read | CPU_data_master_write);
  //TIMER_s1_arb_share_counter set values, which is an e_mux
  assign TIMER_s1_arb_share_set_values = 1;

  //TIMER_s1_non_bursting_master_requests mux, which is an e_mux
  assign TIMER_s1_non_bursting_master_requests = CPU_data_master_requests_TIMER_s1;

  //TIMER_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign TIMER_s1_any_bursting_master_saved_grant = 0;

  //TIMER_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign TIMER_s1_arb_share_counter_next_value = TIMER_s1_firsttransfer ? (TIMER_s1_arb_share_set_values - 1) : |TIMER_s1_arb_share_counter ? (TIMER_s1_arb_share_counter - 1) : 0;

  //TIMER_s1_allgrants all slave grants, which is an e_mux
  assign TIMER_s1_allgrants = |TIMER_s1_grant_vector;

  //TIMER_s1_end_xfer assignment, which is an e_assign
  assign TIMER_s1_end_xfer = ~(TIMER_s1_waits_for_read | TIMER_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_TIMER_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_TIMER_s1 = TIMER_s1_end_xfer & (~TIMER_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //TIMER_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign TIMER_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_TIMER_s1 & TIMER_s1_allgrants) | (end_xfer_arb_share_counter_term_TIMER_s1 & ~TIMER_s1_non_bursting_master_requests);

  //TIMER_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          TIMER_s1_arb_share_counter <= 0;
      else if (TIMER_s1_arb_counter_enable)
          TIMER_s1_arb_share_counter <= TIMER_s1_arb_share_counter_next_value;
    end


  //TIMER_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          TIMER_s1_slavearbiterlockenable <= 0;
      else if ((|TIMER_s1_master_qreq_vector & end_xfer_arb_share_counter_term_TIMER_s1) | (end_xfer_arb_share_counter_term_TIMER_s1 & ~TIMER_s1_non_bursting_master_requests))
          TIMER_s1_slavearbiterlockenable <= |TIMER_s1_arb_share_counter_next_value;
    end


  //CPU/data_master TIMER/s1 arbiterlock, which is an e_assign
  assign CPU_data_master_arbiterlock = TIMER_s1_slavearbiterlockenable & CPU_data_master_continuerequest;

  //TIMER_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign TIMER_s1_slavearbiterlockenable2 = |TIMER_s1_arb_share_counter_next_value;

  //CPU/data_master TIMER/s1 arbiterlock2, which is an e_assign
  assign CPU_data_master_arbiterlock2 = TIMER_s1_slavearbiterlockenable2 & CPU_data_master_continuerequest;

  //TIMER_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign TIMER_s1_any_continuerequest = 1;

  //CPU_data_master_continuerequest continued request, which is an e_assign
  assign CPU_data_master_continuerequest = 1;

  assign CPU_data_master_qualified_request_TIMER_s1 = CPU_data_master_requests_TIMER_s1 & ~(((~CPU_data_master_waitrequest) & CPU_data_master_write));
  //TIMER_s1_writedata mux, which is an e_mux
  assign TIMER_s1_writedata = CPU_data_master_writedata;

  //master is always granted when requested
  assign CPU_data_master_granted_TIMER_s1 = CPU_data_master_qualified_request_TIMER_s1;

  //CPU/data_master saved-grant TIMER/s1, which is an e_assign
  assign CPU_data_master_saved_grant_TIMER_s1 = CPU_data_master_requests_TIMER_s1;

  //allow new arb cycle for TIMER/s1, which is an e_assign
  assign TIMER_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign TIMER_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign TIMER_s1_master_qreq_vector = 1;

  //TIMER_s1_reset_n assignment, which is an e_assign
  assign TIMER_s1_reset_n = reset_n;

  assign TIMER_s1_chipselect = CPU_data_master_granted_TIMER_s1;
  //TIMER_s1_firsttransfer first transaction, which is an e_assign
  assign TIMER_s1_firsttransfer = TIMER_s1_begins_xfer ? TIMER_s1_unreg_firsttransfer : TIMER_s1_reg_firsttransfer;

  //TIMER_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign TIMER_s1_unreg_firsttransfer = ~(TIMER_s1_slavearbiterlockenable & TIMER_s1_any_continuerequest);

  //TIMER_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          TIMER_s1_reg_firsttransfer <= 1'b1;
      else if (TIMER_s1_begins_xfer)
          TIMER_s1_reg_firsttransfer <= TIMER_s1_unreg_firsttransfer;
    end


  //TIMER_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign TIMER_s1_beginbursttransfer_internal = TIMER_s1_begins_xfer;

  //~TIMER_s1_write_n assignment, which is an e_mux
  assign TIMER_s1_write_n = ~(CPU_data_master_granted_TIMER_s1 & CPU_data_master_write);

  assign shifted_address_to_TIMER_s1_from_CPU_data_master = CPU_data_master_address_to_slave;
  //TIMER_s1_address mux, which is an e_mux
  assign TIMER_s1_address = shifted_address_to_TIMER_s1_from_CPU_data_master >> 2;

  //d1_TIMER_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_TIMER_s1_end_xfer <= 1;
      else 
        d1_TIMER_s1_end_xfer <= TIMER_s1_end_xfer;
    end


  //TIMER_s1_waits_for_read in a cycle, which is an e_mux
  assign TIMER_s1_waits_for_read = TIMER_s1_in_a_read_cycle & TIMER_s1_begins_xfer;

  //TIMER_s1_in_a_read_cycle assignment, which is an e_assign
  assign TIMER_s1_in_a_read_cycle = CPU_data_master_granted_TIMER_s1 & CPU_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = TIMER_s1_in_a_read_cycle;

  //TIMER_s1_waits_for_write in a cycle, which is an e_mux
  assign TIMER_s1_waits_for_write = TIMER_s1_in_a_write_cycle & 0;

  //TIMER_s1_in_a_write_cycle assignment, which is an e_assign
  assign TIMER_s1_in_a_write_cycle = CPU_data_master_granted_TIMER_s1 & CPU_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = TIMER_s1_in_a_write_cycle;

  assign wait_for_TIMER_s1_counter = 0;
  //assign TIMER_s1_irq_from_sa = TIMER_s1_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign TIMER_s1_irq_from_sa = TIMER_s1_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //TIMER/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module nios_system_reset_clk_domain_synch_module (
                                                   // inputs:
                                                    clk,
                                                    data_in,
                                                    reset_n,

                                                   // outputs:
                                                    data_out
                                                 )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module nios_system (
                     // 1) global signals:
                      clk,
                      reset_n,

                     // the_AV_Config
                      I2C_SCLK_from_the_AV_Config,
                      I2C_SDAT_to_and_from_the_AV_Config,

                     // the_Addr_Read_MEM
                      out_port_from_the_Addr_Read_MEM,

                     // the_Addr_Write_MEM
                      out_port_from_the_Addr_Write_MEM,

                     // the_Audio
                      AUD_ADCDAT_to_the_Audio,
                      AUD_ADCLRCK_to_and_from_the_Audio,
                      AUD_BCLK_to_and_from_the_Audio,
                      AUD_DACDAT_from_the_Audio,
                      AUD_DACLRCK_to_and_from_the_Audio,

                     // the_Data_Read_MEM
                      in_port_to_the_Data_Read_MEM,

                     // the_Data_Write_MEM
                      out_port_from_the_Data_Write_MEM,

                     // the_External_Clocks
                      AUD_XCK_from_the_External_Clocks,
                      DRAM_CLK_from_the_External_Clocks,
                      ext_clk_27_to_the_External_Clocks,
                      ext_clk_50_to_the_External_Clocks,
                      system_clk_from_the_External_Clocks,

                     // the_Green_LEDs
                      LEDG_from_the_Green_LEDs,

                     // the_Out_Ports
                      out_port_from_the_Out_Ports,

                     // the_Pushbuttons
                      KEY_to_the_Pushbuttons,

                     // the_SDRAM
                      zs_addr_from_the_SDRAM,
                      zs_ba_from_the_SDRAM,
                      zs_cas_n_from_the_SDRAM,
                      zs_cke_from_the_SDRAM,
                      zs_cs_n_from_the_SDRAM,
                      zs_dq_to_and_from_the_SDRAM,
                      zs_dqm_from_the_SDRAM,
                      zs_ras_n_from_the_SDRAM,
                      zs_we_n_from_the_SDRAM
                   )
;

  inout            AUD_ADCLRCK_to_and_from_the_Audio;
  inout            AUD_BCLK_to_and_from_the_Audio;
  output           AUD_DACDAT_from_the_Audio;
  inout            AUD_DACLRCK_to_and_from_the_Audio;
  output           AUD_XCK_from_the_External_Clocks;
  output           DRAM_CLK_from_the_External_Clocks;
  output           I2C_SCLK_from_the_AV_Config;
  inout            I2C_SDAT_to_and_from_the_AV_Config;
  output  [  8: 0] LEDG_from_the_Green_LEDs;
  output  [  6: 0] out_port_from_the_Addr_Read_MEM;
  output  [  7: 0] out_port_from_the_Addr_Write_MEM;
  output  [ 31: 0] out_port_from_the_Data_Write_MEM;
  output  [ 31: 0] out_port_from_the_Out_Ports;
  output           system_clk_from_the_External_Clocks;
  output  [ 11: 0] zs_addr_from_the_SDRAM;
  output  [  1: 0] zs_ba_from_the_SDRAM;
  output           zs_cas_n_from_the_SDRAM;
  output           zs_cke_from_the_SDRAM;
  output           zs_cs_n_from_the_SDRAM;
  inout   [ 15: 0] zs_dq_to_and_from_the_SDRAM;
  output  [  1: 0] zs_dqm_from_the_SDRAM;
  output           zs_ras_n_from_the_SDRAM;
  output           zs_we_n_from_the_SDRAM;
  input            AUD_ADCDAT_to_the_Audio;
  input   [  3: 0] KEY_to_the_Pushbuttons;
  input            clk;
  input            ext_clk_27_to_the_External_Clocks;
  input            ext_clk_50_to_the_External_Clocks;
  input   [ 31: 0] in_port_to_the_Data_Read_MEM;
  input            reset_n;

  wire             AUD_ADCLRCK_to_and_from_the_Audio;
  wire             AUD_BCLK_to_and_from_the_Audio;
  wire             AUD_DACDAT_from_the_Audio;
  wire             AUD_DACLRCK_to_and_from_the_Audio;
  wire             AUD_XCK_from_the_External_Clocks;
  wire    [  2: 0] AV_Config_avalon_on_board_config_slave_address;
  wire    [  3: 0] AV_Config_avalon_on_board_config_slave_byteenable;
  wire             AV_Config_avalon_on_board_config_slave_chipselect;
  wire             AV_Config_avalon_on_board_config_slave_read;
  wire    [ 31: 0] AV_Config_avalon_on_board_config_slave_readdata;
  wire    [ 31: 0] AV_Config_avalon_on_board_config_slave_readdata_from_sa;
  wire             AV_Config_avalon_on_board_config_slave_reset;
  wire             AV_Config_avalon_on_board_config_slave_waitrequest;
  wire             AV_Config_avalon_on_board_config_slave_waitrequest_from_sa;
  wire             AV_Config_avalon_on_board_config_slave_write;
  wire    [ 31: 0] AV_Config_avalon_on_board_config_slave_writedata;
  wire    [  1: 0] Addr_Read_MEM_avalon_parallel_port_slave_address;
  wire    [  3: 0] Addr_Read_MEM_avalon_parallel_port_slave_byteenable;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_chipselect;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Addr_Read_MEM_avalon_parallel_port_slave_readdata;
  wire    [ 31: 0] Addr_Read_MEM_avalon_parallel_port_slave_readdata_from_sa;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_reset;
  wire             Addr_Read_MEM_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Addr_Read_MEM_avalon_parallel_port_slave_writedata;
  wire    [  1: 0] Addr_Write_MEM_avalon_parallel_port_slave_address;
  wire    [  3: 0] Addr_Write_MEM_avalon_parallel_port_slave_byteenable;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_chipselect;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Addr_Write_MEM_avalon_parallel_port_slave_readdata;
  wire    [ 31: 0] Addr_Write_MEM_avalon_parallel_port_slave_readdata_from_sa;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_reset;
  wire             Addr_Write_MEM_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Addr_Write_MEM_avalon_parallel_port_slave_writedata;
  wire    [  1: 0] Audio_avalon_audio_slave_address;
  wire             Audio_avalon_audio_slave_chipselect;
  wire             Audio_avalon_audio_slave_irq;
  wire             Audio_avalon_audio_slave_irq_from_sa;
  wire             Audio_avalon_audio_slave_read;
  wire    [ 31: 0] Audio_avalon_audio_slave_readdata;
  wire    [ 31: 0] Audio_avalon_audio_slave_readdata_from_sa;
  wire             Audio_avalon_audio_slave_reset;
  wire             Audio_avalon_audio_slave_write;
  wire    [ 31: 0] Audio_avalon_audio_slave_writedata;
  wire    [  4: 0] CPU_custom_instruction_master_multi_a;
  wire    [  4: 0] CPU_custom_instruction_master_multi_b;
  wire    [  4: 0] CPU_custom_instruction_master_multi_c;
  wire             CPU_custom_instruction_master_multi_clk_en;
  wire    [ 31: 0] CPU_custom_instruction_master_multi_dataa;
  wire    [ 31: 0] CPU_custom_instruction_master_multi_datab;
  wire             CPU_custom_instruction_master_multi_done;
  wire             CPU_custom_instruction_master_multi_estatus;
  wire    [ 31: 0] CPU_custom_instruction_master_multi_ipending;
  wire    [  7: 0] CPU_custom_instruction_master_multi_n;
  wire             CPU_custom_instruction_master_multi_readra;
  wire             CPU_custom_instruction_master_multi_readrb;
  wire    [ 31: 0] CPU_custom_instruction_master_multi_result;
  wire             CPU_custom_instruction_master_multi_start;
  wire             CPU_custom_instruction_master_multi_status;
  wire             CPU_custom_instruction_master_multi_writerc;
  wire             CPU_custom_instruction_master_reset_n;
  wire             CPU_custom_instruction_master_start_CPU_fpoint_s1;
  wire    [ 24: 0] CPU_data_master_address;
  wire    [ 24: 0] CPU_data_master_address_to_slave;
  wire    [  3: 0] CPU_data_master_byteenable;
  wire    [  1: 0] CPU_data_master_byteenable_SDRAM_s1;
  wire    [  1: 0] CPU_data_master_dbs_address;
  wire    [ 15: 0] CPU_data_master_dbs_write_16;
  wire             CPU_data_master_debugaccess;
  wire             CPU_data_master_granted_AV_Config_avalon_on_board_config_slave;
  wire             CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_granted_Audio_avalon_audio_slave;
  wire             CPU_data_master_granted_CPU_jtag_debug_module;
  wire             CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave;
  wire             CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave;
  wire             CPU_data_master_granted_JTAG_UART_avalon_jtag_slave;
  wire             CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave;
  wire             CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave;
  wire             CPU_data_master_granted_SDRAM_s1;
  wire             CPU_data_master_granted_TIMER_s1;
  wire    [ 31: 0] CPU_data_master_irq;
  wire             CPU_data_master_no_byte_enables_and_last_term;
  wire             CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave;
  wire             CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_qualified_request_Audio_avalon_audio_slave;
  wire             CPU_data_master_qualified_request_CPU_jtag_debug_module;
  wire             CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave;
  wire             CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave;
  wire             CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave;
  wire             CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave;
  wire             CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave;
  wire             CPU_data_master_qualified_request_SDRAM_s1;
  wire             CPU_data_master_qualified_request_TIMER_s1;
  wire             CPU_data_master_read;
  wire             CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave;
  wire             CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_read_data_valid_Audio_avalon_audio_slave;
  wire             CPU_data_master_read_data_valid_CPU_jtag_debug_module;
  wire             CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_read_data_valid_External_Clocks_avalon_external_clocks_slave;
  wire             CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  wire             CPU_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave;
  wire             CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave;
  wire             CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  wire             CPU_data_master_read_data_valid_SDRAM_s1;
  wire             CPU_data_master_read_data_valid_SDRAM_s1_shift_register;
  wire             CPU_data_master_read_data_valid_TIMER_s1;
  wire    [ 31: 0] CPU_data_master_readdata;
  wire             CPU_data_master_requests_AV_Config_avalon_on_board_config_slave;
  wire             CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_requests_Audio_avalon_audio_slave;
  wire             CPU_data_master_requests_CPU_jtag_debug_module;
  wire             CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave;
  wire             CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave;
  wire             CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave;
  wire             CPU_data_master_requests_JTAG_UART_avalon_jtag_slave;
  wire             CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave;
  wire             CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave;
  wire             CPU_data_master_requests_SDRAM_s1;
  wire             CPU_data_master_requests_TIMER_s1;
  wire             CPU_data_master_waitrequest;
  wire             CPU_data_master_write;
  wire    [ 31: 0] CPU_data_master_writedata;
  wire             CPU_fpoint_s1_clk_en;
  wire    [ 31: 0] CPU_fpoint_s1_dataa;
  wire    [ 31: 0] CPU_fpoint_s1_datab;
  wire             CPU_fpoint_s1_done;
  wire             CPU_fpoint_s1_done_from_sa;
  wire    [  1: 0] CPU_fpoint_s1_n;
  wire             CPU_fpoint_s1_reset;
  wire    [ 31: 0] CPU_fpoint_s1_result;
  wire    [ 31: 0] CPU_fpoint_s1_result_from_sa;
  wire             CPU_fpoint_s1_select;
  wire             CPU_fpoint_s1_start;
  wire    [ 24: 0] CPU_instruction_master_address;
  wire    [ 24: 0] CPU_instruction_master_address_to_slave;
  wire    [  1: 0] CPU_instruction_master_dbs_address;
  wire             CPU_instruction_master_granted_CPU_jtag_debug_module;
  wire             CPU_instruction_master_granted_SDRAM_s1;
  wire             CPU_instruction_master_latency_counter;
  wire             CPU_instruction_master_qualified_request_CPU_jtag_debug_module;
  wire             CPU_instruction_master_qualified_request_SDRAM_s1;
  wire             CPU_instruction_master_read;
  wire             CPU_instruction_master_read_data_valid_CPU_jtag_debug_module;
  wire             CPU_instruction_master_read_data_valid_SDRAM_s1;
  wire             CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register;
  wire    [ 31: 0] CPU_instruction_master_readdata;
  wire             CPU_instruction_master_readdatavalid;
  wire             CPU_instruction_master_requests_CPU_jtag_debug_module;
  wire             CPU_instruction_master_requests_SDRAM_s1;
  wire             CPU_instruction_master_waitrequest;
  wire    [  8: 0] CPU_jtag_debug_module_address;
  wire             CPU_jtag_debug_module_begintransfer;
  wire    [  3: 0] CPU_jtag_debug_module_byteenable;
  wire             CPU_jtag_debug_module_chipselect;
  wire             CPU_jtag_debug_module_debugaccess;
  wire    [ 31: 0] CPU_jtag_debug_module_readdata;
  wire    [ 31: 0] CPU_jtag_debug_module_readdata_from_sa;
  wire             CPU_jtag_debug_module_resetrequest;
  wire             CPU_jtag_debug_module_resetrequest_from_sa;
  wire             CPU_jtag_debug_module_write;
  wire    [ 31: 0] CPU_jtag_debug_module_writedata;
  wire             DRAM_CLK_from_the_External_Clocks;
  wire    [  1: 0] Data_Read_MEM_avalon_parallel_port_slave_address;
  wire    [  3: 0] Data_Read_MEM_avalon_parallel_port_slave_byteenable;
  wire             Data_Read_MEM_avalon_parallel_port_slave_chipselect;
  wire             Data_Read_MEM_avalon_parallel_port_slave_irq;
  wire             Data_Read_MEM_avalon_parallel_port_slave_irq_from_sa;
  wire             Data_Read_MEM_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Data_Read_MEM_avalon_parallel_port_slave_readdata;
  wire    [ 31: 0] Data_Read_MEM_avalon_parallel_port_slave_readdata_from_sa;
  wire             Data_Read_MEM_avalon_parallel_port_slave_reset;
  wire             Data_Read_MEM_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Data_Read_MEM_avalon_parallel_port_slave_writedata;
  wire    [  1: 0] Data_Write_MEM_avalon_parallel_port_slave_address;
  wire    [  3: 0] Data_Write_MEM_avalon_parallel_port_slave_byteenable;
  wire             Data_Write_MEM_avalon_parallel_port_slave_chipselect;
  wire             Data_Write_MEM_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Data_Write_MEM_avalon_parallel_port_slave_readdata;
  wire    [ 31: 0] Data_Write_MEM_avalon_parallel_port_slave_readdata_from_sa;
  wire             Data_Write_MEM_avalon_parallel_port_slave_reset;
  wire             Data_Write_MEM_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Data_Write_MEM_avalon_parallel_port_slave_writedata;
  wire    [  3: 0] External_Clocks_avalon_external_clocks_slave_byteenable;
  wire             External_Clocks_avalon_external_clocks_slave_chipselect;
  wire             External_Clocks_avalon_external_clocks_slave_read;
  wire    [ 31: 0] External_Clocks_avalon_external_clocks_slave_readdata;
  wire    [ 31: 0] External_Clocks_avalon_external_clocks_slave_readdata_from_sa;
  wire             External_Clocks_avalon_external_clocks_slave_reset;
  wire             External_Clocks_avalon_external_clocks_slave_write;
  wire    [ 31: 0] External_Clocks_avalon_external_clocks_slave_writedata;
  wire    [  1: 0] Green_LEDs_avalon_parallel_port_slave_address;
  wire    [  3: 0] Green_LEDs_avalon_parallel_port_slave_byteenable;
  wire             Green_LEDs_avalon_parallel_port_slave_chipselect;
  wire             Green_LEDs_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Green_LEDs_avalon_parallel_port_slave_readdata;
  wire    [ 31: 0] Green_LEDs_avalon_parallel_port_slave_readdata_from_sa;
  wire             Green_LEDs_avalon_parallel_port_slave_reset;
  wire             Green_LEDs_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Green_LEDs_avalon_parallel_port_slave_writedata;
  wire             I2C_SCLK_from_the_AV_Config;
  wire             I2C_SDAT_to_and_from_the_AV_Config;
  wire             JTAG_UART_avalon_jtag_slave_address;
  wire             JTAG_UART_avalon_jtag_slave_chipselect;
  wire             JTAG_UART_avalon_jtag_slave_dataavailable;
  wire             JTAG_UART_avalon_jtag_slave_dataavailable_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_irq;
  wire             JTAG_UART_avalon_jtag_slave_irq_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_read_n;
  wire    [ 31: 0] JTAG_UART_avalon_jtag_slave_readdata;
  wire    [ 31: 0] JTAG_UART_avalon_jtag_slave_readdata_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_readyfordata;
  wire             JTAG_UART_avalon_jtag_slave_readyfordata_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_reset_n;
  wire             JTAG_UART_avalon_jtag_slave_waitrequest;
  wire             JTAG_UART_avalon_jtag_slave_waitrequest_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_write_n;
  wire    [ 31: 0] JTAG_UART_avalon_jtag_slave_writedata;
  wire    [  8: 0] LEDG_from_the_Green_LEDs;
  wire    [  1: 0] Out_Ports_avalon_parallel_port_slave_address;
  wire    [  3: 0] Out_Ports_avalon_parallel_port_slave_byteenable;
  wire             Out_Ports_avalon_parallel_port_slave_chipselect;
  wire             Out_Ports_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Out_Ports_avalon_parallel_port_slave_readdata;
  wire    [ 31: 0] Out_Ports_avalon_parallel_port_slave_readdata_from_sa;
  wire             Out_Ports_avalon_parallel_port_slave_reset;
  wire             Out_Ports_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Out_Ports_avalon_parallel_port_slave_writedata;
  wire    [  1: 0] Pushbuttons_avalon_parallel_port_slave_address;
  wire    [  3: 0] Pushbuttons_avalon_parallel_port_slave_byteenable;
  wire             Pushbuttons_avalon_parallel_port_slave_chipselect;
  wire             Pushbuttons_avalon_parallel_port_slave_irq;
  wire             Pushbuttons_avalon_parallel_port_slave_irq_from_sa;
  wire             Pushbuttons_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Pushbuttons_avalon_parallel_port_slave_readdata;
  wire    [ 31: 0] Pushbuttons_avalon_parallel_port_slave_readdata_from_sa;
  wire             Pushbuttons_avalon_parallel_port_slave_reset;
  wire             Pushbuttons_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Pushbuttons_avalon_parallel_port_slave_writedata;
  wire    [ 21: 0] SDRAM_s1_address;
  wire    [  1: 0] SDRAM_s1_byteenable_n;
  wire             SDRAM_s1_chipselect;
  wire             SDRAM_s1_read_n;
  wire    [ 15: 0] SDRAM_s1_readdata;
  wire    [ 15: 0] SDRAM_s1_readdata_from_sa;
  wire             SDRAM_s1_readdatavalid;
  wire             SDRAM_s1_reset_n;
  wire             SDRAM_s1_waitrequest;
  wire             SDRAM_s1_waitrequest_from_sa;
  wire             SDRAM_s1_write_n;
  wire    [ 15: 0] SDRAM_s1_writedata;
  wire    [  2: 0] TIMER_s1_address;
  wire             TIMER_s1_chipselect;
  wire             TIMER_s1_irq;
  wire             TIMER_s1_irq_from_sa;
  wire    [ 15: 0] TIMER_s1_readdata;
  wire    [ 15: 0] TIMER_s1_readdata_from_sa;
  wire             TIMER_s1_reset_n;
  wire             TIMER_s1_write_n;
  wire    [ 15: 0] TIMER_s1_writedata;
  wire             clk_reset_n;
  wire             d1_AV_Config_avalon_on_board_config_slave_end_xfer;
  wire             d1_Addr_Read_MEM_avalon_parallel_port_slave_end_xfer;
  wire             d1_Addr_Write_MEM_avalon_parallel_port_slave_end_xfer;
  wire             d1_Audio_avalon_audio_slave_end_xfer;
  wire             d1_CPU_jtag_debug_module_end_xfer;
  wire             d1_Data_Read_MEM_avalon_parallel_port_slave_end_xfer;
  wire             d1_Data_Write_MEM_avalon_parallel_port_slave_end_xfer;
  wire             d1_External_Clocks_avalon_external_clocks_slave_end_xfer;
  wire             d1_Green_LEDs_avalon_parallel_port_slave_end_xfer;
  wire             d1_JTAG_UART_avalon_jtag_slave_end_xfer;
  wire             d1_Out_Ports_avalon_parallel_port_slave_end_xfer;
  wire             d1_Pushbuttons_avalon_parallel_port_slave_end_xfer;
  wire             d1_SDRAM_s1_end_xfer;
  wire             d1_TIMER_s1_end_xfer;
  wire    [  6: 0] out_port_from_the_Addr_Read_MEM;
  wire    [  7: 0] out_port_from_the_Addr_Write_MEM;
  wire    [ 31: 0] out_port_from_the_Data_Write_MEM;
  wire    [ 31: 0] out_port_from_the_Out_Ports;
  wire             registered_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave;
  wire             registered_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave;
  wire             registered_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave;
  wire             registered_CPU_data_master_read_data_valid_Audio_avalon_audio_slave;
  wire             registered_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave;
  wire             registered_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave;
  wire             registered_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  wire             registered_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave;
  wire             registered_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  wire             reset_n_sources;
  wire             system_clk_from_the_External_Clocks;
  wire    [ 11: 0] zs_addr_from_the_SDRAM;
  wire    [  1: 0] zs_ba_from_the_SDRAM;
  wire             zs_cas_n_from_the_SDRAM;
  wire             zs_cke_from_the_SDRAM;
  wire             zs_cs_n_from_the_SDRAM;
  wire    [ 15: 0] zs_dq_to_and_from_the_SDRAM;
  wire    [  1: 0] zs_dqm_from_the_SDRAM;
  wire             zs_ras_n_from_the_SDRAM;
  wire             zs_we_n_from_the_SDRAM;
  AV_Config_avalon_on_board_config_slave_arbitrator the_AV_Config_avalon_on_board_config_slave
    (
      .AV_Config_avalon_on_board_config_slave_address                                    (AV_Config_avalon_on_board_config_slave_address),
      .AV_Config_avalon_on_board_config_slave_byteenable                                 (AV_Config_avalon_on_board_config_slave_byteenable),
      .AV_Config_avalon_on_board_config_slave_chipselect                                 (AV_Config_avalon_on_board_config_slave_chipselect),
      .AV_Config_avalon_on_board_config_slave_read                                       (AV_Config_avalon_on_board_config_slave_read),
      .AV_Config_avalon_on_board_config_slave_readdata                                   (AV_Config_avalon_on_board_config_slave_readdata),
      .AV_Config_avalon_on_board_config_slave_readdata_from_sa                           (AV_Config_avalon_on_board_config_slave_readdata_from_sa),
      .AV_Config_avalon_on_board_config_slave_reset                                      (AV_Config_avalon_on_board_config_slave_reset),
      .AV_Config_avalon_on_board_config_slave_waitrequest                                (AV_Config_avalon_on_board_config_slave_waitrequest),
      .AV_Config_avalon_on_board_config_slave_waitrequest_from_sa                        (AV_Config_avalon_on_board_config_slave_waitrequest_from_sa),
      .AV_Config_avalon_on_board_config_slave_write                                      (AV_Config_avalon_on_board_config_slave_write),
      .AV_Config_avalon_on_board_config_slave_writedata                                  (AV_Config_avalon_on_board_config_slave_writedata),
      .CPU_data_master_address_to_slave                                                  (CPU_data_master_address_to_slave),
      .CPU_data_master_byteenable                                                        (CPU_data_master_byteenable),
      .CPU_data_master_granted_AV_Config_avalon_on_board_config_slave                    (CPU_data_master_granted_AV_Config_avalon_on_board_config_slave),
      .CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave          (CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave),
      .CPU_data_master_read                                                              (CPU_data_master_read),
      .CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave            (CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave),
      .CPU_data_master_requests_AV_Config_avalon_on_board_config_slave                   (CPU_data_master_requests_AV_Config_avalon_on_board_config_slave),
      .CPU_data_master_waitrequest                                                       (CPU_data_master_waitrequest),
      .CPU_data_master_write                                                             (CPU_data_master_write),
      .CPU_data_master_writedata                                                         (CPU_data_master_writedata),
      .clk                                                                               (clk),
      .d1_AV_Config_avalon_on_board_config_slave_end_xfer                                (d1_AV_Config_avalon_on_board_config_slave_end_xfer),
      .registered_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave (registered_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave),
      .reset_n                                                                           (clk_reset_n)
    );

  AV_Config the_AV_Config
    (
      .I2C_SCLK       (I2C_SCLK_from_the_AV_Config),
      .I2C_SDAT       (I2C_SDAT_to_and_from_the_AV_Config),
      .clk            (clk),
      .ob_address     (AV_Config_avalon_on_board_config_slave_address),
      .ob_byteenable  (AV_Config_avalon_on_board_config_slave_byteenable),
      .ob_chipselect  (AV_Config_avalon_on_board_config_slave_chipselect),
      .ob_read        (AV_Config_avalon_on_board_config_slave_read),
      .ob_readdata    (AV_Config_avalon_on_board_config_slave_readdata),
      .ob_waitrequest (AV_Config_avalon_on_board_config_slave_waitrequest),
      .ob_write       (AV_Config_avalon_on_board_config_slave_write),
      .ob_writedata   (AV_Config_avalon_on_board_config_slave_writedata),
      .reset          (AV_Config_avalon_on_board_config_slave_reset)
    );

  Addr_Read_MEM_avalon_parallel_port_slave_arbitrator the_Addr_Read_MEM_avalon_parallel_port_slave
    (
      .Addr_Read_MEM_avalon_parallel_port_slave_address                                    (Addr_Read_MEM_avalon_parallel_port_slave_address),
      .Addr_Read_MEM_avalon_parallel_port_slave_byteenable                                 (Addr_Read_MEM_avalon_parallel_port_slave_byteenable),
      .Addr_Read_MEM_avalon_parallel_port_slave_chipselect                                 (Addr_Read_MEM_avalon_parallel_port_slave_chipselect),
      .Addr_Read_MEM_avalon_parallel_port_slave_read                                       (Addr_Read_MEM_avalon_parallel_port_slave_read),
      .Addr_Read_MEM_avalon_parallel_port_slave_readdata                                   (Addr_Read_MEM_avalon_parallel_port_slave_readdata),
      .Addr_Read_MEM_avalon_parallel_port_slave_readdata_from_sa                           (Addr_Read_MEM_avalon_parallel_port_slave_readdata_from_sa),
      .Addr_Read_MEM_avalon_parallel_port_slave_reset                                      (Addr_Read_MEM_avalon_parallel_port_slave_reset),
      .Addr_Read_MEM_avalon_parallel_port_slave_write                                      (Addr_Read_MEM_avalon_parallel_port_slave_write),
      .Addr_Read_MEM_avalon_parallel_port_slave_writedata                                  (Addr_Read_MEM_avalon_parallel_port_slave_writedata),
      .CPU_data_master_address_to_slave                                                    (CPU_data_master_address_to_slave),
      .CPU_data_master_byteenable                                                          (CPU_data_master_byteenable),
      .CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave                    (CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave          (CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_read                                                                (CPU_data_master_read),
      .CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave            (CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave                   (CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_waitrequest                                                         (CPU_data_master_waitrequest),
      .CPU_data_master_write                                                               (CPU_data_master_write),
      .CPU_data_master_writedata                                                           (CPU_data_master_writedata),
      .clk                                                                                 (clk),
      .d1_Addr_Read_MEM_avalon_parallel_port_slave_end_xfer                                (d1_Addr_Read_MEM_avalon_parallel_port_slave_end_xfer),
      .registered_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave (registered_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave),
      .reset_n                                                                             (clk_reset_n)
    );

  Addr_Read_MEM the_Addr_Read_MEM
    (
      .address    (Addr_Read_MEM_avalon_parallel_port_slave_address),
      .byteenable (Addr_Read_MEM_avalon_parallel_port_slave_byteenable),
      .chipselect (Addr_Read_MEM_avalon_parallel_port_slave_chipselect),
      .clk        (clk),
      .out_port   (out_port_from_the_Addr_Read_MEM),
      .read       (Addr_Read_MEM_avalon_parallel_port_slave_read),
      .readdata   (Addr_Read_MEM_avalon_parallel_port_slave_readdata),
      .reset      (Addr_Read_MEM_avalon_parallel_port_slave_reset),
      .write      (Addr_Read_MEM_avalon_parallel_port_slave_write),
      .writedata  (Addr_Read_MEM_avalon_parallel_port_slave_writedata)
    );

  Addr_Write_MEM_avalon_parallel_port_slave_arbitrator the_Addr_Write_MEM_avalon_parallel_port_slave
    (
      .Addr_Write_MEM_avalon_parallel_port_slave_address                                    (Addr_Write_MEM_avalon_parallel_port_slave_address),
      .Addr_Write_MEM_avalon_parallel_port_slave_byteenable                                 (Addr_Write_MEM_avalon_parallel_port_slave_byteenable),
      .Addr_Write_MEM_avalon_parallel_port_slave_chipselect                                 (Addr_Write_MEM_avalon_parallel_port_slave_chipselect),
      .Addr_Write_MEM_avalon_parallel_port_slave_read                                       (Addr_Write_MEM_avalon_parallel_port_slave_read),
      .Addr_Write_MEM_avalon_parallel_port_slave_readdata                                   (Addr_Write_MEM_avalon_parallel_port_slave_readdata),
      .Addr_Write_MEM_avalon_parallel_port_slave_readdata_from_sa                           (Addr_Write_MEM_avalon_parallel_port_slave_readdata_from_sa),
      .Addr_Write_MEM_avalon_parallel_port_slave_reset                                      (Addr_Write_MEM_avalon_parallel_port_slave_reset),
      .Addr_Write_MEM_avalon_parallel_port_slave_write                                      (Addr_Write_MEM_avalon_parallel_port_slave_write),
      .Addr_Write_MEM_avalon_parallel_port_slave_writedata                                  (Addr_Write_MEM_avalon_parallel_port_slave_writedata),
      .CPU_data_master_address_to_slave                                                     (CPU_data_master_address_to_slave),
      .CPU_data_master_byteenable                                                           (CPU_data_master_byteenable),
      .CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave                    (CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave          (CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_read                                                                 (CPU_data_master_read),
      .CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave            (CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave                   (CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_waitrequest                                                          (CPU_data_master_waitrequest),
      .CPU_data_master_write                                                                (CPU_data_master_write),
      .CPU_data_master_writedata                                                            (CPU_data_master_writedata),
      .clk                                                                                  (clk),
      .d1_Addr_Write_MEM_avalon_parallel_port_slave_end_xfer                                (d1_Addr_Write_MEM_avalon_parallel_port_slave_end_xfer),
      .registered_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave (registered_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave),
      .reset_n                                                                              (clk_reset_n)
    );

  Addr_Write_MEM the_Addr_Write_MEM
    (
      .address    (Addr_Write_MEM_avalon_parallel_port_slave_address),
      .byteenable (Addr_Write_MEM_avalon_parallel_port_slave_byteenable),
      .chipselect (Addr_Write_MEM_avalon_parallel_port_slave_chipselect),
      .clk        (clk),
      .out_port   (out_port_from_the_Addr_Write_MEM),
      .read       (Addr_Write_MEM_avalon_parallel_port_slave_read),
      .readdata   (Addr_Write_MEM_avalon_parallel_port_slave_readdata),
      .reset      (Addr_Write_MEM_avalon_parallel_port_slave_reset),
      .write      (Addr_Write_MEM_avalon_parallel_port_slave_write),
      .writedata  (Addr_Write_MEM_avalon_parallel_port_slave_writedata)
    );

  Audio_avalon_audio_slave_arbitrator the_Audio_avalon_audio_slave
    (
      .Audio_avalon_audio_slave_address                                    (Audio_avalon_audio_slave_address),
      .Audio_avalon_audio_slave_chipselect                                 (Audio_avalon_audio_slave_chipselect),
      .Audio_avalon_audio_slave_irq                                        (Audio_avalon_audio_slave_irq),
      .Audio_avalon_audio_slave_irq_from_sa                                (Audio_avalon_audio_slave_irq_from_sa),
      .Audio_avalon_audio_slave_read                                       (Audio_avalon_audio_slave_read),
      .Audio_avalon_audio_slave_readdata                                   (Audio_avalon_audio_slave_readdata),
      .Audio_avalon_audio_slave_readdata_from_sa                           (Audio_avalon_audio_slave_readdata_from_sa),
      .Audio_avalon_audio_slave_reset                                      (Audio_avalon_audio_slave_reset),
      .Audio_avalon_audio_slave_write                                      (Audio_avalon_audio_slave_write),
      .Audio_avalon_audio_slave_writedata                                  (Audio_avalon_audio_slave_writedata),
      .CPU_data_master_address_to_slave                                    (CPU_data_master_address_to_slave),
      .CPU_data_master_granted_Audio_avalon_audio_slave                    (CPU_data_master_granted_Audio_avalon_audio_slave),
      .CPU_data_master_qualified_request_Audio_avalon_audio_slave          (CPU_data_master_qualified_request_Audio_avalon_audio_slave),
      .CPU_data_master_read                                                (CPU_data_master_read),
      .CPU_data_master_read_data_valid_Audio_avalon_audio_slave            (CPU_data_master_read_data_valid_Audio_avalon_audio_slave),
      .CPU_data_master_requests_Audio_avalon_audio_slave                   (CPU_data_master_requests_Audio_avalon_audio_slave),
      .CPU_data_master_waitrequest                                         (CPU_data_master_waitrequest),
      .CPU_data_master_write                                               (CPU_data_master_write),
      .CPU_data_master_writedata                                           (CPU_data_master_writedata),
      .clk                                                                 (clk),
      .d1_Audio_avalon_audio_slave_end_xfer                                (d1_Audio_avalon_audio_slave_end_xfer),
      .registered_CPU_data_master_read_data_valid_Audio_avalon_audio_slave (registered_CPU_data_master_read_data_valid_Audio_avalon_audio_slave),
      .reset_n                                                             (clk_reset_n)
    );

  Audio the_Audio
    (
      .AUD_ADCDAT  (AUD_ADCDAT_to_the_Audio),
      .AUD_ADCLRCK (AUD_ADCLRCK_to_and_from_the_Audio),
      .AUD_BCLK    (AUD_BCLK_to_and_from_the_Audio),
      .AUD_DACDAT  (AUD_DACDAT_from_the_Audio),
      .AUD_DACLRCK (AUD_DACLRCK_to_and_from_the_Audio),
      .address     (Audio_avalon_audio_slave_address),
      .chipselect  (Audio_avalon_audio_slave_chipselect),
      .clk         (clk),
      .irq         (Audio_avalon_audio_slave_irq),
      .read        (Audio_avalon_audio_slave_read),
      .readdata    (Audio_avalon_audio_slave_readdata),
      .reset       (Audio_avalon_audio_slave_reset),
      .write       (Audio_avalon_audio_slave_write),
      .writedata   (Audio_avalon_audio_slave_writedata)
    );

  CPU_jtag_debug_module_arbitrator the_CPU_jtag_debug_module
    (
      .CPU_data_master_address_to_slave                               (CPU_data_master_address_to_slave),
      .CPU_data_master_byteenable                                     (CPU_data_master_byteenable),
      .CPU_data_master_debugaccess                                    (CPU_data_master_debugaccess),
      .CPU_data_master_granted_CPU_jtag_debug_module                  (CPU_data_master_granted_CPU_jtag_debug_module),
      .CPU_data_master_qualified_request_CPU_jtag_debug_module        (CPU_data_master_qualified_request_CPU_jtag_debug_module),
      .CPU_data_master_read                                           (CPU_data_master_read),
      .CPU_data_master_read_data_valid_CPU_jtag_debug_module          (CPU_data_master_read_data_valid_CPU_jtag_debug_module),
      .CPU_data_master_requests_CPU_jtag_debug_module                 (CPU_data_master_requests_CPU_jtag_debug_module),
      .CPU_data_master_waitrequest                                    (CPU_data_master_waitrequest),
      .CPU_data_master_write                                          (CPU_data_master_write),
      .CPU_data_master_writedata                                      (CPU_data_master_writedata),
      .CPU_instruction_master_address_to_slave                        (CPU_instruction_master_address_to_slave),
      .CPU_instruction_master_granted_CPU_jtag_debug_module           (CPU_instruction_master_granted_CPU_jtag_debug_module),
      .CPU_instruction_master_latency_counter                         (CPU_instruction_master_latency_counter),
      .CPU_instruction_master_qualified_request_CPU_jtag_debug_module (CPU_instruction_master_qualified_request_CPU_jtag_debug_module),
      .CPU_instruction_master_read                                    (CPU_instruction_master_read),
      .CPU_instruction_master_read_data_valid_CPU_jtag_debug_module   (CPU_instruction_master_read_data_valid_CPU_jtag_debug_module),
      .CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register (CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register),
      .CPU_instruction_master_requests_CPU_jtag_debug_module          (CPU_instruction_master_requests_CPU_jtag_debug_module),
      .CPU_jtag_debug_module_address                                  (CPU_jtag_debug_module_address),
      .CPU_jtag_debug_module_begintransfer                            (CPU_jtag_debug_module_begintransfer),
      .CPU_jtag_debug_module_byteenable                               (CPU_jtag_debug_module_byteenable),
      .CPU_jtag_debug_module_chipselect                               (CPU_jtag_debug_module_chipselect),
      .CPU_jtag_debug_module_debugaccess                              (CPU_jtag_debug_module_debugaccess),
      .CPU_jtag_debug_module_readdata                                 (CPU_jtag_debug_module_readdata),
      .CPU_jtag_debug_module_readdata_from_sa                         (CPU_jtag_debug_module_readdata_from_sa),
      .CPU_jtag_debug_module_resetrequest                             (CPU_jtag_debug_module_resetrequest),
      .CPU_jtag_debug_module_resetrequest_from_sa                     (CPU_jtag_debug_module_resetrequest_from_sa),
      .CPU_jtag_debug_module_write                                    (CPU_jtag_debug_module_write),
      .CPU_jtag_debug_module_writedata                                (CPU_jtag_debug_module_writedata),
      .clk                                                            (clk),
      .d1_CPU_jtag_debug_module_end_xfer                              (d1_CPU_jtag_debug_module_end_xfer),
      .reset_n                                                        (clk_reset_n)
    );

  CPU_custom_instruction_master_arbitrator the_CPU_custom_instruction_master
    (
      .CPU_custom_instruction_master_multi_done          (CPU_custom_instruction_master_multi_done),
      .CPU_custom_instruction_master_multi_result        (CPU_custom_instruction_master_multi_result),
      .CPU_custom_instruction_master_multi_start         (CPU_custom_instruction_master_multi_start),
      .CPU_custom_instruction_master_reset_n             (CPU_custom_instruction_master_reset_n),
      .CPU_custom_instruction_master_start_CPU_fpoint_s1 (CPU_custom_instruction_master_start_CPU_fpoint_s1),
      .CPU_fpoint_s1_done_from_sa                        (CPU_fpoint_s1_done_from_sa),
      .CPU_fpoint_s1_result_from_sa                      (CPU_fpoint_s1_result_from_sa),
      .CPU_fpoint_s1_select                              (CPU_fpoint_s1_select),
      .clk                                               (clk),
      .reset_n                                           (clk_reset_n)
    );

  CPU_data_master_arbitrator the_CPU_data_master
    (
      .AV_Config_avalon_on_board_config_slave_readdata_from_sa                              (AV_Config_avalon_on_board_config_slave_readdata_from_sa),
      .AV_Config_avalon_on_board_config_slave_waitrequest_from_sa                           (AV_Config_avalon_on_board_config_slave_waitrequest_from_sa),
      .Addr_Read_MEM_avalon_parallel_port_slave_readdata_from_sa                            (Addr_Read_MEM_avalon_parallel_port_slave_readdata_from_sa),
      .Addr_Write_MEM_avalon_parallel_port_slave_readdata_from_sa                           (Addr_Write_MEM_avalon_parallel_port_slave_readdata_from_sa),
      .Audio_avalon_audio_slave_irq_from_sa                                                 (Audio_avalon_audio_slave_irq_from_sa),
      .Audio_avalon_audio_slave_readdata_from_sa                                            (Audio_avalon_audio_slave_readdata_from_sa),
      .CPU_data_master_address                                                              (CPU_data_master_address),
      .CPU_data_master_address_to_slave                                                     (CPU_data_master_address_to_slave),
      .CPU_data_master_byteenable_SDRAM_s1                                                  (CPU_data_master_byteenable_SDRAM_s1),
      .CPU_data_master_dbs_address                                                          (CPU_data_master_dbs_address),
      .CPU_data_master_dbs_write_16                                                         (CPU_data_master_dbs_write_16),
      .CPU_data_master_granted_AV_Config_avalon_on_board_config_slave                       (CPU_data_master_granted_AV_Config_avalon_on_board_config_slave),
      .CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave                     (CPU_data_master_granted_Addr_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave                    (CPU_data_master_granted_Addr_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_granted_Audio_avalon_audio_slave                                     (CPU_data_master_granted_Audio_avalon_audio_slave),
      .CPU_data_master_granted_CPU_jtag_debug_module                                        (CPU_data_master_granted_CPU_jtag_debug_module),
      .CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave                     (CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave                    (CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave                 (CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave),
      .CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave                        (CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave),
      .CPU_data_master_granted_JTAG_UART_avalon_jtag_slave                                  (CPU_data_master_granted_JTAG_UART_avalon_jtag_slave),
      .CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave                         (CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave),
      .CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave                       (CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave),
      .CPU_data_master_granted_SDRAM_s1                                                     (CPU_data_master_granted_SDRAM_s1),
      .CPU_data_master_granted_TIMER_s1                                                     (CPU_data_master_granted_TIMER_s1),
      .CPU_data_master_irq                                                                  (CPU_data_master_irq),
      .CPU_data_master_no_byte_enables_and_last_term                                        (CPU_data_master_no_byte_enables_and_last_term),
      .CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave             (CPU_data_master_qualified_request_AV_Config_avalon_on_board_config_slave),
      .CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave           (CPU_data_master_qualified_request_Addr_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave          (CPU_data_master_qualified_request_Addr_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_qualified_request_Audio_avalon_audio_slave                           (CPU_data_master_qualified_request_Audio_avalon_audio_slave),
      .CPU_data_master_qualified_request_CPU_jtag_debug_module                              (CPU_data_master_qualified_request_CPU_jtag_debug_module),
      .CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave           (CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave          (CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave       (CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave),
      .CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave              (CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave),
      .CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave                        (CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave),
      .CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave               (CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave),
      .CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave             (CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave),
      .CPU_data_master_qualified_request_SDRAM_s1                                           (CPU_data_master_qualified_request_SDRAM_s1),
      .CPU_data_master_qualified_request_TIMER_s1                                           (CPU_data_master_qualified_request_TIMER_s1),
      .CPU_data_master_read                                                                 (CPU_data_master_read),
      .CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave               (CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave),
      .CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave             (CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave            (CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_read_data_valid_Audio_avalon_audio_slave                             (CPU_data_master_read_data_valid_Audio_avalon_audio_slave),
      .CPU_data_master_read_data_valid_CPU_jtag_debug_module                                (CPU_data_master_read_data_valid_CPU_jtag_debug_module),
      .CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave             (CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave            (CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_read_data_valid_External_Clocks_avalon_external_clocks_slave         (CPU_data_master_read_data_valid_External_Clocks_avalon_external_clocks_slave),
      .CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave                (CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave),
      .CPU_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave                          (CPU_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave),
      .CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave                 (CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave),
      .CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave               (CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave),
      .CPU_data_master_read_data_valid_SDRAM_s1                                             (CPU_data_master_read_data_valid_SDRAM_s1),
      .CPU_data_master_read_data_valid_SDRAM_s1_shift_register                              (CPU_data_master_read_data_valid_SDRAM_s1_shift_register),
      .CPU_data_master_read_data_valid_TIMER_s1                                             (CPU_data_master_read_data_valid_TIMER_s1),
      .CPU_data_master_readdata                                                             (CPU_data_master_readdata),
      .CPU_data_master_requests_AV_Config_avalon_on_board_config_slave                      (CPU_data_master_requests_AV_Config_avalon_on_board_config_slave),
      .CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave                    (CPU_data_master_requests_Addr_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave                   (CPU_data_master_requests_Addr_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_requests_Audio_avalon_audio_slave                                    (CPU_data_master_requests_Audio_avalon_audio_slave),
      .CPU_data_master_requests_CPU_jtag_debug_module                                       (CPU_data_master_requests_CPU_jtag_debug_module),
      .CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave                    (CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave                   (CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave                (CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave),
      .CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave                       (CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave),
      .CPU_data_master_requests_JTAG_UART_avalon_jtag_slave                                 (CPU_data_master_requests_JTAG_UART_avalon_jtag_slave),
      .CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave                        (CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave),
      .CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave                      (CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave),
      .CPU_data_master_requests_SDRAM_s1                                                    (CPU_data_master_requests_SDRAM_s1),
      .CPU_data_master_requests_TIMER_s1                                                    (CPU_data_master_requests_TIMER_s1),
      .CPU_data_master_waitrequest                                                          (CPU_data_master_waitrequest),
      .CPU_data_master_write                                                                (CPU_data_master_write),
      .CPU_data_master_writedata                                                            (CPU_data_master_writedata),
      .CPU_jtag_debug_module_readdata_from_sa                                               (CPU_jtag_debug_module_readdata_from_sa),
      .Data_Read_MEM_avalon_parallel_port_slave_irq_from_sa                                 (Data_Read_MEM_avalon_parallel_port_slave_irq_from_sa),
      .Data_Read_MEM_avalon_parallel_port_slave_readdata_from_sa                            (Data_Read_MEM_avalon_parallel_port_slave_readdata_from_sa),
      .Data_Write_MEM_avalon_parallel_port_slave_readdata_from_sa                           (Data_Write_MEM_avalon_parallel_port_slave_readdata_from_sa),
      .External_Clocks_avalon_external_clocks_slave_readdata_from_sa                        (External_Clocks_avalon_external_clocks_slave_readdata_from_sa),
      .Green_LEDs_avalon_parallel_port_slave_readdata_from_sa                               (Green_LEDs_avalon_parallel_port_slave_readdata_from_sa),
      .JTAG_UART_avalon_jtag_slave_irq_from_sa                                              (JTAG_UART_avalon_jtag_slave_irq_from_sa),
      .JTAG_UART_avalon_jtag_slave_readdata_from_sa                                         (JTAG_UART_avalon_jtag_slave_readdata_from_sa),
      .JTAG_UART_avalon_jtag_slave_waitrequest_from_sa                                      (JTAG_UART_avalon_jtag_slave_waitrequest_from_sa),
      .Out_Ports_avalon_parallel_port_slave_readdata_from_sa                                (Out_Ports_avalon_parallel_port_slave_readdata_from_sa),
      .Pushbuttons_avalon_parallel_port_slave_irq_from_sa                                   (Pushbuttons_avalon_parallel_port_slave_irq_from_sa),
      .Pushbuttons_avalon_parallel_port_slave_readdata_from_sa                              (Pushbuttons_avalon_parallel_port_slave_readdata_from_sa),
      .SDRAM_s1_readdata_from_sa                                                            (SDRAM_s1_readdata_from_sa),
      .SDRAM_s1_waitrequest_from_sa                                                         (SDRAM_s1_waitrequest_from_sa),
      .TIMER_s1_irq_from_sa                                                                 (TIMER_s1_irq_from_sa),
      .TIMER_s1_readdata_from_sa                                                            (TIMER_s1_readdata_from_sa),
      .clk                                                                                  (clk),
      .d1_AV_Config_avalon_on_board_config_slave_end_xfer                                   (d1_AV_Config_avalon_on_board_config_slave_end_xfer),
      .d1_Addr_Read_MEM_avalon_parallel_port_slave_end_xfer                                 (d1_Addr_Read_MEM_avalon_parallel_port_slave_end_xfer),
      .d1_Addr_Write_MEM_avalon_parallel_port_slave_end_xfer                                (d1_Addr_Write_MEM_avalon_parallel_port_slave_end_xfer),
      .d1_Audio_avalon_audio_slave_end_xfer                                                 (d1_Audio_avalon_audio_slave_end_xfer),
      .d1_CPU_jtag_debug_module_end_xfer                                                    (d1_CPU_jtag_debug_module_end_xfer),
      .d1_Data_Read_MEM_avalon_parallel_port_slave_end_xfer                                 (d1_Data_Read_MEM_avalon_parallel_port_slave_end_xfer),
      .d1_Data_Write_MEM_avalon_parallel_port_slave_end_xfer                                (d1_Data_Write_MEM_avalon_parallel_port_slave_end_xfer),
      .d1_External_Clocks_avalon_external_clocks_slave_end_xfer                             (d1_External_Clocks_avalon_external_clocks_slave_end_xfer),
      .d1_Green_LEDs_avalon_parallel_port_slave_end_xfer                                    (d1_Green_LEDs_avalon_parallel_port_slave_end_xfer),
      .d1_JTAG_UART_avalon_jtag_slave_end_xfer                                              (d1_JTAG_UART_avalon_jtag_slave_end_xfer),
      .d1_Out_Ports_avalon_parallel_port_slave_end_xfer                                     (d1_Out_Ports_avalon_parallel_port_slave_end_xfer),
      .d1_Pushbuttons_avalon_parallel_port_slave_end_xfer                                   (d1_Pushbuttons_avalon_parallel_port_slave_end_xfer),
      .d1_SDRAM_s1_end_xfer                                                                 (d1_SDRAM_s1_end_xfer),
      .d1_TIMER_s1_end_xfer                                                                 (d1_TIMER_s1_end_xfer),
      .registered_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave    (registered_CPU_data_master_read_data_valid_AV_Config_avalon_on_board_config_slave),
      .registered_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave  (registered_CPU_data_master_read_data_valid_Addr_Read_MEM_avalon_parallel_port_slave),
      .registered_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave (registered_CPU_data_master_read_data_valid_Addr_Write_MEM_avalon_parallel_port_slave),
      .registered_CPU_data_master_read_data_valid_Audio_avalon_audio_slave                  (registered_CPU_data_master_read_data_valid_Audio_avalon_audio_slave),
      .registered_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave  (registered_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave),
      .registered_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave (registered_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave),
      .registered_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave     (registered_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave),
      .registered_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave      (registered_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave),
      .registered_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave    (registered_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave),
      .reset_n                                                                              (clk_reset_n)
    );

  CPU_instruction_master_arbitrator the_CPU_instruction_master
    (
      .CPU_instruction_master_address                                 (CPU_instruction_master_address),
      .CPU_instruction_master_address_to_slave                        (CPU_instruction_master_address_to_slave),
      .CPU_instruction_master_dbs_address                             (CPU_instruction_master_dbs_address),
      .CPU_instruction_master_granted_CPU_jtag_debug_module           (CPU_instruction_master_granted_CPU_jtag_debug_module),
      .CPU_instruction_master_granted_SDRAM_s1                        (CPU_instruction_master_granted_SDRAM_s1),
      .CPU_instruction_master_latency_counter                         (CPU_instruction_master_latency_counter),
      .CPU_instruction_master_qualified_request_CPU_jtag_debug_module (CPU_instruction_master_qualified_request_CPU_jtag_debug_module),
      .CPU_instruction_master_qualified_request_SDRAM_s1              (CPU_instruction_master_qualified_request_SDRAM_s1),
      .CPU_instruction_master_read                                    (CPU_instruction_master_read),
      .CPU_instruction_master_read_data_valid_CPU_jtag_debug_module   (CPU_instruction_master_read_data_valid_CPU_jtag_debug_module),
      .CPU_instruction_master_read_data_valid_SDRAM_s1                (CPU_instruction_master_read_data_valid_SDRAM_s1),
      .CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register (CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register),
      .CPU_instruction_master_readdata                                (CPU_instruction_master_readdata),
      .CPU_instruction_master_readdatavalid                           (CPU_instruction_master_readdatavalid),
      .CPU_instruction_master_requests_CPU_jtag_debug_module          (CPU_instruction_master_requests_CPU_jtag_debug_module),
      .CPU_instruction_master_requests_SDRAM_s1                       (CPU_instruction_master_requests_SDRAM_s1),
      .CPU_instruction_master_waitrequest                             (CPU_instruction_master_waitrequest),
      .CPU_jtag_debug_module_readdata_from_sa                         (CPU_jtag_debug_module_readdata_from_sa),
      .SDRAM_s1_readdata_from_sa                                      (SDRAM_s1_readdata_from_sa),
      .SDRAM_s1_waitrequest_from_sa                                   (SDRAM_s1_waitrequest_from_sa),
      .clk                                                            (clk),
      .d1_CPU_jtag_debug_module_end_xfer                              (d1_CPU_jtag_debug_module_end_xfer),
      .d1_SDRAM_s1_end_xfer                                           (d1_SDRAM_s1_end_xfer),
      .reset_n                                                        (clk_reset_n)
    );

  CPU the_CPU
    (
      .M_ci_multi_a                          (CPU_custom_instruction_master_multi_a),
      .M_ci_multi_b                          (CPU_custom_instruction_master_multi_b),
      .M_ci_multi_c                          (CPU_custom_instruction_master_multi_c),
      .M_ci_multi_clk_en                     (CPU_custom_instruction_master_multi_clk_en),
      .M_ci_multi_dataa                      (CPU_custom_instruction_master_multi_dataa),
      .M_ci_multi_datab                      (CPU_custom_instruction_master_multi_datab),
      .M_ci_multi_done                       (CPU_custom_instruction_master_multi_done),
      .M_ci_multi_estatus                    (CPU_custom_instruction_master_multi_estatus),
      .M_ci_multi_ipending                   (CPU_custom_instruction_master_multi_ipending),
      .M_ci_multi_n                          (CPU_custom_instruction_master_multi_n),
      .M_ci_multi_readra                     (CPU_custom_instruction_master_multi_readra),
      .M_ci_multi_readrb                     (CPU_custom_instruction_master_multi_readrb),
      .M_ci_multi_result                     (CPU_custom_instruction_master_multi_result),
      .M_ci_multi_start                      (CPU_custom_instruction_master_multi_start),
      .M_ci_multi_status                     (CPU_custom_instruction_master_multi_status),
      .M_ci_multi_writerc                    (CPU_custom_instruction_master_multi_writerc),
      .clk                                   (clk),
      .d_address                             (CPU_data_master_address),
      .d_byteenable                          (CPU_data_master_byteenable),
      .d_irq                                 (CPU_data_master_irq),
      .d_read                                (CPU_data_master_read),
      .d_readdata                            (CPU_data_master_readdata),
      .d_waitrequest                         (CPU_data_master_waitrequest),
      .d_write                               (CPU_data_master_write),
      .d_writedata                           (CPU_data_master_writedata),
      .i_address                             (CPU_instruction_master_address),
      .i_read                                (CPU_instruction_master_read),
      .i_readdata                            (CPU_instruction_master_readdata),
      .i_readdatavalid                       (CPU_instruction_master_readdatavalid),
      .i_waitrequest                         (CPU_instruction_master_waitrequest),
      .jtag_debug_module_address             (CPU_jtag_debug_module_address),
      .jtag_debug_module_begintransfer       (CPU_jtag_debug_module_begintransfer),
      .jtag_debug_module_byteenable          (CPU_jtag_debug_module_byteenable),
      .jtag_debug_module_debugaccess         (CPU_jtag_debug_module_debugaccess),
      .jtag_debug_module_debugaccess_to_roms (CPU_data_master_debugaccess),
      .jtag_debug_module_readdata            (CPU_jtag_debug_module_readdata),
      .jtag_debug_module_resetrequest        (CPU_jtag_debug_module_resetrequest),
      .jtag_debug_module_select              (CPU_jtag_debug_module_chipselect),
      .jtag_debug_module_write               (CPU_jtag_debug_module_write),
      .jtag_debug_module_writedata           (CPU_jtag_debug_module_writedata),
      .reset_n                               (CPU_custom_instruction_master_reset_n)
    );

  CPU_fpoint_s1_arbitrator the_CPU_fpoint_s1
    (
      .CPU_custom_instruction_master_multi_clk_en        (CPU_custom_instruction_master_multi_clk_en),
      .CPU_custom_instruction_master_multi_dataa         (CPU_custom_instruction_master_multi_dataa),
      .CPU_custom_instruction_master_multi_datab         (CPU_custom_instruction_master_multi_datab),
      .CPU_custom_instruction_master_multi_n             (CPU_custom_instruction_master_multi_n),
      .CPU_custom_instruction_master_start_CPU_fpoint_s1 (CPU_custom_instruction_master_start_CPU_fpoint_s1),
      .CPU_fpoint_s1_clk_en                              (CPU_fpoint_s1_clk_en),
      .CPU_fpoint_s1_dataa                               (CPU_fpoint_s1_dataa),
      .CPU_fpoint_s1_datab                               (CPU_fpoint_s1_datab),
      .CPU_fpoint_s1_done                                (CPU_fpoint_s1_done),
      .CPU_fpoint_s1_done_from_sa                        (CPU_fpoint_s1_done_from_sa),
      .CPU_fpoint_s1_n                                   (CPU_fpoint_s1_n),
      .CPU_fpoint_s1_reset                               (CPU_fpoint_s1_reset),
      .CPU_fpoint_s1_result                              (CPU_fpoint_s1_result),
      .CPU_fpoint_s1_result_from_sa                      (CPU_fpoint_s1_result_from_sa),
      .CPU_fpoint_s1_select                              (CPU_fpoint_s1_select),
      .CPU_fpoint_s1_start                               (CPU_fpoint_s1_start),
      .clk                                               (clk),
      .reset_n                                           (clk_reset_n)
    );

  CPU_fpoint the_CPU_fpoint
    (
      .clk    (clk),
      .clk_en (CPU_fpoint_s1_clk_en),
      .dataa  (CPU_fpoint_s1_dataa),
      .datab  (CPU_fpoint_s1_datab),
      .done   (CPU_fpoint_s1_done),
      .n      (CPU_fpoint_s1_n),
      .reset  (CPU_fpoint_s1_reset),
      .result (CPU_fpoint_s1_result),
      .start  (CPU_fpoint_s1_start)
    );

  Data_Read_MEM_avalon_parallel_port_slave_arbitrator the_Data_Read_MEM_avalon_parallel_port_slave
    (
      .CPU_data_master_address_to_slave                                                    (CPU_data_master_address_to_slave),
      .CPU_data_master_byteenable                                                          (CPU_data_master_byteenable),
      .CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave                    (CPU_data_master_granted_Data_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave          (CPU_data_master_qualified_request_Data_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_read                                                                (CPU_data_master_read),
      .CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave            (CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave                   (CPU_data_master_requests_Data_Read_MEM_avalon_parallel_port_slave),
      .CPU_data_master_waitrequest                                                         (CPU_data_master_waitrequest),
      .CPU_data_master_write                                                               (CPU_data_master_write),
      .CPU_data_master_writedata                                                           (CPU_data_master_writedata),
      .Data_Read_MEM_avalon_parallel_port_slave_address                                    (Data_Read_MEM_avalon_parallel_port_slave_address),
      .Data_Read_MEM_avalon_parallel_port_slave_byteenable                                 (Data_Read_MEM_avalon_parallel_port_slave_byteenable),
      .Data_Read_MEM_avalon_parallel_port_slave_chipselect                                 (Data_Read_MEM_avalon_parallel_port_slave_chipselect),
      .Data_Read_MEM_avalon_parallel_port_slave_irq                                        (Data_Read_MEM_avalon_parallel_port_slave_irq),
      .Data_Read_MEM_avalon_parallel_port_slave_irq_from_sa                                (Data_Read_MEM_avalon_parallel_port_slave_irq_from_sa),
      .Data_Read_MEM_avalon_parallel_port_slave_read                                       (Data_Read_MEM_avalon_parallel_port_slave_read),
      .Data_Read_MEM_avalon_parallel_port_slave_readdata                                   (Data_Read_MEM_avalon_parallel_port_slave_readdata),
      .Data_Read_MEM_avalon_parallel_port_slave_readdata_from_sa                           (Data_Read_MEM_avalon_parallel_port_slave_readdata_from_sa),
      .Data_Read_MEM_avalon_parallel_port_slave_reset                                      (Data_Read_MEM_avalon_parallel_port_slave_reset),
      .Data_Read_MEM_avalon_parallel_port_slave_write                                      (Data_Read_MEM_avalon_parallel_port_slave_write),
      .Data_Read_MEM_avalon_parallel_port_slave_writedata                                  (Data_Read_MEM_avalon_parallel_port_slave_writedata),
      .clk                                                                                 (clk),
      .d1_Data_Read_MEM_avalon_parallel_port_slave_end_xfer                                (d1_Data_Read_MEM_avalon_parallel_port_slave_end_xfer),
      .registered_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave (registered_CPU_data_master_read_data_valid_Data_Read_MEM_avalon_parallel_port_slave),
      .reset_n                                                                             (clk_reset_n)
    );

  Data_Read_MEM the_Data_Read_MEM
    (
      .address    (Data_Read_MEM_avalon_parallel_port_slave_address),
      .byteenable (Data_Read_MEM_avalon_parallel_port_slave_byteenable),
      .chipselect (Data_Read_MEM_avalon_parallel_port_slave_chipselect),
      .clk        (clk),
      .in_port    (in_port_to_the_Data_Read_MEM),
      .irq        (Data_Read_MEM_avalon_parallel_port_slave_irq),
      .read       (Data_Read_MEM_avalon_parallel_port_slave_read),
      .readdata   (Data_Read_MEM_avalon_parallel_port_slave_readdata),
      .reset      (Data_Read_MEM_avalon_parallel_port_slave_reset),
      .write      (Data_Read_MEM_avalon_parallel_port_slave_write),
      .writedata  (Data_Read_MEM_avalon_parallel_port_slave_writedata)
    );

  Data_Write_MEM_avalon_parallel_port_slave_arbitrator the_Data_Write_MEM_avalon_parallel_port_slave
    (
      .CPU_data_master_address_to_slave                                                     (CPU_data_master_address_to_slave),
      .CPU_data_master_byteenable                                                           (CPU_data_master_byteenable),
      .CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave                    (CPU_data_master_granted_Data_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave          (CPU_data_master_qualified_request_Data_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_read                                                                 (CPU_data_master_read),
      .CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave            (CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave                   (CPU_data_master_requests_Data_Write_MEM_avalon_parallel_port_slave),
      .CPU_data_master_waitrequest                                                          (CPU_data_master_waitrequest),
      .CPU_data_master_write                                                                (CPU_data_master_write),
      .CPU_data_master_writedata                                                            (CPU_data_master_writedata),
      .Data_Write_MEM_avalon_parallel_port_slave_address                                    (Data_Write_MEM_avalon_parallel_port_slave_address),
      .Data_Write_MEM_avalon_parallel_port_slave_byteenable                                 (Data_Write_MEM_avalon_parallel_port_slave_byteenable),
      .Data_Write_MEM_avalon_parallel_port_slave_chipselect                                 (Data_Write_MEM_avalon_parallel_port_slave_chipselect),
      .Data_Write_MEM_avalon_parallel_port_slave_read                                       (Data_Write_MEM_avalon_parallel_port_slave_read),
      .Data_Write_MEM_avalon_parallel_port_slave_readdata                                   (Data_Write_MEM_avalon_parallel_port_slave_readdata),
      .Data_Write_MEM_avalon_parallel_port_slave_readdata_from_sa                           (Data_Write_MEM_avalon_parallel_port_slave_readdata_from_sa),
      .Data_Write_MEM_avalon_parallel_port_slave_reset                                      (Data_Write_MEM_avalon_parallel_port_slave_reset),
      .Data_Write_MEM_avalon_parallel_port_slave_write                                      (Data_Write_MEM_avalon_parallel_port_slave_write),
      .Data_Write_MEM_avalon_parallel_port_slave_writedata                                  (Data_Write_MEM_avalon_parallel_port_slave_writedata),
      .clk                                                                                  (clk),
      .d1_Data_Write_MEM_avalon_parallel_port_slave_end_xfer                                (d1_Data_Write_MEM_avalon_parallel_port_slave_end_xfer),
      .registered_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave (registered_CPU_data_master_read_data_valid_Data_Write_MEM_avalon_parallel_port_slave),
      .reset_n                                                                              (clk_reset_n)
    );

  Data_Write_MEM the_Data_Write_MEM
    (
      .address    (Data_Write_MEM_avalon_parallel_port_slave_address),
      .byteenable (Data_Write_MEM_avalon_parallel_port_slave_byteenable),
      .chipselect (Data_Write_MEM_avalon_parallel_port_slave_chipselect),
      .clk        (clk),
      .out_port   (out_port_from_the_Data_Write_MEM),
      .read       (Data_Write_MEM_avalon_parallel_port_slave_read),
      .readdata   (Data_Write_MEM_avalon_parallel_port_slave_readdata),
      .reset      (Data_Write_MEM_avalon_parallel_port_slave_reset),
      .write      (Data_Write_MEM_avalon_parallel_port_slave_write),
      .writedata  (Data_Write_MEM_avalon_parallel_port_slave_writedata)
    );

  External_Clocks_avalon_external_clocks_slave_arbitrator the_External_Clocks_avalon_external_clocks_slave
    (
      .CPU_data_master_address_to_slave                                               (CPU_data_master_address_to_slave),
      .CPU_data_master_byteenable                                                     (CPU_data_master_byteenable),
      .CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave           (CPU_data_master_granted_External_Clocks_avalon_external_clocks_slave),
      .CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave (CPU_data_master_qualified_request_External_Clocks_avalon_external_clocks_slave),
      .CPU_data_master_read                                                           (CPU_data_master_read),
      .CPU_data_master_read_data_valid_External_Clocks_avalon_external_clocks_slave   (CPU_data_master_read_data_valid_External_Clocks_avalon_external_clocks_slave),
      .CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave          (CPU_data_master_requests_External_Clocks_avalon_external_clocks_slave),
      .CPU_data_master_waitrequest                                                    (CPU_data_master_waitrequest),
      .CPU_data_master_write                                                          (CPU_data_master_write),
      .CPU_data_master_writedata                                                      (CPU_data_master_writedata),
      .External_Clocks_avalon_external_clocks_slave_byteenable                        (External_Clocks_avalon_external_clocks_slave_byteenable),
      .External_Clocks_avalon_external_clocks_slave_chipselect                        (External_Clocks_avalon_external_clocks_slave_chipselect),
      .External_Clocks_avalon_external_clocks_slave_read                              (External_Clocks_avalon_external_clocks_slave_read),
      .External_Clocks_avalon_external_clocks_slave_readdata                          (External_Clocks_avalon_external_clocks_slave_readdata),
      .External_Clocks_avalon_external_clocks_slave_readdata_from_sa                  (External_Clocks_avalon_external_clocks_slave_readdata_from_sa),
      .External_Clocks_avalon_external_clocks_slave_reset                             (External_Clocks_avalon_external_clocks_slave_reset),
      .External_Clocks_avalon_external_clocks_slave_write                             (External_Clocks_avalon_external_clocks_slave_write),
      .External_Clocks_avalon_external_clocks_slave_writedata                         (External_Clocks_avalon_external_clocks_slave_writedata),
      .clk                                                                            (clk),
      .d1_External_Clocks_avalon_external_clocks_slave_end_xfer                       (d1_External_Clocks_avalon_external_clocks_slave_end_xfer),
      .reset_n                                                                        (clk_reset_n)
    );

  External_Clocks the_External_Clocks
    (
      .AUD_XCK    (AUD_XCK_from_the_External_Clocks),
      .DRAM_CLK   (DRAM_CLK_from_the_External_Clocks),
      .byteenable (External_Clocks_avalon_external_clocks_slave_byteenable),
      .chipselect (External_Clocks_avalon_external_clocks_slave_chipselect),
      .clk        (clk),
      .ext_clk_27 (ext_clk_27_to_the_External_Clocks),
      .ext_clk_50 (ext_clk_50_to_the_External_Clocks),
      .read       (External_Clocks_avalon_external_clocks_slave_read),
      .readdata   (External_Clocks_avalon_external_clocks_slave_readdata),
      .reset      (External_Clocks_avalon_external_clocks_slave_reset),
      .system_clk (system_clk_from_the_External_Clocks),
      .write      (External_Clocks_avalon_external_clocks_slave_write),
      .writedata  (External_Clocks_avalon_external_clocks_slave_writedata)
    );

  Green_LEDs_avalon_parallel_port_slave_arbitrator the_Green_LEDs_avalon_parallel_port_slave
    (
      .CPU_data_master_address_to_slave                                                 (CPU_data_master_address_to_slave),
      .CPU_data_master_byteenable                                                       (CPU_data_master_byteenable),
      .CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave                    (CPU_data_master_granted_Green_LEDs_avalon_parallel_port_slave),
      .CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave          (CPU_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave),
      .CPU_data_master_read                                                             (CPU_data_master_read),
      .CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave            (CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave),
      .CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave                   (CPU_data_master_requests_Green_LEDs_avalon_parallel_port_slave),
      .CPU_data_master_waitrequest                                                      (CPU_data_master_waitrequest),
      .CPU_data_master_write                                                            (CPU_data_master_write),
      .CPU_data_master_writedata                                                        (CPU_data_master_writedata),
      .Green_LEDs_avalon_parallel_port_slave_address                                    (Green_LEDs_avalon_parallel_port_slave_address),
      .Green_LEDs_avalon_parallel_port_slave_byteenable                                 (Green_LEDs_avalon_parallel_port_slave_byteenable),
      .Green_LEDs_avalon_parallel_port_slave_chipselect                                 (Green_LEDs_avalon_parallel_port_slave_chipselect),
      .Green_LEDs_avalon_parallel_port_slave_read                                       (Green_LEDs_avalon_parallel_port_slave_read),
      .Green_LEDs_avalon_parallel_port_slave_readdata                                   (Green_LEDs_avalon_parallel_port_slave_readdata),
      .Green_LEDs_avalon_parallel_port_slave_readdata_from_sa                           (Green_LEDs_avalon_parallel_port_slave_readdata_from_sa),
      .Green_LEDs_avalon_parallel_port_slave_reset                                      (Green_LEDs_avalon_parallel_port_slave_reset),
      .Green_LEDs_avalon_parallel_port_slave_write                                      (Green_LEDs_avalon_parallel_port_slave_write),
      .Green_LEDs_avalon_parallel_port_slave_writedata                                  (Green_LEDs_avalon_parallel_port_slave_writedata),
      .clk                                                                              (clk),
      .d1_Green_LEDs_avalon_parallel_port_slave_end_xfer                                (d1_Green_LEDs_avalon_parallel_port_slave_end_xfer),
      .registered_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave (registered_CPU_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave),
      .reset_n                                                                          (clk_reset_n)
    );

  Green_LEDs the_Green_LEDs
    (
      .LEDG       (LEDG_from_the_Green_LEDs),
      .address    (Green_LEDs_avalon_parallel_port_slave_address),
      .byteenable (Green_LEDs_avalon_parallel_port_slave_byteenable),
      .chipselect (Green_LEDs_avalon_parallel_port_slave_chipselect),
      .clk        (clk),
      .read       (Green_LEDs_avalon_parallel_port_slave_read),
      .readdata   (Green_LEDs_avalon_parallel_port_slave_readdata),
      .reset      (Green_LEDs_avalon_parallel_port_slave_reset),
      .write      (Green_LEDs_avalon_parallel_port_slave_write),
      .writedata  (Green_LEDs_avalon_parallel_port_slave_writedata)
    );

  JTAG_UART_avalon_jtag_slave_arbitrator the_JTAG_UART_avalon_jtag_slave
    (
      .CPU_data_master_address_to_slave                              (CPU_data_master_address_to_slave),
      .CPU_data_master_granted_JTAG_UART_avalon_jtag_slave           (CPU_data_master_granted_JTAG_UART_avalon_jtag_slave),
      .CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave (CPU_data_master_qualified_request_JTAG_UART_avalon_jtag_slave),
      .CPU_data_master_read                                          (CPU_data_master_read),
      .CPU_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave   (CPU_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave),
      .CPU_data_master_requests_JTAG_UART_avalon_jtag_slave          (CPU_data_master_requests_JTAG_UART_avalon_jtag_slave),
      .CPU_data_master_waitrequest                                   (CPU_data_master_waitrequest),
      .CPU_data_master_write                                         (CPU_data_master_write),
      .CPU_data_master_writedata                                     (CPU_data_master_writedata),
      .JTAG_UART_avalon_jtag_slave_address                           (JTAG_UART_avalon_jtag_slave_address),
      .JTAG_UART_avalon_jtag_slave_chipselect                        (JTAG_UART_avalon_jtag_slave_chipselect),
      .JTAG_UART_avalon_jtag_slave_dataavailable                     (JTAG_UART_avalon_jtag_slave_dataavailable),
      .JTAG_UART_avalon_jtag_slave_dataavailable_from_sa             (JTAG_UART_avalon_jtag_slave_dataavailable_from_sa),
      .JTAG_UART_avalon_jtag_slave_irq                               (JTAG_UART_avalon_jtag_slave_irq),
      .JTAG_UART_avalon_jtag_slave_irq_from_sa                       (JTAG_UART_avalon_jtag_slave_irq_from_sa),
      .JTAG_UART_avalon_jtag_slave_read_n                            (JTAG_UART_avalon_jtag_slave_read_n),
      .JTAG_UART_avalon_jtag_slave_readdata                          (JTAG_UART_avalon_jtag_slave_readdata),
      .JTAG_UART_avalon_jtag_slave_readdata_from_sa                  (JTAG_UART_avalon_jtag_slave_readdata_from_sa),
      .JTAG_UART_avalon_jtag_slave_readyfordata                      (JTAG_UART_avalon_jtag_slave_readyfordata),
      .JTAG_UART_avalon_jtag_slave_readyfordata_from_sa              (JTAG_UART_avalon_jtag_slave_readyfordata_from_sa),
      .JTAG_UART_avalon_jtag_slave_reset_n                           (JTAG_UART_avalon_jtag_slave_reset_n),
      .JTAG_UART_avalon_jtag_slave_waitrequest                       (JTAG_UART_avalon_jtag_slave_waitrequest),
      .JTAG_UART_avalon_jtag_slave_waitrequest_from_sa               (JTAG_UART_avalon_jtag_slave_waitrequest_from_sa),
      .JTAG_UART_avalon_jtag_slave_write_n                           (JTAG_UART_avalon_jtag_slave_write_n),
      .JTAG_UART_avalon_jtag_slave_writedata                         (JTAG_UART_avalon_jtag_slave_writedata),
      .clk                                                           (clk),
      .d1_JTAG_UART_avalon_jtag_slave_end_xfer                       (d1_JTAG_UART_avalon_jtag_slave_end_xfer),
      .reset_n                                                       (clk_reset_n)
    );

  JTAG_UART the_JTAG_UART
    (
      .av_address     (JTAG_UART_avalon_jtag_slave_address),
      .av_chipselect  (JTAG_UART_avalon_jtag_slave_chipselect),
      .av_irq         (JTAG_UART_avalon_jtag_slave_irq),
      .av_read_n      (JTAG_UART_avalon_jtag_slave_read_n),
      .av_readdata    (JTAG_UART_avalon_jtag_slave_readdata),
      .av_waitrequest (JTAG_UART_avalon_jtag_slave_waitrequest),
      .av_write_n     (JTAG_UART_avalon_jtag_slave_write_n),
      .av_writedata   (JTAG_UART_avalon_jtag_slave_writedata),
      .clk            (clk),
      .dataavailable  (JTAG_UART_avalon_jtag_slave_dataavailable),
      .readyfordata   (JTAG_UART_avalon_jtag_slave_readyfordata),
      .rst_n          (JTAG_UART_avalon_jtag_slave_reset_n)
    );

  Out_Ports_avalon_parallel_port_slave_arbitrator the_Out_Ports_avalon_parallel_port_slave
    (
      .CPU_data_master_address_to_slave                                                (CPU_data_master_address_to_slave),
      .CPU_data_master_byteenable                                                      (CPU_data_master_byteenable),
      .CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave                    (CPU_data_master_granted_Out_Ports_avalon_parallel_port_slave),
      .CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave          (CPU_data_master_qualified_request_Out_Ports_avalon_parallel_port_slave),
      .CPU_data_master_read                                                            (CPU_data_master_read),
      .CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave            (CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave),
      .CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave                   (CPU_data_master_requests_Out_Ports_avalon_parallel_port_slave),
      .CPU_data_master_waitrequest                                                     (CPU_data_master_waitrequest),
      .CPU_data_master_write                                                           (CPU_data_master_write),
      .CPU_data_master_writedata                                                       (CPU_data_master_writedata),
      .Out_Ports_avalon_parallel_port_slave_address                                    (Out_Ports_avalon_parallel_port_slave_address),
      .Out_Ports_avalon_parallel_port_slave_byteenable                                 (Out_Ports_avalon_parallel_port_slave_byteenable),
      .Out_Ports_avalon_parallel_port_slave_chipselect                                 (Out_Ports_avalon_parallel_port_slave_chipselect),
      .Out_Ports_avalon_parallel_port_slave_read                                       (Out_Ports_avalon_parallel_port_slave_read),
      .Out_Ports_avalon_parallel_port_slave_readdata                                   (Out_Ports_avalon_parallel_port_slave_readdata),
      .Out_Ports_avalon_parallel_port_slave_readdata_from_sa                           (Out_Ports_avalon_parallel_port_slave_readdata_from_sa),
      .Out_Ports_avalon_parallel_port_slave_reset                                      (Out_Ports_avalon_parallel_port_slave_reset),
      .Out_Ports_avalon_parallel_port_slave_write                                      (Out_Ports_avalon_parallel_port_slave_write),
      .Out_Ports_avalon_parallel_port_slave_writedata                                  (Out_Ports_avalon_parallel_port_slave_writedata),
      .clk                                                                             (clk),
      .d1_Out_Ports_avalon_parallel_port_slave_end_xfer                                (d1_Out_Ports_avalon_parallel_port_slave_end_xfer),
      .registered_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave (registered_CPU_data_master_read_data_valid_Out_Ports_avalon_parallel_port_slave),
      .reset_n                                                                         (clk_reset_n)
    );

  Out_Ports the_Out_Ports
    (
      .address    (Out_Ports_avalon_parallel_port_slave_address),
      .byteenable (Out_Ports_avalon_parallel_port_slave_byteenable),
      .chipselect (Out_Ports_avalon_parallel_port_slave_chipselect),
      .clk        (clk),
      .out_port   (out_port_from_the_Out_Ports),
      .read       (Out_Ports_avalon_parallel_port_slave_read),
      .readdata   (Out_Ports_avalon_parallel_port_slave_readdata),
      .reset      (Out_Ports_avalon_parallel_port_slave_reset),
      .write      (Out_Ports_avalon_parallel_port_slave_write),
      .writedata  (Out_Ports_avalon_parallel_port_slave_writedata)
    );

  Pushbuttons_avalon_parallel_port_slave_arbitrator the_Pushbuttons_avalon_parallel_port_slave
    (
      .CPU_data_master_address_to_slave                                                  (CPU_data_master_address_to_slave),
      .CPU_data_master_byteenable                                                        (CPU_data_master_byteenable),
      .CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave                    (CPU_data_master_granted_Pushbuttons_avalon_parallel_port_slave),
      .CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave          (CPU_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave),
      .CPU_data_master_read                                                              (CPU_data_master_read),
      .CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave            (CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave),
      .CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave                   (CPU_data_master_requests_Pushbuttons_avalon_parallel_port_slave),
      .CPU_data_master_waitrequest                                                       (CPU_data_master_waitrequest),
      .CPU_data_master_write                                                             (CPU_data_master_write),
      .CPU_data_master_writedata                                                         (CPU_data_master_writedata),
      .Pushbuttons_avalon_parallel_port_slave_address                                    (Pushbuttons_avalon_parallel_port_slave_address),
      .Pushbuttons_avalon_parallel_port_slave_byteenable                                 (Pushbuttons_avalon_parallel_port_slave_byteenable),
      .Pushbuttons_avalon_parallel_port_slave_chipselect                                 (Pushbuttons_avalon_parallel_port_slave_chipselect),
      .Pushbuttons_avalon_parallel_port_slave_irq                                        (Pushbuttons_avalon_parallel_port_slave_irq),
      .Pushbuttons_avalon_parallel_port_slave_irq_from_sa                                (Pushbuttons_avalon_parallel_port_slave_irq_from_sa),
      .Pushbuttons_avalon_parallel_port_slave_read                                       (Pushbuttons_avalon_parallel_port_slave_read),
      .Pushbuttons_avalon_parallel_port_slave_readdata                                   (Pushbuttons_avalon_parallel_port_slave_readdata),
      .Pushbuttons_avalon_parallel_port_slave_readdata_from_sa                           (Pushbuttons_avalon_parallel_port_slave_readdata_from_sa),
      .Pushbuttons_avalon_parallel_port_slave_reset                                      (Pushbuttons_avalon_parallel_port_slave_reset),
      .Pushbuttons_avalon_parallel_port_slave_write                                      (Pushbuttons_avalon_parallel_port_slave_write),
      .Pushbuttons_avalon_parallel_port_slave_writedata                                  (Pushbuttons_avalon_parallel_port_slave_writedata),
      .clk                                                                               (clk),
      .d1_Pushbuttons_avalon_parallel_port_slave_end_xfer                                (d1_Pushbuttons_avalon_parallel_port_slave_end_xfer),
      .registered_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave (registered_CPU_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave),
      .reset_n                                                                           (clk_reset_n)
    );

  Pushbuttons the_Pushbuttons
    (
      .KEY        (KEY_to_the_Pushbuttons),
      .address    (Pushbuttons_avalon_parallel_port_slave_address),
      .byteenable (Pushbuttons_avalon_parallel_port_slave_byteenable),
      .chipselect (Pushbuttons_avalon_parallel_port_slave_chipselect),
      .clk        (clk),
      .irq        (Pushbuttons_avalon_parallel_port_slave_irq),
      .read       (Pushbuttons_avalon_parallel_port_slave_read),
      .readdata   (Pushbuttons_avalon_parallel_port_slave_readdata),
      .reset      (Pushbuttons_avalon_parallel_port_slave_reset),
      .write      (Pushbuttons_avalon_parallel_port_slave_write),
      .writedata  (Pushbuttons_avalon_parallel_port_slave_writedata)
    );

  SDRAM_s1_arbitrator the_SDRAM_s1
    (
      .CPU_data_master_address_to_slave                               (CPU_data_master_address_to_slave),
      .CPU_data_master_byteenable                                     (CPU_data_master_byteenable),
      .CPU_data_master_byteenable_SDRAM_s1                            (CPU_data_master_byteenable_SDRAM_s1),
      .CPU_data_master_dbs_address                                    (CPU_data_master_dbs_address),
      .CPU_data_master_dbs_write_16                                   (CPU_data_master_dbs_write_16),
      .CPU_data_master_granted_SDRAM_s1                               (CPU_data_master_granted_SDRAM_s1),
      .CPU_data_master_no_byte_enables_and_last_term                  (CPU_data_master_no_byte_enables_and_last_term),
      .CPU_data_master_qualified_request_SDRAM_s1                     (CPU_data_master_qualified_request_SDRAM_s1),
      .CPU_data_master_read                                           (CPU_data_master_read),
      .CPU_data_master_read_data_valid_SDRAM_s1                       (CPU_data_master_read_data_valid_SDRAM_s1),
      .CPU_data_master_read_data_valid_SDRAM_s1_shift_register        (CPU_data_master_read_data_valid_SDRAM_s1_shift_register),
      .CPU_data_master_requests_SDRAM_s1                              (CPU_data_master_requests_SDRAM_s1),
      .CPU_data_master_waitrequest                                    (CPU_data_master_waitrequest),
      .CPU_data_master_write                                          (CPU_data_master_write),
      .CPU_instruction_master_address_to_slave                        (CPU_instruction_master_address_to_slave),
      .CPU_instruction_master_dbs_address                             (CPU_instruction_master_dbs_address),
      .CPU_instruction_master_granted_SDRAM_s1                        (CPU_instruction_master_granted_SDRAM_s1),
      .CPU_instruction_master_latency_counter                         (CPU_instruction_master_latency_counter),
      .CPU_instruction_master_qualified_request_SDRAM_s1              (CPU_instruction_master_qualified_request_SDRAM_s1),
      .CPU_instruction_master_read                                    (CPU_instruction_master_read),
      .CPU_instruction_master_read_data_valid_SDRAM_s1                (CPU_instruction_master_read_data_valid_SDRAM_s1),
      .CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register (CPU_instruction_master_read_data_valid_SDRAM_s1_shift_register),
      .CPU_instruction_master_requests_SDRAM_s1                       (CPU_instruction_master_requests_SDRAM_s1),
      .SDRAM_s1_address                                               (SDRAM_s1_address),
      .SDRAM_s1_byteenable_n                                          (SDRAM_s1_byteenable_n),
      .SDRAM_s1_chipselect                                            (SDRAM_s1_chipselect),
      .SDRAM_s1_read_n                                                (SDRAM_s1_read_n),
      .SDRAM_s1_readdata                                              (SDRAM_s1_readdata),
      .SDRAM_s1_readdata_from_sa                                      (SDRAM_s1_readdata_from_sa),
      .SDRAM_s1_readdatavalid                                         (SDRAM_s1_readdatavalid),
      .SDRAM_s1_reset_n                                               (SDRAM_s1_reset_n),
      .SDRAM_s1_waitrequest                                           (SDRAM_s1_waitrequest),
      .SDRAM_s1_waitrequest_from_sa                                   (SDRAM_s1_waitrequest_from_sa),
      .SDRAM_s1_write_n                                               (SDRAM_s1_write_n),
      .SDRAM_s1_writedata                                             (SDRAM_s1_writedata),
      .clk                                                            (clk),
      .d1_SDRAM_s1_end_xfer                                           (d1_SDRAM_s1_end_xfer),
      .reset_n                                                        (clk_reset_n)
    );

  SDRAM the_SDRAM
    (
      .az_addr        (SDRAM_s1_address),
      .az_be_n        (SDRAM_s1_byteenable_n),
      .az_cs          (SDRAM_s1_chipselect),
      .az_data        (SDRAM_s1_writedata),
      .az_rd_n        (SDRAM_s1_read_n),
      .az_wr_n        (SDRAM_s1_write_n),
      .clk            (clk),
      .reset_n        (SDRAM_s1_reset_n),
      .za_data        (SDRAM_s1_readdata),
      .za_valid       (SDRAM_s1_readdatavalid),
      .za_waitrequest (SDRAM_s1_waitrequest),
      .zs_addr        (zs_addr_from_the_SDRAM),
      .zs_ba          (zs_ba_from_the_SDRAM),
      .zs_cas_n       (zs_cas_n_from_the_SDRAM),
      .zs_cke         (zs_cke_from_the_SDRAM),
      .zs_cs_n        (zs_cs_n_from_the_SDRAM),
      .zs_dq          (zs_dq_to_and_from_the_SDRAM),
      .zs_dqm         (zs_dqm_from_the_SDRAM),
      .zs_ras_n       (zs_ras_n_from_the_SDRAM),
      .zs_we_n        (zs_we_n_from_the_SDRAM)
    );

  TIMER_s1_arbitrator the_TIMER_s1
    (
      .CPU_data_master_address_to_slave           (CPU_data_master_address_to_slave),
      .CPU_data_master_granted_TIMER_s1           (CPU_data_master_granted_TIMER_s1),
      .CPU_data_master_qualified_request_TIMER_s1 (CPU_data_master_qualified_request_TIMER_s1),
      .CPU_data_master_read                       (CPU_data_master_read),
      .CPU_data_master_read_data_valid_TIMER_s1   (CPU_data_master_read_data_valid_TIMER_s1),
      .CPU_data_master_requests_TIMER_s1          (CPU_data_master_requests_TIMER_s1),
      .CPU_data_master_waitrequest                (CPU_data_master_waitrequest),
      .CPU_data_master_write                      (CPU_data_master_write),
      .CPU_data_master_writedata                  (CPU_data_master_writedata),
      .TIMER_s1_address                           (TIMER_s1_address),
      .TIMER_s1_chipselect                        (TIMER_s1_chipselect),
      .TIMER_s1_irq                               (TIMER_s1_irq),
      .TIMER_s1_irq_from_sa                       (TIMER_s1_irq_from_sa),
      .TIMER_s1_readdata                          (TIMER_s1_readdata),
      .TIMER_s1_readdata_from_sa                  (TIMER_s1_readdata_from_sa),
      .TIMER_s1_reset_n                           (TIMER_s1_reset_n),
      .TIMER_s1_write_n                           (TIMER_s1_write_n),
      .TIMER_s1_writedata                         (TIMER_s1_writedata),
      .clk                                        (clk),
      .d1_TIMER_s1_end_xfer                       (d1_TIMER_s1_end_xfer),
      .reset_n                                    (clk_reset_n)
    );

  TIMER the_TIMER
    (
      .address    (TIMER_s1_address),
      .chipselect (TIMER_s1_chipselect),
      .clk        (clk),
      .irq        (TIMER_s1_irq),
      .readdata   (TIMER_s1_readdata),
      .reset_n    (TIMER_s1_reset_n),
      .write_n    (TIMER_s1_write_n),
      .writedata  (TIMER_s1_writedata)
    );

  //reset is asserted asynchronously and deasserted synchronously
  nios_system_reset_clk_domain_synch_module nios_system_reset_clk_domain_synch
    (
      .clk      (clk),
      .data_in  (1'b1),
      .data_out (clk_reset_n),
      .reset_n  (reset_n_sources)
    );

  //reset sources mux, which is an e_mux
  assign reset_n_sources = ~(~reset_n |
    0 |
    CPU_jtag_debug_module_resetrequest_from_sa |
    CPU_jtag_debug_module_resetrequest_from_sa);


endmodule


//synthesis translate_off



// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE

// AND HERE WILL BE PRESERVED </ALTERA_NOTE>


// If user logic components use Altsync_Ram with convert_hex2ver.dll,
// set USE_convert_hex2ver in the user comments section above

// `ifdef USE_convert_hex2ver
// `else
// `define NO_PLI 1
// `endif

`include "d:/01_install/02_quatus_nios/quartus/eda/sim_lib/altera_mf.v"
`include "d:/01_install/02_quatus_nios/quartus/eda/sim_lib/220model.v"
`include "d:/01_install/02_quatus_nios/quartus/eda/sim_lib/sgate.v"
`include "Addr_Read_MEM.v"
`include "Pushbuttons.v"
`include "Addr_Write_MEM.v"
`include "Data_Read_MEM.v"
`include "Data_Write_MEM.v"
`include "Green_LEDs.v"
`include "AV_Config.v"
`include "Out_Ports.v"
`include "External_Clocks.v"
`include "Audio.v"
`include "JTAG_UART.v"
`include "CPU_test_bench.v"
`include "CPU_mult_cell.v"
`include "CPU_oci_test_bench.v"
`include "CPU_jtag_debug_module_tck.v"
`include "CPU_jtag_debug_module_sysclk.v"
`include "CPU_jtag_debug_module_wrapper.v"
`include "CPU.v"
`include "SDRAM.v"
`include "CPU_fpoint.v"
`include "TIMER.v"

`timescale 1ns / 1ps

module test_bench 
;


  wire             AUD_ADCDAT_to_the_Audio;
  wire             AUD_ADCLRCK_to_and_from_the_Audio;
  wire             AUD_BCLK_to_and_from_the_Audio;
  wire             AUD_DACDAT_from_the_Audio;
  wire             AUD_DACLRCK_to_and_from_the_Audio;
  wire             AUD_XCK_from_the_External_Clocks;
  wire    [  4: 0] CPU_custom_instruction_master_multi_a;
  wire    [  4: 0] CPU_custom_instruction_master_multi_b;
  wire    [  4: 0] CPU_custom_instruction_master_multi_c;
  wire             CPU_custom_instruction_master_multi_estatus;
  wire    [ 31: 0] CPU_custom_instruction_master_multi_ipending;
  wire             CPU_custom_instruction_master_multi_readra;
  wire             CPU_custom_instruction_master_multi_readrb;
  wire             CPU_custom_instruction_master_multi_status;
  wire             CPU_custom_instruction_master_multi_writerc;
  wire             DRAM_CLK_from_the_External_Clocks;
  wire             I2C_SCLK_from_the_AV_Config;
  wire             I2C_SDAT_to_and_from_the_AV_Config;
  wire             JTAG_UART_avalon_jtag_slave_dataavailable_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_readyfordata_from_sa;
  wire    [  3: 0] KEY_to_the_Pushbuttons;
  wire    [  8: 0] LEDG_from_the_Green_LEDs;
  reg              clk;
  wire             ext_clk_27_to_the_External_Clocks;
  wire             ext_clk_50_to_the_External_Clocks;
  wire    [ 31: 0] in_port_to_the_Data_Read_MEM;
  wire    [  6: 0] out_port_from_the_Addr_Read_MEM;
  wire    [  7: 0] out_port_from_the_Addr_Write_MEM;
  wire    [ 31: 0] out_port_from_the_Data_Write_MEM;
  wire    [ 31: 0] out_port_from_the_Out_Ports;
  reg              reset_n;
  wire             system_clk_from_the_External_Clocks;
  wire    [ 11: 0] zs_addr_from_the_SDRAM;
  wire    [  1: 0] zs_ba_from_the_SDRAM;
  wire             zs_cas_n_from_the_SDRAM;
  wire             zs_cke_from_the_SDRAM;
  wire             zs_cs_n_from_the_SDRAM;
  wire    [ 15: 0] zs_dq_to_and_from_the_SDRAM;
  wire    [  1: 0] zs_dqm_from_the_SDRAM;
  wire             zs_ras_n_from_the_SDRAM;
  wire             zs_we_n_from_the_SDRAM;


// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE
//  add your signals and additional architecture here
// AND HERE WILL BE PRESERVED </ALTERA_NOTE>

  //Set us up the Dut
  nios_system DUT
    (
      .AUD_ADCDAT_to_the_Audio             (AUD_ADCDAT_to_the_Audio),
      .AUD_ADCLRCK_to_and_from_the_Audio   (AUD_ADCLRCK_to_and_from_the_Audio),
      .AUD_BCLK_to_and_from_the_Audio      (AUD_BCLK_to_and_from_the_Audio),
      .AUD_DACDAT_from_the_Audio           (AUD_DACDAT_from_the_Audio),
      .AUD_DACLRCK_to_and_from_the_Audio   (AUD_DACLRCK_to_and_from_the_Audio),
      .AUD_XCK_from_the_External_Clocks    (AUD_XCK_from_the_External_Clocks),
      .DRAM_CLK_from_the_External_Clocks   (DRAM_CLK_from_the_External_Clocks),
      .I2C_SCLK_from_the_AV_Config         (I2C_SCLK_from_the_AV_Config),
      .I2C_SDAT_to_and_from_the_AV_Config  (I2C_SDAT_to_and_from_the_AV_Config),
      .KEY_to_the_Pushbuttons              (KEY_to_the_Pushbuttons),
      .LEDG_from_the_Green_LEDs            (LEDG_from_the_Green_LEDs),
      .clk                                 (clk),
      .ext_clk_27_to_the_External_Clocks   (ext_clk_27_to_the_External_Clocks),
      .ext_clk_50_to_the_External_Clocks   (ext_clk_50_to_the_External_Clocks),
      .in_port_to_the_Data_Read_MEM        (in_port_to_the_Data_Read_MEM),
      .out_port_from_the_Addr_Read_MEM     (out_port_from_the_Addr_Read_MEM),
      .out_port_from_the_Addr_Write_MEM    (out_port_from_the_Addr_Write_MEM),
      .out_port_from_the_Data_Write_MEM    (out_port_from_the_Data_Write_MEM),
      .out_port_from_the_Out_Ports         (out_port_from_the_Out_Ports),
      .reset_n                             (reset_n),
      .system_clk_from_the_External_Clocks (system_clk_from_the_External_Clocks),
      .zs_addr_from_the_SDRAM              (zs_addr_from_the_SDRAM),
      .zs_ba_from_the_SDRAM                (zs_ba_from_the_SDRAM),
      .zs_cas_n_from_the_SDRAM             (zs_cas_n_from_the_SDRAM),
      .zs_cke_from_the_SDRAM               (zs_cke_from_the_SDRAM),
      .zs_cs_n_from_the_SDRAM              (zs_cs_n_from_the_SDRAM),
      .zs_dq_to_and_from_the_SDRAM         (zs_dq_to_and_from_the_SDRAM),
      .zs_dqm_from_the_SDRAM               (zs_dqm_from_the_SDRAM),
      .zs_ras_n_from_the_SDRAM             (zs_ras_n_from_the_SDRAM),
      .zs_we_n_from_the_SDRAM              (zs_we_n_from_the_SDRAM)
    );

  initial
    clk = 1'b0;
  always
    #10 clk <= ~clk;
  
  initial 
    begin
      reset_n <= 0;
      #200 reset_n <= 1;
    end

endmodule


//synthesis translate_on