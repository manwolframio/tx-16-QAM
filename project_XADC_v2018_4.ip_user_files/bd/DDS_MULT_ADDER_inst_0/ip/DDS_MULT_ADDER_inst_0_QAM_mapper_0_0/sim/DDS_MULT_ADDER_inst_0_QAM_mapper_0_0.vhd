-- (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:QAM_mapper:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY DDS_MULT_ADDER_inst_0_QAM_mapper_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    din_valid : IN STD_LOGIC;
    data_out_i : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    data_out_q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    dout_valid : OUT STD_LOGIC
  );
END DDS_MULT_ADDER_inst_0_QAM_mapper_0_0;

ARCHITECTURE DDS_MULT_ADDER_inst_0_QAM_mapper_0_0_arch OF DDS_MULT_ADDER_inst_0_QAM_mapper_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF DDS_MULT_ADDER_inst_0_QAM_mapper_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT QAM_mapper IS
    PORT (
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      data_in : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      din_valid : IN STD_LOGIC;
      data_out_i : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      data_out_q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      dout_valid : OUT STD_LOGIC
    );
  END COMPONENT QAM_mapper;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF DDS_MULT_ADDER_inst_0_QAM_mapper_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 192000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /CLOCKS_0/clk_wiz_1_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : QAM_mapper
    PORT MAP (
      clk => clk,
      rst => rst,
      data_in => data_in,
      din_valid => din_valid,
      data_out_i => data_out_i,
      data_out_q => data_out_q,
      dout_valid => dout_valid
    );
END DDS_MULT_ADDER_inst_0_QAM_mapper_0_0_arch;
