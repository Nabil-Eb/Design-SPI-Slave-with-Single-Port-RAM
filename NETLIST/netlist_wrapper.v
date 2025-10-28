// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Aug  2 19:42:33 2025
// Host        : NABIL running 64-bit major release  (build 9200)
// Command     : write_verilog C:/vivadooo_pro_2/netlist_wrapper.v
// Design      : spi_wrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ram
   (\addr_wr_reg[0]_0 ,
    tx_valid,
    MISO_reg,
    CLK,
    rst_n_IBUF,
    \rx_data_reg[8] ,
    Q,
    WEA,
    \rx_data_reg[8]_0 ,
    \counter_reg[3] ,
    E,
    rx_valid_reg);
  output \addr_wr_reg[0]_0 ;
  output tx_valid;
  output MISO_reg;
  input CLK;
  input rst_n_IBUF;
  input \rx_data_reg[8] ;
  input [7:0]Q;
  input [0:0]WEA;
  input \rx_data_reg[8]_0 ;
  input [3:0]\counter_reg[3] ;
  input [0:0]E;
  input [0:0]rx_valid_reg;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire MISO_i_3_n_0;
  wire MISO_i_4_n_0;
  wire MISO_reg;
  wire [7:0]Q;
  wire [0:0]WEA;
  wire [7:0]addr_rd;
  wire [7:0]addr_wr;
  wire \addr_wr_reg[0]_0 ;
  wire [3:0]\counter_reg[3] ;
  wire rst_n_IBUF;
  wire \rx_data_reg[8] ;
  wire \rx_data_reg[8]_0 ;
  wire [0:0]rx_valid_reg;
  wire [7:0]tx_data;
  wire tx_valid;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_cs[2]_i_1 
       (.I0(rst_n_IBUF),
        .O(\addr_wr_reg[0]_0 ));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'h00E2)) 
    MISO_i_2
       (.I0(MISO_i_3_n_0),
        .I1(\counter_reg[3] [2]),
        .I2(MISO_i_4_n_0),
        .I3(\counter_reg[3] [3]),
        .O(MISO_reg));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_3
       (.I0(tx_data[4]),
        .I1(tx_data[5]),
        .I2(\counter_reg[3] [1]),
        .I3(tx_data[6]),
        .I4(\counter_reg[3] [0]),
        .I5(tx_data[7]),
        .O(MISO_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_4
       (.I0(tx_data[0]),
        .I1(tx_data[1]),
        .I2(\counter_reg[3] [1]),
        .I3(tx_data[2]),
        .I4(\counter_reg[3] [0]),
        .I5(tx_data[3]),
        .O(MISO_i_4_n_0));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[0] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[0]),
        .Q(addr_rd[0]),
        .R(\addr_wr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[1] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[1]),
        .Q(addr_rd[1]),
        .R(\addr_wr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[2] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[2]),
        .Q(addr_rd[2]),
        .R(\addr_wr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[3] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[3]),
        .Q(addr_rd[3]),
        .R(\addr_wr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[4] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[4]),
        .Q(addr_rd[4]),
        .R(\addr_wr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[5] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[5]),
        .Q(addr_rd[5]),
        .R(\addr_wr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[6] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[6]),
        .Q(addr_rd[6]),
        .R(\addr_wr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_rd_reg[7] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[7]),
        .Q(addr_rd[7]),
        .R(\addr_wr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(addr_wr[0]),
        .R(\addr_wr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(addr_wr[1]),
        .R(\addr_wr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(addr_wr[2]),
        .R(\addr_wr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(addr_wr[3]),
        .R(\addr_wr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(addr_wr[4]),
        .R(\addr_wr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(addr_wr[5]),
        .R(\addr_wr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(addr_wr[6]),
        .R(\addr_wr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(addr_wr[7]),
        .R(\addr_wr_reg[0]_0 ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,addr_wr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,addr_rd,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(\rx_data_reg[8] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\addr_wr_reg[0]_0 ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data_reg[8]_0 ),
        .Q(tx_valid),
        .R(\addr_wr_reg[0]_0 ));
endmodule

module spi_slave
   (MISO_OBUF,
    Q,
    tx_valid_reg,
    \rx_data_reg[8]_0 ,
    mem_reg,
    WEA,
    E,
    \addr_rd_reg[7] ,
    SR,
    \counter_reg[2]_0 ,
    CLK,
    tx_valid,
    SS_n_IBUF,
    rst_n_IBUF,
    MOSI_IBUF);
  output MISO_OBUF;
  output [3:0]Q;
  output tx_valid_reg;
  output [7:0]\rx_data_reg[8]_0 ;
  output mem_reg;
  output [0:0]WEA;
  output [0:0]E;
  output [0:0]\addr_rd_reg[7] ;
  input [0:0]SR;
  input \counter_reg[2]_0 ;
  input CLK;
  input tx_valid;
  input SS_n_IBUF;
  input rst_n_IBUF;
  input MOSI_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire MISO4_out;
  wire MISO_OBUF;
  wire MOSI_IBUF;
  wire [3:0]Q;
  wire READ_TYPE_i_1_n_0;
  wire READ_TYPE_i_2_n_0;
  wire READ_TYPE_i_3_n_0;
  wire READ_TYPE_reg_n_0;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire [0:0]WEA;
  wire [0:0]\addr_rd_reg[7] ;
  wire counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter_reg[2]_0 ;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire mem_reg;
  wire [2:0]ns;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire \rx_data[9]_i_1_n_0 ;
  wire [7:0]\rx_data_reg[8]_0 ;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire rx_valid_i_2_n_0;
  wire tx_valid;
  wire tx_valid_reg;

  LUT6 #(
    .INIT(64'h0000000045441111)) 
    \FSM_sequential_cs[0]_i_1 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(READ_TYPE_reg_n_0),
        .I3(MOSI_IBUF),
        .I4(cs[0]),
        .I5(SS_n_IBUF),
        .O(ns[0]));
  LUT6 #(
    .INIT(64'h0000000055550444)) 
    \FSM_sequential_cs[1]_i_1 
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(MOSI_IBUF),
        .I3(READ_TYPE_reg_n_0),
        .I4(cs[1]),
        .I5(SS_n_IBUF),
        .O(ns[1]));
  LUT6 #(
    .INIT(64'h00000000AAAAEAAA)) 
    \FSM_sequential_cs[2]_i_2 
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(READ_TYPE_reg_n_0),
        .I3(MOSI_IBUF),
        .I4(cs[1]),
        .I5(SS_n_IBUF),
        .O(ns[2]));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_ADD:011,READ_DATA:100,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[0]),
        .Q(cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_ADD:011,READ_DATA:100,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[1]),
        .Q(cs[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_ADD:011,READ_DATA:100,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[2]),
        .Q(cs[2]),
        .R(SR));
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'h00000200)) 
    MISO_i_1
       (.I0(tx_valid),
        .I1(cs[1]),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(SS_n_IBUF),
        .O(MISO4_out));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO4_out),
        .D(\counter_reg[2]_0 ),
        .Q(MISO_OBUF),
        .R(SR));
  LUT5 #(
    .INIT(32'hDFFF1000)) 
    READ_TYPE_i_1
       (.I0(cs[2]),
        .I1(SS_n_IBUF),
        .I2(READ_TYPE_i_2_n_0),
        .I3(Q[3]),
        .I4(READ_TYPE_reg_n_0),
        .O(READ_TYPE_i_1_n_0));
  LUT6 #(
    .INIT(64'h0200FFFF02000000)) 
    READ_TYPE_i_2
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(tx_valid),
        .I4(Q[2]),
        .I5(READ_TYPE_i_3_n_0),
        .O(READ_TYPE_i_2_n_0));
  LUT6 #(
    .INIT(64'h040000F004000040)) 
    READ_TYPE_i_3
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(cs[2]),
        .I3(cs[0]),
        .I4(cs[1]),
        .I5(tx_valid),
        .O(READ_TYPE_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    READ_TYPE_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(READ_TYPE_i_1_n_0),
        .Q(READ_TYPE_reg_n_0),
        .R(SR));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h20)) 
    \addr_rd[7]_i_1 
       (.I0(rx_valid),
        .I1(rx_data[8]),
        .I2(rx_data[9]),
        .O(\addr_rd_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_wr[7]_i_1 
       (.I0(rx_valid),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .O(E));
  LUT4 #(
    .INIT(16'h00DF)) 
    \counter[0]_i_1 
       (.I0(tx_valid),
        .I1(cs[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00008AFFCFFF0000)) 
    \counter[1]_i_1 
       (.I0(Q[2]),
        .I1(cs[1]),
        .I2(tx_valid),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00BFBF00BF00BF00)) 
    \counter[2]_i_1 
       (.I0(cs[1]),
        .I1(tx_valid),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\counter[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \counter[3]_i_1 
       (.I0(SS_n_IBUF),
        .I1(rst_n_IBUF),
        .O(\counter[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h34)) 
    \counter[3]_i_2 
       (.I0(cs[0]),
        .I1(cs[2]),
        .I2(cs[1]),
        .O(counter));
  LUT6 #(
    .INIT(64'h0FD0D0D0D000D0D0)) 
    \counter[3]_i_3 
       (.I0(tx_valid),
        .I1(cs[1]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\counter[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[3]_i_3_n_0 ),
        .Q(Q[3]),
        .R(\counter[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_1
       (.I0(rx_data[8]),
        .I1(rx_data[9]),
        .I2(rx_valid),
        .I3(rst_n_IBUF),
        .O(mem_reg));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_2
       (.I0(rx_valid),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .O(WEA));
  LUT5 #(
    .INIT(32'h00002226)) 
    \rx_data[9]_i_1 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(tx_valid),
        .I4(SS_n_IBUF),
        .O(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(\rx_data_reg[8]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [0]),
        .Q(\rx_data_reg[8]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [1]),
        .Q(\rx_data_reg[8]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [2]),
        .Q(\rx_data_reg[8]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [3]),
        .Q(\rx_data_reg[8]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [4]),
        .Q(\rx_data_reg[8]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [5]),
        .Q(\rx_data_reg[8]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [6]),
        .Q(\rx_data_reg[8]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [7]),
        .Q(rx_data[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data[8]),
        .Q(rx_data[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h10000000)) 
    rx_valid_i_1
       (.I0(SS_n_IBUF),
        .I1(Q[2]),
        .I2(rx_valid_i_2_n_0),
        .I3(rst_n_IBUF),
        .I4(Q[3]),
        .O(rx_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000AA0200)) 
    rx_valid_i_2
       (.I0(Q[0]),
        .I1(tx_valid),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(cs[1]),
        .I5(Q[1]),
        .O(rx_valid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    tx_valid_i_1
       (.I0(rx_data[8]),
        .I1(rx_data[9]),
        .I2(rx_valid),
        .I3(tx_valid),
        .O(tx_valid_reg));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module spi_wrapper
   (MOSI,
    SS_n,
    clk,
    rst_n,
    MISO);
  input MOSI;
  input SS_n;
  input clk;
  input rst_n;
  output MISO;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire mem;
  wire ram_ins_n_0;
  wire ram_ins_n_2;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire spi_slave_ins_n_1;
  wire spi_slave_ins_n_14;
  wire spi_slave_ins_n_16;
  wire spi_slave_ins_n_17;
  wire spi_slave_ins_n_2;
  wire spi_slave_ins_n_3;
  wire spi_slave_ins_n_4;
  wire spi_slave_ins_n_5;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  ram ram_ins
       (.CLK(clk_IBUF_BUFG),
        .E(spi_slave_ins_n_16),
        .MISO_reg(ram_ins_n_2),
        .Q(rx_data),
        .WEA(mem),
        .\addr_wr_reg[0]_0 (ram_ins_n_0),
        .\counter_reg[3] ({spi_slave_ins_n_1,spi_slave_ins_n_2,spi_slave_ins_n_3,spi_slave_ins_n_4}),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (spi_slave_ins_n_14),
        .\rx_data_reg[8]_0 (spi_slave_ins_n_5),
        .rx_valid_reg(spi_slave_ins_n_17),
        .tx_valid(tx_valid));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  spi_slave spi_slave_ins
       (.CLK(clk_IBUF_BUFG),
        .E(spi_slave_ins_n_16),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q({spi_slave_ins_n_1,spi_slave_ins_n_2,spi_slave_ins_n_3,spi_slave_ins_n_4}),
        .SR(ram_ins_n_0),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(mem),
        .\addr_rd_reg[7] (spi_slave_ins_n_17),
        .\counter_reg[2]_0 (ram_ins_n_2),
        .mem_reg(spi_slave_ins_n_14),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8]_0 (rx_data),
        .tx_valid(tx_valid),
        .tx_valid_reg(spi_slave_ins_n_5));
endmodule
