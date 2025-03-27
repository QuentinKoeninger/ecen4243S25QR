-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Mar 14 15:40:38 2025
-- Host        : CEAT-ENDV350-11L running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl is
  port (
    Done : out STD_LOGIC;
    MStrobe : in STD_LOGIC;
    MemWrite : in STD_LOGIC;
    Trigger : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    DRW : out STD_LOGIC;
    AXIstart : out STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal nextstate : STD_LOGIC_VECTOR ( 0 to 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AXIstart_INST_0 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of DRW_INST_0 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of Done_INST_0 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair29";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
begin
AXIstart_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => AXIstart
    );
DRW_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => DRW
    );
Done_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => Done
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => nextstate(0),
      I1 => reset,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010105D585858"
    )
        port map (
      I0 => state(1),
      I1 => Trigger,
      I2 => state(2),
      I3 => MemWrite,
      I4 => MStrobe,
      I5 => state(0),
      O => nextstate(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001A12"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => Trigger,
      I4 => reset,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AABA"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => MStrobe,
      I3 => MemWrite,
      I4 => state(1),
      I5 => reset,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder is
  port (
    \q_reg[31]\ : out STD_LOGIC_VECTOR ( 17 downto 0 );
    D : out STD_LOGIC_VECTOR ( 12 downto 0 );
    wd3 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \q_reg[12]\ : out STD_LOGIC;
    \q_reg[16]\ : out STD_LOGIC;
    \q_reg[16]_0\ : out STD_LOGIC;
    \q_reg[16]_1\ : out STD_LOGIC;
    \q_reg[16]_2\ : out STD_LOGIC;
    \q_reg[20]\ : out STD_LOGIC;
    \q_reg[20]_0\ : out STD_LOGIC;
    \q_reg[20]_1\ : out STD_LOGIC;
    \q_reg[20]_2\ : out STD_LOGIC;
    \q_reg[24]\ : out STD_LOGIC;
    \q_reg[24]_0\ : out STD_LOGIC;
    \q_reg[24]_1\ : out STD_LOGIC;
    \q_reg[24]_2\ : out STD_LOGIC;
    \q_reg[28]\ : out STD_LOGIC;
    \q_reg[28]_0\ : out STD_LOGIC;
    \q_reg[28]_1\ : out STD_LOGIC;
    \q_reg[28]_2\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    Instr : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \q_reg[27]\ : in STD_LOGIC;
    \q_reg[27]_0\ : in STD_LOGIC;
    \q_reg[26]\ : in STD_LOGIC;
    \q_reg[25]\ : in STD_LOGIC;
    \q_reg[24]_3\ : in STD_LOGIC;
    \q_reg[23]\ : in STD_LOGIC;
    \q_reg[22]\ : in STD_LOGIC;
    \q_reg[21]\ : in STD_LOGIC;
    \q_reg[20]_3\ : in STD_LOGIC;
    \q_reg[18]\ : in STD_LOGIC;
    \q_reg[16]_3\ : in STD_LOGIC;
    \q_reg[14]\ : in STD_LOGIC;
    \q_reg[12]_0\ : in STD_LOGIC;
    \q_reg[10]\ : in STD_LOGIC;
    immext : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rf_reg_r1_0_31_6_11 : in STD_LOGIC;
    ReadData : in STD_LOGIC_VECTOR ( 6 downto 0 );
    rf_reg_r1_0_31_24_29_i_6 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_0 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_1 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_2 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_3 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_4 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_0 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_1 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_2 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_3 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_4 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_5 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_6 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_7 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_8 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_i_1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder is
  signal d2 : STD_LOGIC_VECTOR ( 27 downto 10 );
  signal \^q_reg[31]\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \y_carry__0_n_0\ : STD_LOGIC;
  signal \y_carry__0_n_1\ : STD_LOGIC;
  signal \y_carry__0_n_2\ : STD_LOGIC;
  signal \y_carry__0_n_3\ : STD_LOGIC;
  signal \y_carry__1_n_0\ : STD_LOGIC;
  signal \y_carry__1_n_1\ : STD_LOGIC;
  signal \y_carry__1_n_2\ : STD_LOGIC;
  signal \y_carry__1_n_3\ : STD_LOGIC;
  signal \y_carry__2_n_0\ : STD_LOGIC;
  signal \y_carry__2_n_1\ : STD_LOGIC;
  signal \y_carry__2_n_2\ : STD_LOGIC;
  signal \y_carry__2_n_3\ : STD_LOGIC;
  signal \y_carry__3_n_0\ : STD_LOGIC;
  signal \y_carry__3_n_1\ : STD_LOGIC;
  signal \y_carry__3_n_2\ : STD_LOGIC;
  signal \y_carry__3_n_3\ : STD_LOGIC;
  signal \y_carry__4_n_0\ : STD_LOGIC;
  signal \y_carry__4_n_1\ : STD_LOGIC;
  signal \y_carry__4_n_2\ : STD_LOGIC;
  signal \y_carry__4_n_3\ : STD_LOGIC;
  signal \y_carry__5_n_0\ : STD_LOGIC;
  signal \y_carry__5_n_1\ : STD_LOGIC;
  signal \y_carry__5_n_2\ : STD_LOGIC;
  signal \y_carry__5_n_3\ : STD_LOGIC;
  signal \y_carry__6_n_2\ : STD_LOGIC;
  signal \y_carry__6_n_3\ : STD_LOGIC;
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of y_carry : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__6\ : label is 35;
begin
  \q_reg[31]\(17 downto 0) <= \^q_reg[31]\(17 downto 0);
\q[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => d2(10),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => \q_reg[27]\,
      I4 => Instr(1),
      I5 => \q_reg[10]\,
      O => D(0)
    );
\q[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => d2(12),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => \q_reg[27]\,
      I4 => Instr(1),
      I5 => \q_reg[12]_0\,
      O => D(1)
    );
\q[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => d2(14),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => \q_reg[27]\,
      I4 => Instr(1),
      I5 => \q_reg[14]\,
      O => D(2)
    );
\q[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => d2(16),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => \q_reg[27]\,
      I4 => Instr(1),
      I5 => \q_reg[16]_3\,
      O => D(3)
    );
\q[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => d2(18),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => \q_reg[27]\,
      I4 => Instr(1),
      I5 => \q_reg[18]\,
      O => D(4)
    );
\q[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => d2(20),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => \q_reg[27]\,
      I4 => Instr(1),
      I5 => \q_reg[20]_3\,
      O => D(5)
    );
\q[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => d2(21),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => \q_reg[27]\,
      I4 => Instr(1),
      I5 => \q_reg[21]\,
      O => D(6)
    );
\q[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => d2(22),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => \q_reg[27]\,
      I4 => Instr(1),
      I5 => \q_reg[22]\,
      O => D(7)
    );
\q[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => d2(23),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => \q_reg[27]\,
      I4 => Instr(1),
      I5 => \q_reg[23]\,
      O => D(8)
    );
\q[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => d2(24),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => \q_reg[27]\,
      I4 => Instr(1),
      I5 => \q_reg[24]_3\,
      O => D(9)
    );
\q[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => d2(25),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => \q_reg[27]\,
      I4 => Instr(1),
      I5 => \q_reg[25]\,
      O => D(10)
    );
\q[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => d2(26),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => \q_reg[27]\,
      I4 => Instr(1),
      I5 => \q_reg[26]\,
      O => D(11)
    );
\q[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => d2(27),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => \q_reg[27]\,
      I4 => Instr(1),
      I5 => \q_reg[27]_0\,
      O => D(12)
    );
rf_reg_r1_0_31_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => immext(0),
      I1 => \^q_reg[31]\(0),
      I2 => rf_reg_r1_0_31_6_11,
      I3 => ReadData(0),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => rf_reg_r1_0_31_0_5,
      O => wd3(0)
    );
rf_reg_r1_0_31_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => immext(2),
      I1 => \^q_reg[31]\(2),
      I2 => rf_reg_r1_0_31_6_11,
      I3 => ReadData(2),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => rf_reg_r1_0_31_0_5_1,
      O => wd3(2)
    );
rf_reg_r1_0_31_0_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => immext(1),
      I1 => \^q_reg[31]\(1),
      I2 => rf_reg_r1_0_31_6_11,
      I3 => ReadData(1),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => rf_reg_r1_0_31_0_5_0,
      O => wd3(1)
    );
rf_reg_r1_0_31_0_5_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => immext(3),
      I1 => \^q_reg[31]\(4),
      I2 => rf_reg_r1_0_31_6_11,
      I3 => ReadData(4),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => rf_reg_r1_0_31_0_5_4,
      O => wd3(4)
    );
rf_reg_r1_0_31_0_5_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rf_reg_r1_0_31_0_5_2,
      I1 => \^q_reg[31]\(3),
      I2 => rf_reg_r1_0_31_6_11,
      I3 => ReadData(3),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => rf_reg_r1_0_31_0_5_3,
      O => wd3(3)
    );
rf_reg_r1_0_31_12_17_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => Instr(21),
      I1 => rf_reg_r1_0_31_18_23_i_1,
      I2 => Instr(2),
      I3 => rf_reg_r1_0_31_24_29_i_6,
      I4 => d2(12),
      O => \q_reg[12]\
    );
rf_reg_r1_0_31_12_17_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => Instr(5),
      I1 => rf_reg_r1_0_31_18_23_i_1,
      I2 => Instr(21),
      I3 => rf_reg_r1_0_31_24_29_i_6,
      I4 => \^q_reg[31]\(11),
      O => \q_reg[16]_1\
    );
rf_reg_r1_0_31_12_17_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => Instr(21),
      I1 => rf_reg_r1_0_31_18_23_i_1,
      I2 => Instr(4),
      I3 => rf_reg_r1_0_31_24_29_i_6,
      I4 => d2(14),
      O => \q_reg[16]_0\
    );
rf_reg_r1_0_31_12_17_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => Instr(7),
      I1 => rf_reg_r1_0_31_18_23_i_1,
      I2 => Instr(21),
      I3 => rf_reg_r1_0_31_24_29_i_6,
      I4 => \^q_reg[31]\(12),
      O => \q_reg[20]\
    );
rf_reg_r1_0_31_12_17_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => Instr(6),
      I1 => rf_reg_r1_0_31_18_23_i_1,
      I2 => Instr(21),
      I3 => rf_reg_r1_0_31_24_29_i_6,
      I4 => d2(16),
      O => \q_reg[16]_2\
    );
rf_reg_r1_0_31_12_17_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => Instr(21),
      I1 => rf_reg_r1_0_31_18_23_i_1,
      I2 => Instr(3),
      I3 => rf_reg_r1_0_31_24_29_i_6,
      I4 => \^q_reg[31]\(10),
      O => \q_reg[16]\
    );
rf_reg_r1_0_31_18_23_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => Instr(8),
      I1 => rf_reg_r1_0_31_18_23_i_1,
      I2 => Instr(21),
      I3 => rf_reg_r1_0_31_24_29_i_6,
      I4 => d2(18),
      O => \q_reg[20]_0\
    );
rf_reg_r1_0_31_18_23_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(11),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => d2(21),
      O => \q_reg[24]\
    );
rf_reg_r1_0_31_18_23_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(10),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => d2(20),
      O => \q_reg[20]_2\
    );
rf_reg_r1_0_31_18_23_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(13),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => d2(23),
      O => \q_reg[24]_1\
    );
rf_reg_r1_0_31_18_23_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(12),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => d2(22),
      O => \q_reg[24]_0\
    );
rf_reg_r1_0_31_18_23_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => Instr(9),
      I1 => rf_reg_r1_0_31_18_23_i_1,
      I2 => Instr(21),
      I3 => rf_reg_r1_0_31_24_29_i_6,
      I4 => \^q_reg[31]\(13),
      O => \q_reg[20]_1\
    );
rf_reg_r1_0_31_24_29_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(14),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => d2(24),
      O => \q_reg[24]_2\
    );
rf_reg_r1_0_31_24_29_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(17),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => d2(27),
      O => \q_reg[28]_1\
    );
rf_reg_r1_0_31_24_29_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(16),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => d2(26),
      O => \q_reg[28]_0\
    );
rf_reg_r1_0_31_24_29_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(18),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => \^q_reg[31]\(14),
      O => \q_reg[28]_2\
    );
rf_reg_r1_0_31_24_29_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(15),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => d2(25),
      O => \q_reg[28]\
    );
rf_reg_r1_0_31_6_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => immext(5),
      I1 => \^q_reg[31]\(6),
      I2 => rf_reg_r1_0_31_6_11,
      I3 => ReadData(6),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => rf_reg_r1_0_31_6_11_1,
      O => wd3(6)
    );
rf_reg_r1_0_31_6_11_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => immext(4),
      I1 => \^q_reg[31]\(5),
      I2 => rf_reg_r1_0_31_6_11,
      I3 => ReadData(5),
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => rf_reg_r1_0_31_6_11_0,
      O => wd3(5)
    );
rf_reg_r1_0_31_6_11_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => Instr(19),
      I1 => rf_reg_r1_0_31_6_11_2,
      I2 => rf_reg_r1_0_31_24_29_i_6,
      I3 => \^q_reg[31]\(8),
      I4 => rf_reg_r1_0_31_6_11,
      I5 => rf_reg_r1_0_31_6_11_4,
      O => wd3(8)
    );
rf_reg_r1_0_31_6_11_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => Instr(18),
      I1 => rf_reg_r1_0_31_6_11_2,
      I2 => rf_reg_r1_0_31_24_29_i_6,
      I3 => \^q_reg[31]\(7),
      I4 => rf_reg_r1_0_31_6_11,
      I5 => rf_reg_r1_0_31_6_11_3,
      O => wd3(7)
    );
rf_reg_r1_0_31_6_11_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rf_reg_r1_0_31_6_11_6,
      I1 => \^q_reg[31]\(9),
      I2 => rf_reg_r1_0_31_6_11,
      I3 => rf_reg_r1_0_31_6_11_7,
      I4 => rf_reg_r1_0_31_24_29_i_6,
      I5 => rf_reg_r1_0_31_6_11_8,
      O => wd3(10)
    );
rf_reg_r1_0_31_6_11_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => Instr(20),
      I1 => rf_reg_r1_0_31_6_11_2,
      I2 => rf_reg_r1_0_31_24_29_i_6,
      I3 => d2(10),
      I4 => rf_reg_r1_0_31_6_11,
      I5 => rf_reg_r1_0_31_6_11_5,
      O => wd3(9)
    );
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => Q(1),
      DI(0) => '0',
      O(3 downto 0) => \^q_reg[31]\(3 downto 0),
      S(3 downto 2) => Q(3 downto 2),
      S(1) => S(0),
      S(0) => Q(0)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^q_reg[31]\(7 downto 4),
      S(3 downto 0) => Q(7 downto 4)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => d2(12),
      O(2) => \^q_reg[31]\(9),
      O(1) => d2(10),
      O(0) => \^q_reg[31]\(8),
      S(3 downto 0) => Q(11 downto 8)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => d2(16),
      O(2) => \^q_reg[31]\(11),
      O(1) => d2(14),
      O(0) => \^q_reg[31]\(10),
      S(3 downto 0) => Q(15 downto 12)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => d2(20),
      O(2) => \^q_reg[31]\(13),
      O(1) => d2(18),
      O(0) => \^q_reg[31]\(12),
      S(3 downto 0) => Q(19 downto 16)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => d2(24 downto 21),
      S(3 downto 0) => Q(23 downto 20)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \^q_reg[31]\(14),
      O(2 downto 0) => d2(27 downto 25),
      S(3 downto 0) => Q(27 downto 24)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3 downto 2) => \NLW_y_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y_carry__6_n_2\,
      CO(0) => \y_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_y_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => \^q_reg[31]\(17 downto 15),
      S(3) => '0',
      S(2 downto 0) => Q(30 downto 28)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 is
  port (
    d1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[4]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[8]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[12]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[16]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[20]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[24]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[28]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 : entity is "adder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 is
  signal \y_carry__0_n_0\ : STD_LOGIC;
  signal \y_carry__0_n_1\ : STD_LOGIC;
  signal \y_carry__0_n_2\ : STD_LOGIC;
  signal \y_carry__0_n_3\ : STD_LOGIC;
  signal \y_carry__1_n_0\ : STD_LOGIC;
  signal \y_carry__1_n_1\ : STD_LOGIC;
  signal \y_carry__1_n_2\ : STD_LOGIC;
  signal \y_carry__1_n_3\ : STD_LOGIC;
  signal \y_carry__2_n_0\ : STD_LOGIC;
  signal \y_carry__2_n_1\ : STD_LOGIC;
  signal \y_carry__2_n_2\ : STD_LOGIC;
  signal \y_carry__2_n_3\ : STD_LOGIC;
  signal \y_carry__3_n_0\ : STD_LOGIC;
  signal \y_carry__3_n_1\ : STD_LOGIC;
  signal \y_carry__3_n_2\ : STD_LOGIC;
  signal \y_carry__3_n_3\ : STD_LOGIC;
  signal \y_carry__4_n_0\ : STD_LOGIC;
  signal \y_carry__4_n_1\ : STD_LOGIC;
  signal \y_carry__4_n_2\ : STD_LOGIC;
  signal \y_carry__4_n_3\ : STD_LOGIC;
  signal \y_carry__5_n_0\ : STD_LOGIC;
  signal \y_carry__5_n_1\ : STD_LOGIC;
  signal \y_carry__5_n_2\ : STD_LOGIC;
  signal \y_carry__5_n_3\ : STD_LOGIC;
  signal \y_carry__6_n_1\ : STD_LOGIC;
  signal \y_carry__6_n_2\ : STD_LOGIC;
  signal \y_carry__6_n_3\ : STD_LOGIC;
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of y_carry : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__6\ : label is 35;
begin
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => Q(3 downto 0),
      O(3 downto 0) => d1(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => d1(7 downto 4),
      S(3 downto 0) => \q[4]_i_2\(3 downto 0)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(11 downto 8),
      O(3 downto 0) => d1(11 downto 8),
      S(3 downto 0) => \q[8]_i_2\(3 downto 0)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(15 downto 12),
      O(3 downto 0) => d1(15 downto 12),
      S(3 downto 0) => \q[12]_i_2\(3 downto 0)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(19 downto 16),
      O(3 downto 0) => d1(19 downto 16),
      S(3 downto 0) => \q[16]_i_2\(3 downto 0)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(23 downto 20),
      O(3 downto 0) => d1(23 downto 20),
      S(3 downto 0) => \q[20]_i_2\(3 downto 0)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(27 downto 24),
      O(3 downto 0) => d1(27 downto 24),
      S(3 downto 0) => \q[24]_i_2\(3 downto 0)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3) => \NLW_y_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \y_carry__6_n_1\,
      CO(1) => \y_carry__6_n_2\,
      CO(0) => \y_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Q(30 downto 28),
      O(3 downto 0) => d1(31 downto 28),
      S(3 downto 0) => \q[28]_i_2\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  port (
    \q_reg[30]\ : out STD_LOGIC_VECTOR ( 25 downto 0 );
    \result1_carry__6_i_5\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \q_reg[3]\ : out STD_LOGIC;
    ALUResult : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \ALUResult[0]_INST_0_i_11_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_3\ : out STD_LOGIC;
    \result1_carry__2_i_15_0\ : out STD_LOGIC;
    \q_reg[30]_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_0\ : out STD_LOGIC;
    \q[31]_i_59_0\ : out STD_LOGIC;
    \q_reg[16]\ : out STD_LOGIC;
    wd3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]\ : out STD_LOGIC;
    \q[31]_i_57_0\ : out STD_LOGIC;
    \q_reg[18]\ : out STD_LOGIC;
    \q_reg[23]\ : out STD_LOGIC;
    \q[31]_i_53_0\ : out STD_LOGIC;
    \q_reg[24]\ : out STD_LOGIC;
    \q[31]_i_55_0\ : out STD_LOGIC;
    \q_reg[26]\ : out STD_LOGIC;
    \q_reg[27]\ : out STD_LOGIC;
    \q_reg[30]_1\ : out STD_LOGIC;
    \sum_carry__5_0\ : out STD_LOGIC;
    \sum_carry__5_1\ : out STD_LOGIC;
    \sum_carry__3_0\ : out STD_LOGIC;
    \sum_carry__3_1\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_3_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_3_1\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_3_2\ : out STD_LOGIC;
    \q_reg[2]\ : out STD_LOGIC;
    \q_reg[3]_0\ : out STD_LOGIC;
    \q_reg[4]\ : out STD_LOGIC;
    \q_reg[5]\ : out STD_LOGIC;
    \q_reg[6]\ : out STD_LOGIC;
    \q_reg[7]\ : out STD_LOGIC;
    \q_reg[8]\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_6_0\ : out STD_LOGIC;
    immext : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[3]_INST_0_i_4_0\ : out STD_LOGIC;
    \ALUResult[4]_INST_0_i_5_0\ : out STD_LOGIC;
    \WriteData[31]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_5_0\ : out STD_LOGIC;
    \ALUResult[4]_INST_0_i_4_0\ : out STD_LOGIC;
    \ALUResult[4]_INST_0_i_6_0\ : out STD_LOGIC;
    y_carry_i_5_0 : out STD_LOGIC;
    \ALUResult[0]_INST_0_i_6_0\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_4_0\ : out STD_LOGIC;
    \q_reg[10]\ : out STD_LOGIC;
    \q_reg[11]\ : out STD_LOGIC;
    \q_reg[14]\ : out STD_LOGIC;
    \q_reg[20]\ : out STD_LOGIC;
    \q_reg[22]\ : out STD_LOGIC;
    \q_reg[28]\ : out STD_LOGIC;
    y_carry_i_5_1 : out STD_LOGIC;
    \ALUResult[4]_INST_0_i_5_1\ : out STD_LOGIC;
    \addressM[3]\ : in STD_LOGIC;
    SrcA : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[19]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[23]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[27]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[31]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \w_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \w_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \w_carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \w_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \w_carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[0]_INST_0_i_11_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[0]_INST_0_i_11_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    result2 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \ALUResult[1]_INST_0_i_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[1]_INST_0_i_3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ALUResult[5]_INST_0_i_5_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[9]_INST_0_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[13]_INST_0_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[17]_INST_0_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[21]_INST_0_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[25]_INST_0_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[29]_INST_0_i_5\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 22 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \addressM[0]\ : in STD_LOGIC;
    \addressM[0]_0\ : in STD_LOGIC;
    \addressM[0]_1\ : in STD_LOGIC;
    \addressM[0]_2\ : in STD_LOGIC;
    ALUControl : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[0]_INST_0_i_4_0\ : in STD_LOGIC;
    \ALUResult[0]_INST_0_i_4_1\ : in STD_LOGIC;
    \addressM[31]_0\ : in STD_LOGIC;
    \addressM[31]_1\ : in STD_LOGIC;
    \addressM[31]_2\ : in STD_LOGIC;
    \addressM[31]_3\ : in STD_LOGIC;
    \q[31]_i_19\ : in STD_LOGIC;
    \q[31]_i_17\ : in STD_LOGIC;
    \q[31]_i_17_0\ : in STD_LOGIC;
    \q[31]_i_19_0\ : in STD_LOGIC;
    rf_reg_r2_0_31_30_31 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23 : in STD_LOGIC;
    \rf_reg_r1_0_31_30_31_i_1__0_0\ : in STD_LOGIC;
    ReadData : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rf_reg_r1_0_31_30_31_i_1__0_1\ : in STD_LOGIC;
    \addressM[18]\ : in STD_LOGIC;
    \addressM[18]_0\ : in STD_LOGIC;
    \q[31]_i_18\ : in STD_LOGIC;
    \q[31]_i_18_0\ : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_0 : in STD_LOGIC;
    \addressM[20]\ : in STD_LOGIC;
    \addressM[20]_0\ : in STD_LOGIC;
    \q[31]_i_16\ : in STD_LOGIC;
    \q[31]_i_16_0\ : in STD_LOGIC;
    \q[31]_i_17_1\ : in STD_LOGIC;
    \q[31]_i_17_2\ : in STD_LOGIC;
    rf_reg_r1_0_31_24_29 : in STD_LOGIC;
    \addressM[27]_0\ : in STD_LOGIC;
    \addressM[27]_1\ : in STD_LOGIC;
    rf_reg_r2_0_31_30_31_0 : in STD_LOGIC;
    \addressM[30]\ : in STD_LOGIC;
    \addressM[30]_0\ : in STD_LOGIC;
    \addressM[30]_1\ : in STD_LOGIC;
    \ALUResult[7]_INST_0_i_3\ : in STD_LOGIC;
    \ALUResult[2]_INST_0_i_3\ : in STD_LOGIC;
    \ALUResult[3]_INST_0_i_3\ : in STD_LOGIC;
    \ALUResult[3]_INST_0_i_3_0\ : in STD_LOGIC;
    \ALUResult[4]_INST_0_i_3\ : in STD_LOGIC;
    \ALUResult[4]_INST_0_i_3_0\ : in STD_LOGIC;
    \ALUResult[5]_INST_0_i_3\ : in STD_LOGIC;
    \ALUResult[5]_INST_0_i_3_0\ : in STD_LOGIC;
    \ALUResult[6]_INST_0_i_3\ : in STD_LOGIC;
    \ALUResult[6]_INST_0_i_3_0\ : in STD_LOGIC;
    \ALUResult[7]_INST_0_i_3_0\ : in STD_LOGIC;
    \ALUResult[7]_INST_0_i_3_1\ : in STD_LOGIC;
    \ALUResult[8]_INST_0_i_3\ : in STD_LOGIC;
    \ALUResult[10]_INST_0_i_3\ : in STD_LOGIC;
    \ALUResult[11]_INST_0_i_3\ : in STD_LOGIC;
    \ALUResult[11]_INST_0_i_3_0\ : in STD_LOGIC;
    \ALUResult[14]_INST_0_i_3\ : in STD_LOGIC;
    \ALUResult[16]_INST_0_i_3\ : in STD_LOGIC;
    \ALUResult[22]_INST_0_i_1\ : in STD_LOGIC;
    \ALUResult[24]_INST_0_i_3\ : in STD_LOGIC;
    \ALUResult[26]_INST_0_i_3\ : in STD_LOGIC;
    \ALUResult[28]_INST_0_i_3\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  signal \^aluresult\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^aluresult[0]_inst_0_i_11_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \^aluresult[30]_inst_0_i_5_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_3\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \^aluresult[3]_inst_0_i_4_0\ : STD_LOGIC;
  signal \^aluresult[4]_inst_0_i_5_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal p_3_in : STD_LOGIC;
  signal \q[31]_i_53_n_0\ : STD_LOGIC;
  signal \q[31]_i_55_n_0\ : STD_LOGIC;
  signal \q[31]_i_57_n_0\ : STD_LOGIC;
  signal \q[31]_i_59_n_0\ : STD_LOGIC;
  signal \^q_reg[16]\ : STD_LOGIC;
  signal \^q_reg[18]\ : STD_LOGIC;
  signal \^q_reg[24]\ : STD_LOGIC;
  signal \^q_reg[26]\ : STD_LOGIC;
  signal \^q_reg[30]\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \result1_carry__0_n_0\ : STD_LOGIC;
  signal \result1_carry__0_n_1\ : STD_LOGIC;
  signal \result1_carry__0_n_2\ : STD_LOGIC;
  signal \result1_carry__0_n_3\ : STD_LOGIC;
  signal \result1_carry__1_n_0\ : STD_LOGIC;
  signal \result1_carry__1_n_1\ : STD_LOGIC;
  signal \result1_carry__1_n_2\ : STD_LOGIC;
  signal \result1_carry__1_n_3\ : STD_LOGIC;
  signal \^result1_carry__2_i_15_0\ : STD_LOGIC;
  signal \result1_carry__2_n_0\ : STD_LOGIC;
  signal \result1_carry__2_n_1\ : STD_LOGIC;
  signal \result1_carry__2_n_2\ : STD_LOGIC;
  signal \result1_carry__2_n_3\ : STD_LOGIC;
  signal \result1_carry__3_n_0\ : STD_LOGIC;
  signal \result1_carry__3_n_1\ : STD_LOGIC;
  signal \result1_carry__3_n_2\ : STD_LOGIC;
  signal \result1_carry__3_n_3\ : STD_LOGIC;
  signal \result1_carry__4_n_0\ : STD_LOGIC;
  signal \result1_carry__4_n_1\ : STD_LOGIC;
  signal \result1_carry__4_n_2\ : STD_LOGIC;
  signal \result1_carry__4_n_3\ : STD_LOGIC;
  signal \result1_carry__5_n_0\ : STD_LOGIC;
  signal \result1_carry__5_n_1\ : STD_LOGIC;
  signal \result1_carry__5_n_2\ : STD_LOGIC;
  signal \result1_carry__5_n_3\ : STD_LOGIC;
  signal \^result1_carry__6_i_5\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \result1_carry__6_n_2\ : STD_LOGIC;
  signal \result1_carry__6_n_3\ : STD_LOGIC;
  signal result1_carry_n_0 : STD_LOGIC;
  signal result1_carry_n_1 : STD_LOGIC;
  signal result1_carry_n_2 : STD_LOGIC;
  signal result1_carry_n_3 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_13_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_9_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_11_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_30_31_i_2_n_0 : STD_LOGIC;
  signal \sum_carry__0_n_0\ : STD_LOGIC;
  signal \sum_carry__0_n_1\ : STD_LOGIC;
  signal \sum_carry__0_n_2\ : STD_LOGIC;
  signal \sum_carry__0_n_3\ : STD_LOGIC;
  signal \sum_carry__1_n_0\ : STD_LOGIC;
  signal \sum_carry__1_n_1\ : STD_LOGIC;
  signal \sum_carry__1_n_2\ : STD_LOGIC;
  signal \sum_carry__1_n_3\ : STD_LOGIC;
  signal \sum_carry__2_n_0\ : STD_LOGIC;
  signal \sum_carry__2_n_1\ : STD_LOGIC;
  signal \sum_carry__2_n_2\ : STD_LOGIC;
  signal \sum_carry__2_n_3\ : STD_LOGIC;
  signal \sum_carry__3_n_0\ : STD_LOGIC;
  signal \sum_carry__3_n_1\ : STD_LOGIC;
  signal \sum_carry__3_n_2\ : STD_LOGIC;
  signal \sum_carry__3_n_3\ : STD_LOGIC;
  signal \sum_carry__4_n_0\ : STD_LOGIC;
  signal \sum_carry__4_n_1\ : STD_LOGIC;
  signal \sum_carry__4_n_2\ : STD_LOGIC;
  signal \sum_carry__4_n_3\ : STD_LOGIC;
  signal \sum_carry__5_n_0\ : STD_LOGIC;
  signal \sum_carry__5_n_1\ : STD_LOGIC;
  signal \sum_carry__5_n_2\ : STD_LOGIC;
  signal \sum_carry__5_n_3\ : STD_LOGIC;
  signal \sum_carry__6_n_1\ : STD_LOGIC;
  signal \sum_carry__6_n_2\ : STD_LOGIC;
  signal \sum_carry__6_n_3\ : STD_LOGIC;
  signal sum_carry_n_0 : STD_LOGIC;
  signal sum_carry_n_1 : STD_LOGIC;
  signal sum_carry_n_2 : STD_LOGIC;
  signal sum_carry_n_3 : STD_LOGIC;
  signal w : STD_LOGIC;
  signal \w_carry__0_n_0\ : STD_LOGIC;
  signal \w_carry__0_n_1\ : STD_LOGIC;
  signal \w_carry__0_n_2\ : STD_LOGIC;
  signal \w_carry__0_n_3\ : STD_LOGIC;
  signal \w_carry__1_n_0\ : STD_LOGIC;
  signal \w_carry__1_n_1\ : STD_LOGIC;
  signal \w_carry__1_n_2\ : STD_LOGIC;
  signal \w_carry__1_n_3\ : STD_LOGIC;
  signal \w_carry__2_n_1\ : STD_LOGIC;
  signal \w_carry__2_n_2\ : STD_LOGIC;
  signal \w_carry__2_n_3\ : STD_LOGIC;
  signal w_carry_n_0 : STD_LOGIC;
  signal w_carry_n_1 : STD_LOGIC;
  signal w_carry_n_2 : STD_LOGIC;
  signal w_carry_n_3 : STD_LOGIC;
  signal \^y_carry_i_5_0\ : STD_LOGIC;
  signal \NLW_result1_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_result1_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_w_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_w_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_w_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_w_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult[0]_INST_0_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALUResult[30]_INST_0_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALUResult[30]_INST_0_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ALUResult[3]_INST_0_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ALUResult[4]_INST_0_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[31]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q[31]_i_50\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q[31]_i_51\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q[31]_i_52\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q[31]_i_59\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of result1_carry : label is 35;
  attribute ADDER_THRESHOLD of \result1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \result1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \result1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \result1_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \result1_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \result1_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \result1_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of sum_carry : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__6\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of w_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \w_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \w_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \w_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of y_carry_i_5 : label is "soft_lutpair3";
begin
  ALUResult(5 downto 0) <= \^aluresult\(5 downto 0);
  \ALUResult[0]_INST_0_i_11_0\ <= \^aluresult[0]_inst_0_i_11_0\;
  \ALUResult[30]_INST_0_i_5_0\ <= \^aluresult[30]_inst_0_i_5_0\;
  \ALUResult[31]_INST_0_i_3\ <= \^aluresult[31]_inst_0_i_3\;
  \ALUResult[3]_INST_0_i_4_0\ <= \^aluresult[3]_inst_0_i_4_0\;
  \ALUResult[4]_INST_0_i_5_0\ <= \^aluresult[4]_inst_0_i_5_0\;
  \q_reg[16]\ <= \^q_reg[16]\;
  \q_reg[18]\ <= \^q_reg[18]\;
  \q_reg[24]\ <= \^q_reg[24]\;
  \q_reg[26]\ <= \^q_reg[26]\;
  \q_reg[30]\(25 downto 0) <= \^q_reg[30]\(25 downto 0);
  \result1_carry__2_i_15_0\ <= \^result1_carry__2_i_15_0\;
  \result1_carry__6_i_5\(13 downto 0) <= \^result1_carry__6_i_5\(13 downto 0);
  y_carry_i_5_0 <= \^y_carry_i_5_0\;
\ALUResult[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBBBBBB8"
    )
        port map (
      I0 => \addressM[0]\,
      I1 => \addressM[0]_0\,
      I2 => \addressM[0]_1\,
      I3 => \addressM[0]_2\,
      I4 => \^aluresult[0]_inst_0_i_11_0\,
      I5 => \^aluresult[31]_inst_0_i_3\,
      O => \^aluresult\(0)
    );
\ALUResult[0]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777774744474744"
    )
        port map (
      I0 => w,
      I1 => \^result1_carry__2_i_15_0\,
      I2 => p_3_in,
      I3 => ALUControl(0),
      I4 => \ALUResult[0]_INST_0_i_4_0\,
      I5 => \ALUResult[0]_INST_0_i_4_1\,
      O => \ALUResult[0]_INST_0_i_11_n_0\
    );
\ALUResult[0]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BF00"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => Instr(10),
      I3 => ALUControl(0),
      I4 => \ALUResult[0]_INST_0_i_11_n_0\,
      O => \^aluresult[0]_inst_0_i_11_0\
    );
\ALUResult[0]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data0(0),
      I1 => \addressM[31]_2\,
      O => \^aluresult[31]_inst_0_i_3\
    );
\ALUResult[0]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      O => \ALUResult[0]_INST_0_i_6_0\
    );
\ALUResult[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB80000FFFFFFFF"
    )
        port map (
      I0 => data6(10),
      I1 => ALUControl(0),
      I2 => \ALUResult[10]_INST_0_i_3\,
      I3 => SrcA(10),
      I4 => \ALUResult[7]_INST_0_i_3\,
      I5 => \addressM[31]_2\,
      O => \q_reg[10]\
    );
\ALUResult[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555540400005404"
    )
        port map (
      I0 => \^aluresult[30]_inst_0_i_5_0\,
      I1 => Instr(16),
      I2 => \^y_carry_i_5_0\,
      I3 => Instr(5),
      I4 => \^aluresult[4]_inst_0_i_5_0\,
      I5 => Instr(22),
      O => \ALUResult[4]_INST_0_i_5_1\
    );
\ALUResult[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9000900FFFFFFFF"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_3\,
      I1 => \ALUResult[11]_INST_0_i_3_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[7]_INST_0_i_3\,
      I4 => data6(11),
      I5 => \addressM[31]_2\,
      O => \q_reg[11]\
    );
\ALUResult[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88B0000FFFFFFFF"
    )
        port map (
      I0 => data6(14),
      I1 => ALUControl(0),
      I2 => \ALUResult[14]_INST_0_i_3\,
      I3 => SrcA(14),
      I4 => \ALUResult[7]_INST_0_i_3\,
      I5 => \addressM[31]_2\,
      O => \q_reg[14]\
    );
\ALUResult[16]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB80000FFFFFFFF"
    )
        port map (
      I0 => data6(16),
      I1 => ALUControl(0),
      I2 => \ALUResult[16]_INST_0_i_3\,
      I3 => SrcA(16),
      I4 => \ALUResult[7]_INST_0_i_3\,
      I5 => \addressM[31]_2\,
      O => \^q_reg[16]\
    );
\ALUResult[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCF0008888"
    )
        port map (
      I0 => data0(18),
      I1 => \addressM[18]\,
      I2 => \addressM[18]_0\,
      I3 => SrcA(18),
      I4 => \addressM[0]_0\,
      I5 => \addressM[31]_2\,
      O => \^aluresult\(1)
    );
\ALUResult[18]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB80000FFFFFFFF"
    )
        port map (
      I0 => data6(18),
      I1 => ALUControl(0),
      I2 => \addressM[18]_0\,
      I3 => SrcA(18),
      I4 => \ALUResult[7]_INST_0_i_3\,
      I5 => \addressM[31]_2\,
      O => \^q_reg[18]\
    );
\ALUResult[1]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACAC00AC"
    )
        port map (
      I0 => Instr(6),
      I1 => Instr(17),
      I2 => \^aluresult[3]_inst_0_i_4_0\,
      I3 => Instr(0),
      I4 => Instr(4),
      O => immext(0)
    );
\ALUResult[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCCC00F08888"
    )
        port map (
      I0 => data0(20),
      I1 => \addressM[20]\,
      I2 => SrcA(20),
      I3 => \addressM[20]_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[31]_2\,
      O => \^aluresult\(2)
    );
\ALUResult[20]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88B0000FFFFFFFF"
    )
        port map (
      I0 => data6(20),
      I1 => ALUControl(0),
      I2 => SrcA(20),
      I3 => \addressM[20]_0\,
      I4 => \ALUResult[7]_INST_0_i_3\,
      I5 => \addressM[31]_2\,
      O => \q_reg[20]\
    );
\ALUResult[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88B0000FFFFFFFF"
    )
        port map (
      I0 => data6(22),
      I1 => ALUControl(0),
      I2 => SrcA(22),
      I3 => \ALUResult[22]_INST_0_i_1\,
      I4 => \ALUResult[7]_INST_0_i_3\,
      I5 => \addressM[31]_2\,
      O => \q_reg[22]\
    );
\ALUResult[24]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88B0000FFFFFFFF"
    )
        port map (
      I0 => data6(24),
      I1 => ALUControl(0),
      I2 => \ALUResult[24]_INST_0_i_3\,
      I3 => SrcA(24),
      I4 => \ALUResult[7]_INST_0_i_3\,
      I5 => \addressM[31]_2\,
      O => \^q_reg[24]\
    );
\ALUResult[26]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88B0000FFFFFFFF"
    )
        port map (
      I0 => data6(26),
      I1 => ALUControl(0),
      I2 => \ALUResult[26]_INST_0_i_3\,
      I3 => SrcA(26),
      I4 => \ALUResult[7]_INST_0_i_3\,
      I5 => \addressM[31]_2\,
      O => \^q_reg[26]\
    );
\ALUResult[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FBF20B020B020"
    )
        port map (
      I0 => SrcA(27),
      I1 => \addressM[27]_0\,
      I2 => \addressM[0]_0\,
      I3 => \addressM[31]_2\,
      I4 => data0(27),
      I5 => \addressM[27]_1\,
      O => \^aluresult\(3)
    );
\ALUResult[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88B0000FFFFFFFF"
    )
        port map (
      I0 => data6(28),
      I1 => ALUControl(0),
      I2 => \ALUResult[28]_INST_0_i_3\,
      I3 => SrcA(28),
      I4 => \ALUResult[7]_INST_0_i_3\,
      I5 => \addressM[31]_2\,
      O => \q_reg[28]\
    );
\ALUResult[2]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808C8C80"
    )
        port map (
      I0 => data6(2),
      I1 => \ALUResult[7]_INST_0_i_3\,
      I2 => ALUControl(0),
      I3 => \ALUResult[2]_INST_0_i_3\,
      I4 => SrcA(2),
      O => \q_reg[2]\
    );
\ALUResult[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F1F7F1070107010"
    )
        port map (
      I0 => \addressM[30]\,
      I1 => \addressM[30]_0\,
      I2 => \addressM[0]_0\,
      I3 => \addressM[31]_2\,
      I4 => data0(30),
      I5 => \addressM[30]_1\,
      O => \^aluresult\(4)
    );
\ALUResult[30]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => Instr(14),
      I1 => Instr(13),
      I2 => Instr(11),
      I3 => Instr(12),
      I4 => Instr(15),
      O => \ALUResult[30]_INST_0_i_4_0\
    );
\ALUResult[30]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      O => \^aluresult[30]_inst_0_i_5_0\
    );
\ALUResult[30]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000DDD"
    )
        port map (
      I0 => Instr(4),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => Instr(2),
      I4 => Instr(1),
      O => \ALUResult[30]_INST_0_i_6_0\
    );
\ALUResult[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFEFAAAAFAEA"
    )
        port map (
      I0 => \addressM[31]_0\,
      I1 => \addressM[31]_1\,
      I2 => \addressM[31]_2\,
      I3 => \ALUResult[31]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => p_3_in,
      O => \^aluresult\(5)
    );
\ALUResult[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080000000800"
    )
        port map (
      I0 => Instr(10),
      I1 => Instr(2),
      I2 => Instr(0),
      I3 => \addressM[31]_3\,
      I4 => ALUControl(0),
      I5 => data6(31),
      O => \ALUResult[31]_INST_0_i_4_n_0\
    );
\ALUResult[3]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0F44"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(3),
      I2 => Instr(0),
      I3 => Instr(4),
      I4 => Instr(1),
      O => \^aluresult[3]_inst_0_i_4_0\
    );
\ALUResult[3]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80808C"
    )
        port map (
      I0 => data6(3),
      I1 => \ALUResult[7]_INST_0_i_3\,
      I2 => ALUControl(0),
      I3 => \ALUResult[3]_INST_0_i_3\,
      I4 => \ALUResult[3]_INST_0_i_3_0\,
      O => \q_reg[3]_0\
    );
\ALUResult[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111011DDDDDFDD"
    )
        port map (
      I0 => Instr(7),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(3),
      I4 => Instr(4),
      I5 => Instr(20),
      O => \ALUResult[4]_INST_0_i_4_0\
    );
\ALUResult[4]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => Instr(4),
      I1 => Instr(1),
      I2 => Instr(0),
      O => \^aluresult[4]_inst_0_i_5_0\
    );
\ALUResult[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111011DDDDDFDD"
    )
        port map (
      I0 => Instr(20),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(3),
      I4 => Instr(4),
      I5 => Instr(7),
      O => \ALUResult[4]_INST_0_i_6_0\
    );
\ALUResult[4]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => data6(4),
      I1 => ALUControl(0),
      I2 => \ALUResult[4]_INST_0_i_3\,
      I3 => \ALUResult[4]_INST_0_i_3_0\,
      O => \q_reg[4]\
    );
\ALUResult[5]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => data6(5),
      I1 => ALUControl(0),
      I2 => \ALUResult[5]_INST_0_i_3\,
      I3 => \ALUResult[5]_INST_0_i_3_0\,
      O => \q_reg[5]\
    );
\ALUResult[6]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => data6(6),
      I1 => ALUControl(0),
      I2 => \ALUResult[6]_INST_0_i_3\,
      I3 => \ALUResult[6]_INST_0_i_3_0\,
      O => \q_reg[6]\
    );
\ALUResult[7]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C80808C"
    )
        port map (
      I0 => data6(7),
      I1 => \ALUResult[7]_INST_0_i_3\,
      I2 => ALUControl(0),
      I3 => \ALUResult[7]_INST_0_i_3_0\,
      I4 => \ALUResult[7]_INST_0_i_3_1\,
      O => \q_reg[7]\
    );
\ALUResult[8]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \^result1_carry__6_i_5\(1),
      I1 => ALUControl(0),
      I2 => \ALUResult[8]_INST_0_i_3\,
      I3 => SrcA(8),
      O => \q_reg[8]\
    );
\WriteData[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => Instr(20),
      I1 => Instr(19),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(18),
      O => \WriteData[31]_INST_0_i_2_0\
    );
\q[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^aluresult\(0),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(0),
      O => \q_reg[3]\
    );
\q[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^aluresult\(1),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(1),
      O => \q_reg[19]\
    );
\q[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^aluresult\(2),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(2),
      O => \q_reg[23]\
    );
\q[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^aluresult\(3),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(3),
      O => \q_reg[27]\
    );
\q[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^aluresult\(4),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(4),
      O => \q_reg[30]_1\
    );
\q[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^aluresult\(5),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(5),
      O => \q_reg[30]_0\
    );
\q[31]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FAEAAAEA"
    )
        port map (
      I0 => \^q_reg[24]\,
      I1 => \q[31]_i_16\,
      I2 => \q[31]_i_17\,
      I3 => \q[31]_i_17_0\,
      I4 => \q[31]_i_16_0\,
      I5 => \q[31]_i_53_n_0\,
      O => \q[31]_i_53_0\
    );
\q[31]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FAEAAAEA"
    )
        port map (
      I0 => \^q_reg[26]\,
      I1 => \q[31]_i_17_1\,
      I2 => \q[31]_i_17\,
      I3 => \q[31]_i_17_0\,
      I4 => \q[31]_i_17_2\,
      I5 => \q[31]_i_55_n_0\,
      O => \q[31]_i_55_0\
    );
\q[31]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FAEAAAEA"
    )
        port map (
      I0 => \^q_reg[18]\,
      I1 => \q[31]_i_18\,
      I2 => \q[31]_i_17\,
      I3 => \q[31]_i_17_0\,
      I4 => \q[31]_i_18_0\,
      I5 => \q[31]_i_57_n_0\,
      O => \q[31]_i_57_0\
    );
\q[31]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FAEAAAEA"
    )
        port map (
      I0 => \^q_reg[16]\,
      I1 => \q[31]_i_19\,
      I2 => \q[31]_i_17\,
      I3 => \q[31]_i_17_0\,
      I4 => \q[31]_i_19_0\,
      I5 => \q[31]_i_59_n_0\,
      O => \q[31]_i_59_0\
    );
\q[31]_i_50\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_reg[30]\(8),
      I1 => \addressM[31]_2\,
      O => \ALUResult[31]_INST_0_i_3_2\
    );
\q[31]_i_51\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_reg[30]\(11),
      I1 => \addressM[31]_2\,
      O => \ALUResult[31]_INST_0_i_3_1\
    );
\q[31]_i_52\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_reg[30]\(12),
      I1 => \addressM[31]_2\,
      O => \ALUResult[31]_INST_0_i_3_0\
    );
\q[31]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"200020002000FFFF"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(0),
      I2 => Instr(9),
      I3 => Instr(10),
      I4 => \addressM[31]_2\,
      I5 => \^q_reg[30]\(21),
      O => \q[31]_i_53_n_0\
    );
\q[31]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"200020002000FFFF"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(0),
      I2 => Instr(9),
      I3 => Instr(10),
      I4 => \addressM[31]_2\,
      I5 => \^q_reg[30]\(22),
      O => \sum_carry__5_1\
    );
\q[31]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"200020002000FFFF"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(0),
      I2 => Instr(9),
      I3 => Instr(10),
      I4 => \addressM[31]_2\,
      I5 => \^q_reg[30]\(23),
      O => \q[31]_i_55_n_0\
    );
\q[31]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"200020002000FFFF"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(0),
      I2 => Instr(9),
      I3 => Instr(10),
      I4 => \addressM[31]_2\,
      I5 => data0(27),
      O => \sum_carry__5_0\
    );
\q[31]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"200020002000FFFF"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(0),
      I2 => Instr(9),
      I3 => Instr(10),
      I4 => \addressM[31]_2\,
      I5 => data0(18),
      O => \q[31]_i_57_n_0\
    );
\q[31]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"200020002000FFFF"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(0),
      I2 => Instr(9),
      I3 => Instr(10),
      I4 => \addressM[31]_2\,
      I5 => \^q_reg[30]\(17),
      O => \sum_carry__3_0\
    );
\q[31]_i_59\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_reg[30]\(15),
      I1 => \addressM[31]_2\,
      O => \q[31]_i_59_n_0\
    );
\q[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => w,
      I1 => \^result1_carry__2_i_15_0\,
      I2 => \^aluresult\(5),
      O => \ALUResult[31]_INST_0_0\
    );
\q[31]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"200020002000FFFF"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(0),
      I2 => Instr(9),
      I3 => Instr(10),
      I4 => \addressM[31]_2\,
      I5 => \^q_reg[30]\(16),
      O => \sum_carry__3_1\
    );
result1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => result1_carry_n_0,
      CO(2) => result1_carry_n_1,
      CO(1) => result1_carry_n_2,
      CO(0) => result1_carry_n_3,
      CYINIT => '0',
      DI(3) => result2(2),
      DI(2) => \ALUResult[1]_INST_0_i_3\(0),
      DI(1 downto 0) => result2(1 downto 0),
      O(3 downto 1) => data6(4 downto 2),
      O(0) => \^result1_carry__6_i_5\(0),
      S(3 downto 0) => \ALUResult[1]_INST_0_i_3_0\(3 downto 0)
    );
\result1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => result1_carry_n_0,
      CO(3) => \result1_carry__0_n_0\,
      CO(2) => \result1_carry__0_n_1\,
      CO(1) => \result1_carry__0_n_2\,
      CO(0) => \result1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => result2(5),
      DI(2) => p_0_in(0),
      DI(1 downto 0) => result2(4 downto 3),
      O(3) => \^result1_carry__6_i_5\(1),
      O(2 downto 0) => data6(7 downto 5),
      S(3 downto 0) => \ALUResult[5]_INST_0_i_5_0\(3 downto 0)
    );
\result1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result1_carry__0_n_0\,
      CO(3) => \result1_carry__1_n_0\,
      CO(2) => \result1_carry__1_n_1\,
      CO(1) => \result1_carry__1_n_2\,
      CO(0) => \result1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => result2(9 downto 6),
      O(3) => \^result1_carry__6_i_5\(3),
      O(2 downto 1) => data6(11 downto 10),
      O(0) => \^result1_carry__6_i_5\(2),
      S(3 downto 0) => \ALUResult[9]_INST_0_i_5\(3 downto 0)
    );
\result1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result1_carry__1_n_0\,
      CO(3) => \result1_carry__2_n_0\,
      CO(2) => \result1_carry__2_n_1\,
      CO(1) => \result1_carry__2_n_2\,
      CO(0) => \result1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => result2(12),
      DI(2) => p_0_in(1),
      DI(1 downto 0) => result2(11 downto 10),
      O(3) => data6(16),
      O(2) => \^result1_carry__6_i_5\(5),
      O(1) => data6(14),
      O(0) => \^result1_carry__6_i_5\(4),
      S(3 downto 0) => \ALUResult[13]_INST_0_i_5\(3 downto 0)
    );
\result1_carry__2_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F03800F0F0"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(10),
      I2 => Instr(9),
      I3 => Instr(8),
      I4 => Instr(2),
      I5 => Instr(0),
      O => \^result1_carry__2_i_15_0\
    );
\result1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result1_carry__2_n_0\,
      CO(3) => \result1_carry__3_n_0\,
      CO(2) => \result1_carry__3_n_1\,
      CO(1) => \result1_carry__3_n_2\,
      CO(0) => \result1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => result2(16 downto 13),
      O(3) => data6(20),
      O(2) => \^result1_carry__6_i_5\(7),
      O(1) => data6(18),
      O(0) => \^result1_carry__6_i_5\(6),
      S(3 downto 0) => \ALUResult[17]_INST_0_i_5\(3 downto 0)
    );
\result1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \result1_carry__3_n_0\,
      CO(3) => \result1_carry__4_n_0\,
      CO(2) => \result1_carry__4_n_1\,
      CO(1) => \result1_carry__4_n_2\,
      CO(0) => \result1_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => result2(19),
      DI(2) => p_0_in(2),
      DI(1 downto 0) => result2(18 downto 17),
      O(3) => data6(24),
      O(2) => \^result1_carry__6_i_5\(9),
      O(1) => data6(22),
      O(0) => \^result1_carry__6_i_5\(8),
      S(3 downto 0) => \ALUResult[21]_INST_0_i_5\(3 downto 0)
    );
\result1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \result1_carry__4_n_0\,
      CO(3) => \result1_carry__5_n_0\,
      CO(2) => \result1_carry__5_n_1\,
      CO(1) => \result1_carry__5_n_2\,
      CO(0) => \result1_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => result2(23 downto 20),
      O(3) => data6(28),
      O(2) => \^result1_carry__6_i_5\(11),
      O(1) => data6(26),
      O(0) => \^result1_carry__6_i_5\(10),
      S(3 downto 0) => \ALUResult[25]_INST_0_i_5\(3 downto 0)
    );
\result1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \result1_carry__5_n_0\,
      CO(3 downto 2) => \NLW_result1_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \result1_carry__6_n_2\,
      CO(0) => \result1_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => result2(25 downto 24),
      O(3) => \NLW_result1_carry__6_O_UNCONNECTED\(3),
      O(2) => data6(31),
      O(1 downto 0) => \^result1_carry__6_i_5\(13 downto 12),
      S(3) => '0',
      S(2 downto 0) => \ALUResult[29]_INST_0_i_5\(2 downto 0)
    );
rf_reg_r1_0_31_0_5_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2500252525000000"
    )
        port map (
      I0 => Instr(4),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(16),
      I4 => \^y_carry_i_5_0\,
      I5 => Instr(5),
      O => y_carry_i_5_1
    );
rf_reg_r1_0_31_18_23_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => \rf_reg_r1_0_31_30_31_i_1__0_0\,
      I1 => ReadData(1),
      I2 => Instr(9),
      I3 => \rf_reg_r1_0_31_30_31_i_1__0_1\,
      I4 => \^aluresult\(2),
      O => rf_reg_r1_0_31_18_23_i_13_n_0
    );
rf_reg_r1_0_31_18_23_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_18_23_i_9_n_0,
      I1 => rf_reg_r1_0_31_18_23,
      O => wd3(0),
      S => rf_reg_r2_0_31_30_31
    );
rf_reg_r1_0_31_18_23_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_18_23_i_13_n_0,
      I1 => rf_reg_r1_0_31_18_23_0,
      O => wd3(1),
      S => rf_reg_r2_0_31_30_31
    );
rf_reg_r1_0_31_18_23_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => \rf_reg_r1_0_31_30_31_i_1__0_0\,
      I1 => ReadData(0),
      I2 => Instr(9),
      I3 => \rf_reg_r1_0_31_30_31_i_1__0_1\,
      I4 => \^aluresult\(1),
      O => rf_reg_r1_0_31_18_23_i_9_n_0
    );
rf_reg_r1_0_31_24_29_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => \rf_reg_r1_0_31_30_31_i_1__0_0\,
      I1 => ReadData(2),
      I2 => Instr(9),
      I3 => \rf_reg_r1_0_31_30_31_i_1__0_1\,
      I4 => \^aluresult\(3),
      O => rf_reg_r1_0_31_24_29_i_11_n_0
    );
rf_reg_r1_0_31_24_29_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_24_29_i_11_n_0,
      I1 => rf_reg_r1_0_31_24_29,
      O => wd3(2),
      S => rf_reg_r2_0_31_30_31
    );
\rf_reg_r1_0_31_30_31_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_30_31_i_2_n_0,
      I1 => rf_reg_r2_0_31_30_31_0,
      O => wd3(3),
      S => rf_reg_r2_0_31_30_31
    );
rf_reg_r1_0_31_30_31_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => \rf_reg_r1_0_31_30_31_i_1__0_0\,
      I1 => ReadData(3),
      I2 => Instr(9),
      I3 => \rf_reg_r1_0_31_30_31_i_1__0_1\,
      I4 => \^aluresult\(4),
      O => rf_reg_r1_0_31_30_31_i_2_n_0
    );
sum_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sum_carry_n_0,
      CO(2) => sum_carry_n_1,
      CO(1) => sum_carry_n_2,
      CO(0) => sum_carry_n_3,
      CYINIT => \addressM[3]\,
      DI(3 downto 0) => SrcA(3 downto 0),
      O(3 downto 1) => \^q_reg[30]\(2 downto 0),
      O(0) => data0(0),
      S(3 downto 0) => S(3 downto 0)
    );
\sum_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sum_carry_n_0,
      CO(3) => \sum_carry__0_n_0\,
      CO(2) => \sum_carry__0_n_1\,
      CO(1) => \sum_carry__0_n_2\,
      CO(0) => \sum_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(7 downto 4),
      O(3 downto 0) => \^q_reg[30]\(6 downto 3),
      S(3 downto 0) => \addressM[7]\(3 downto 0)
    );
\sum_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__0_n_0\,
      CO(3) => \sum_carry__1_n_0\,
      CO(2) => \sum_carry__1_n_1\,
      CO(1) => \sum_carry__1_n_2\,
      CO(0) => \sum_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(11 downto 8),
      O(3 downto 0) => \^q_reg[30]\(10 downto 7),
      S(3 downto 0) => \addressM[11]\(3 downto 0)
    );
\sum_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__1_n_0\,
      CO(3) => \sum_carry__2_n_0\,
      CO(2) => \sum_carry__2_n_1\,
      CO(1) => \sum_carry__2_n_2\,
      CO(0) => \sum_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(15 downto 12),
      O(3 downto 0) => \^q_reg[30]\(14 downto 11),
      S(3 downto 0) => \addressM[15]\(3 downto 0)
    );
\sum_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__2_n_0\,
      CO(3) => \sum_carry__3_n_0\,
      CO(2) => \sum_carry__3_n_1\,
      CO(1) => \sum_carry__3_n_2\,
      CO(0) => \sum_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(19 downto 16),
      O(3) => \^q_reg[30]\(17),
      O(2) => data0(18),
      O(1 downto 0) => \^q_reg[30]\(16 downto 15),
      S(3 downto 0) => \addressM[19]\(3 downto 0)
    );
\sum_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__3_n_0\,
      CO(3) => \sum_carry__4_n_0\,
      CO(2) => \sum_carry__4_n_1\,
      CO(1) => \sum_carry__4_n_2\,
      CO(0) => \sum_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(23 downto 20),
      O(3 downto 1) => \^q_reg[30]\(20 downto 18),
      O(0) => data0(20),
      S(3 downto 0) => \addressM[23]\(3 downto 0)
    );
\sum_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__4_n_0\,
      CO(3) => \sum_carry__5_n_0\,
      CO(2) => \sum_carry__5_n_1\,
      CO(1) => \sum_carry__5_n_2\,
      CO(0) => \sum_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(27 downto 24),
      O(3) => data0(27),
      O(2 downto 0) => \^q_reg[30]\(23 downto 21),
      S(3 downto 0) => \addressM[27]\(3 downto 0)
    );
\sum_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__5_n_0\,
      CO(3) => \NLW_sum_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \sum_carry__6_n_1\,
      CO(1) => \sum_carry__6_n_2\,
      CO(0) => \sum_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => SrcA(30 downto 28),
      O(3) => p_3_in,
      O(2) => data0(30),
      O(1 downto 0) => \^q_reg[30]\(25 downto 24),
      S(3 downto 0) => \addressM[31]\(3 downto 0)
    );
w_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => w_carry_n_0,
      CO(2) => w_carry_n_1,
      CO(1) => w_carry_n_2,
      CO(0) => w_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_w_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \w_carry__0_0\(3 downto 0)
    );
\w_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => w_carry_n_0,
      CO(3) => \w_carry__0_n_0\,
      CO(2) => \w_carry__0_n_1\,
      CO(1) => \w_carry__0_n_2\,
      CO(0) => \w_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \w_carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_w_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \w_carry__1_1\(3 downto 0)
    );
\w_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \w_carry__0_n_0\,
      CO(3) => \w_carry__1_n_0\,
      CO(2) => \w_carry__1_n_1\,
      CO(1) => \w_carry__1_n_2\,
      CO(0) => \w_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \w_carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_w_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \w_carry__2_1\(3 downto 0)
    );
\w_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \w_carry__1_n_0\,
      CO(3) => w,
      CO(2) => \w_carry__2_n_1\,
      CO(1) => \w_carry__2_n_2\,
      CO(0) => \w_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult[0]_INST_0_i_11_1\(3 downto 0),
      O(3 downto 0) => \NLW_w_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ALUResult[0]_INST_0_i_11_2\(3 downto 0)
    );
y_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5545"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(2),
      I2 => Instr(3),
      I3 => Instr(4),
      O => \^y_carry_i_5_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr is
  port (
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wd3 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \readDataM[7]\ : out STD_LOGIC;
    \q_reg[10]_0\ : out STD_LOGIC;
    \q_reg[11]_0\ : out STD_LOGIC;
    SrcA : out STD_LOGIC_VECTOR ( 20 downto 0 );
    \ALUResult[31]_INST_0_i_5_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_13_0\ : out STD_LOGIC;
    \q_reg[29]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \q_reg[15]_0\ : out STD_LOGIC;
    \q_reg[12]_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_13_1\ : out STD_LOGIC;
    \ALUResult[12]_INST_0_i_6_0\ : out STD_LOGIC;
    \q_reg[13]_0\ : out STD_LOGIC;
    \ALUResult[14]_INST_0_i_6_0\ : out STD_LOGIC;
    \q_reg[15]_1\ : out STD_LOGIC;
    \q_reg[19]_0\ : out STD_LOGIC;
    \q[31]_i_19_0\ : out STD_LOGIC;
    \ALUResult[20]_INST_0_i_6_0\ : out STD_LOGIC;
    \q_reg[17]_0\ : out STD_LOGIC;
    \ALUResult[22]_INST_0_i_6\ : out STD_LOGIC;
    \q_reg[23]_0\ : out STD_LOGIC;
    \ALUResult[25]_INST_0_i_6_0\ : out STD_LOGIC;
    \q_reg[23]_1\ : out STD_LOGIC;
    \q_reg[23]_2\ : out STD_LOGIC;
    \ALUResult[28]_INST_0_i_6_0\ : out STD_LOGIC;
    \q_reg[27]_0\ : out STD_LOGIC;
    \ALUResult[29]_INST_0_i_6_0\ : out STD_LOGIC;
    \q_reg[27]_1\ : out STD_LOGIC;
    \q[31]_i_54\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_9\ : out STD_LOGIC;
    \q_reg[27]_2\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_22_0\ : out STD_LOGIC;
    \q[31]_i_56\ : out STD_LOGIC;
    \ALUResult[27]_INST_0_i_5_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_20_0\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_8\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_23_0\ : out STD_LOGIC;
    ALUControl : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[8]_0\ : out STD_LOGIC;
    \ALUResult[8]_INST_0_i_6_0\ : out STD_LOGIC;
    \q_reg[9]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[9]_1\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[5]_0\ : out STD_LOGIC;
    \q_reg[4]_0\ : out STD_LOGIC;
    result1_carry_i_14_0 : out STD_LOGIC;
    \q_reg[17]_1\ : out STD_LOGIC;
    \q_reg[19]_1\ : out STD_LOGIC;
    \q_reg[11]_1\ : out STD_LOGIC;
    \q_reg[25]_0\ : out STD_LOGIC;
    \q_reg[13]_1\ : out STD_LOGIC;
    \q_reg[1]_0\ : out STD_LOGIC;
    \q_reg[3]_0\ : out STD_LOGIC;
    \q_reg[3]_1\ : out STD_LOGIC;
    \q_reg[1]_1\ : out STD_LOGIC;
    \q_reg[5]_1\ : out STD_LOGIC;
    \q_reg[2]_0\ : out STD_LOGIC;
    \q_reg[0]_0\ : out STD_LOGIC;
    \q_reg[6]_0\ : out STD_LOGIC;
    \q_reg[3]_2\ : out STD_LOGIC;
    \q_reg[5]_2\ : out STD_LOGIC;
    \q_reg[1]_2\ : out STD_LOGIC;
    \q_reg[0]_1\ : out STD_LOGIC;
    \q_reg[13]_2\ : out STD_LOGIC;
    \q_reg[13]_3\ : out STD_LOGIC;
    \q_reg[30]_0\ : out STD_LOGIC;
    \q_reg[30]_1\ : out STD_LOGIC;
    \q_reg[20]_0\ : out STD_LOGIC;
    \q_reg[26]_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_16_0\ : out STD_LOGIC;
    \q_reg[3]_3\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[5]_3\ : out STD_LOGIC;
    \ALUResult[0]_INST_0_i_16_0\ : out STD_LOGIC;
    \q_reg[8]_1\ : out STD_LOGIC;
    \q_reg[12]_1\ : out STD_LOGIC;
    \q_reg[29]_1\ : out STD_LOGIC;
    \q_reg[25]_1\ : out STD_LOGIC;
    \q_reg[7]_0\ : out STD_LOGIC;
    \q_reg[9]_2\ : out STD_LOGIC;
    \q_reg[27]_3\ : out STD_LOGIC;
    \q_reg[10]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[18]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[23]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[29]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[31]_0\ : out STD_LOGIC;
    \q[31]_i_4_0\ : out STD_LOGIC;
    \q_reg[31]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[9]_3\ : out STD_LOGIC;
    \q_reg[19]_3\ : out STD_LOGIC;
    \q_reg[23]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[1]_INST_0_i_2\ : out STD_LOGIC;
    Instr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \q_reg[0]_2\ : in STD_LOGIC;
    \q_reg[0]_3\ : in STD_LOGIC;
    rf_reg_r1_0_31_0_5 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29 : in STD_LOGIC;
    ReadData : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \rf_reg_r1_0_31_30_31_i_1__0\ : in STD_LOGIC;
    ALUResult : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[31]_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[31]_3\ : in STD_LOGIC;
    \q_reg[30]_2\ : in STD_LOGIC;
    \rf_reg_r2_0_31_30_31__0\ : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_i_4_0 : in STD_LOGIC;
    d1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \addressM[10]\ : in STD_LOGIC;
    \addressM[10]_0\ : in STD_LOGIC;
    \addressM[29]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    rf_reg_r1_0_31_12_17 : in STD_LOGIC;
    \q[31]_i_10\ : in STD_LOGIC;
    \q[31]_i_10_0\ : in STD_LOGIC;
    \addressM[12]\ : in STD_LOGIC;
    \addressM[12]_0\ : in STD_LOGIC;
    \addressM[12]_1\ : in STD_LOGIC;
    \q[31]_i_15_0\ : in STD_LOGIC;
    \q[31]_i_15_1\ : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_0 : in STD_LOGIC;
    \addressM[14]\ : in STD_LOGIC;
    \addressM[14]_0\ : in STD_LOGIC;
    \addressM[14]_1\ : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_1 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_i_5_0 : in STD_LOGIC;
    \q[31]_i_12_0\ : in STD_LOGIC;
    \q[31]_i_12_1\ : in STD_LOGIC;
    \addressM[16]\ : in STD_LOGIC;
    \addressM[16]_0\ : in STD_LOGIC;
    \addressM[16]_1\ : in STD_LOGIC;
    \q[31]_i_19_1\ : in STD_LOGIC;
    \q[31]_i_12_2\ : in STD_LOGIC;
    \q[31]_i_12_3\ : in STD_LOGIC;
    rf_reg_r1_0_31_18_23 : in STD_LOGIC;
    \addressM[21]\ : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_0 : in STD_LOGIC;
    \addressM[22]\ : in STD_LOGIC;
    \addressM[22]_0\ : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_1 : in STD_LOGIC;
    \addressM[23]\ : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_0 : in STD_LOGIC;
    \addressM[24]\ : in STD_LOGIC;
    \addressM[24]_0\ : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_1 : in STD_LOGIC;
    \addressM[25]\ : in STD_LOGIC;
    \q[31]_i_16\ : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_2 : in STD_LOGIC;
    \addressM[26]\ : in STD_LOGIC;
    \addressM[26]_0\ : in STD_LOGIC;
    \addressM[27]\ : in STD_LOGIC;
    \q[31]_i_17\ : in STD_LOGIC;
    \addressM[29]_0\ : in STD_LOGIC;
    \addressM[30]\ : in STD_LOGIC;
    \w_carry__1\ : in STD_LOGIC;
    \w_carry__1_0\ : in STD_LOGIC;
    \w_carry__1_1\ : in STD_LOGIC;
    \w_carry__0\ : in STD_LOGIC;
    \ALUResult[29]_INST_0_i_1_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \w_carry__0_0\ : in STD_LOGIC;
    w_carry : in STD_LOGIC;
    \ALUResult[31]_INST_0_i_9\ : in STD_LOGIC;
    \result1_carry__0_i_8\ : in STD_LOGIC;
    \ALUResult[14]_INST_0_i_4_0\ : in STD_LOGIC;
    \ALUResult[0]_INST_0_i_15\ : in STD_LOGIC;
    \ALUResult[17]_INST_0_i_4\ : in STD_LOGIC;
    \result1_carry__0_i_8_0\ : in STD_LOGIC;
    \q[31]_i_34\ : in STD_LOGIC;
    \q[31]_i_42\ : in STD_LOGIC;
    \ALUResult[20]_INST_0_i_1\ : in STD_LOGIC;
    \ALUResult[31]_INST_0_i_11_0\ : in STD_LOGIC;
    \ALUResult[0]_INST_0_i_15_0\ : in STD_LOGIC;
    rd10 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \addressM[29]_1\ : in STD_LOGIC;
    \w_carry__0_1\ : in STD_LOGIC;
    \w_carry__1_2\ : in STD_LOGIC;
    \w_carry__2\ : in STD_LOGIC;
    \w_carry__2_0\ : in STD_LOGIC;
    \y_carry__0\ : in STD_LOGIC;
    \y_carry__0_0\ : in STD_LOGIC;
    \y_carry__0_1\ : in STD_LOGIC;
    y_carry : in STD_LOGIC;
    \y_carry__1\ : in STD_LOGIC;
    \y_carry__2\ : in STD_LOGIC;
    \ALUResult[13]_INST_0_i_3\ : in STD_LOGIC;
    \result1_carry__0_i_8_1\ : in STD_LOGIC;
    PCReady : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr is
  signal \^alucontrol\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ALUResult[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \^aluresult[12]_inst_0_i_6_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \^aluresult[14]_inst_0_i_6_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \^aluresult[20]_inst_0_i_6_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \^aluresult[22]_inst_0_i_6\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \^aluresult[25]_inst_0_i_6_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \^aluresult[28]_inst_0_i_6_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \^aluresult[29]_inst_0_i_6_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \^aluresult[30]_inst_0_i_9\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_13_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_13_1\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_20_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_22_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_23_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_5_0\ : STD_LOGIC;
  signal \^aluresult[8]_inst_0_i_6_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^srca\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \q[0]_i_1_n_0\ : STD_LOGIC;
  signal \q[29]_i_1_n_0\ : STD_LOGIC;
  signal \q[29]_i_2_n_0\ : STD_LOGIC;
  signal \q[30]_i_1_n_0\ : STD_LOGIC;
  signal \q[31]_i_18_n_0\ : STD_LOGIC;
  signal \q[31]_i_19_n_0\ : STD_LOGIC;
  signal \q[31]_i_1_n_0\ : STD_LOGIC;
  signal \q[31]_i_26_n_0\ : STD_LOGIC;
  signal \q[31]_i_28_n_0\ : STD_LOGIC;
  signal \q[31]_i_38_n_0\ : STD_LOGIC;
  signal \q[31]_i_41_n_0\ : STD_LOGIC;
  signal \q[31]_i_44_n_0\ : STD_LOGIC;
  signal \q[31]_i_45_n_0\ : STD_LOGIC;
  signal \^q_reg[0]_0\ : STD_LOGIC;
  signal \^q_reg[0]_1\ : STD_LOGIC;
  signal \^q_reg[10]_0\ : STD_LOGIC;
  signal \^q_reg[11]_1\ : STD_LOGIC;
  signal \^q_reg[12]_1\ : STD_LOGIC;
  signal \^q_reg[13]_0\ : STD_LOGIC;
  signal \^q_reg[13]_1\ : STD_LOGIC;
  signal \^q_reg[13]_2\ : STD_LOGIC;
  signal \^q_reg[13]_3\ : STD_LOGIC;
  signal \^q_reg[17]_0\ : STD_LOGIC;
  signal \^q_reg[17]_1\ : STD_LOGIC;
  signal \^q_reg[19]_1\ : STD_LOGIC;
  signal \^q_reg[1]_0\ : STD_LOGIC;
  signal \^q_reg[1]_1\ : STD_LOGIC;
  signal \^q_reg[1]_2\ : STD_LOGIC;
  signal \^q_reg[29]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^q_reg[2]_0\ : STD_LOGIC;
  signal \^q_reg[30]_1\ : STD_LOGIC;
  signal \^q_reg[3]_0\ : STD_LOGIC;
  signal \^q_reg[3]_1\ : STD_LOGIC;
  signal \^q_reg[3]_2\ : STD_LOGIC;
  signal \^q_reg[4]_0\ : STD_LOGIC;
  signal \^q_reg[5]_0\ : STD_LOGIC;
  signal \^q_reg[5]_1\ : STD_LOGIC;
  signal \^q_reg[5]_2\ : STD_LOGIC;
  signal \^q_reg[5]_3\ : STD_LOGIC;
  signal \^q_reg[6]_0\ : STD_LOGIC;
  signal \^q_reg[7]_0\ : STD_LOGIC;
  signal \^q_reg[8]_1\ : STD_LOGIC;
  signal \^q_reg[9]_1\ : STD_LOGIC;
  signal \result1_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \result1_carry__2_i_17_n_0\ : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_13_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_17_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_9_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_11_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_15_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_17_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_13_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_15_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_16_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_7_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_9_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_12\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_13\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_8\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALUResult[8]_INST_0_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \result1_carry__0_i_9\ : label is "soft_lutpair8";
begin
  ALUControl(0) <= \^alucontrol\(0);
  \ALUResult[12]_INST_0_i_6_0\ <= \^aluresult[12]_inst_0_i_6_0\;
  \ALUResult[14]_INST_0_i_6_0\ <= \^aluresult[14]_inst_0_i_6_0\;
  \ALUResult[20]_INST_0_i_6_0\ <= \^aluresult[20]_inst_0_i_6_0\;
  \ALUResult[22]_INST_0_i_6\ <= \^aluresult[22]_inst_0_i_6\;
  \ALUResult[25]_INST_0_i_6_0\ <= \^aluresult[25]_inst_0_i_6_0\;
  \ALUResult[28]_INST_0_i_6_0\ <= \^aluresult[28]_inst_0_i_6_0\;
  \ALUResult[29]_INST_0_i_6_0\ <= \^aluresult[29]_inst_0_i_6_0\;
  \ALUResult[30]_INST_0_i_9\ <= \^aluresult[30]_inst_0_i_9\;
  \ALUResult[31]_INST_0_i_13_0\ <= \^aluresult[31]_inst_0_i_13_0\;
  \ALUResult[31]_INST_0_i_13_1\ <= \^aluresult[31]_inst_0_i_13_1\;
  \ALUResult[31]_INST_0_i_20_0\ <= \^aluresult[31]_inst_0_i_20_0\;
  \ALUResult[31]_INST_0_i_22_0\ <= \^aluresult[31]_inst_0_i_22_0\;
  \ALUResult[31]_INST_0_i_23_0\ <= \^aluresult[31]_inst_0_i_23_0\;
  \ALUResult[31]_INST_0_i_5_0\ <= \^aluresult[31]_inst_0_i_5_0\;
  \ALUResult[8]_INST_0_i_6_0\ <= \^aluresult[8]_inst_0_i_6_0\;
  Q(31 downto 0) <= \^q\(31 downto 0);
  SrcA(20 downto 0) <= \^srca\(20 downto 0);
  \q_reg[0]_0\ <= \^q_reg[0]_0\;
  \q_reg[0]_1\ <= \^q_reg[0]_1\;
  \q_reg[10]_0\ <= \^q_reg[10]_0\;
  \q_reg[11]_1\ <= \^q_reg[11]_1\;
  \q_reg[12]_1\ <= \^q_reg[12]_1\;
  \q_reg[13]_0\ <= \^q_reg[13]_0\;
  \q_reg[13]_1\ <= \^q_reg[13]_1\;
  \q_reg[13]_2\ <= \^q_reg[13]_2\;
  \q_reg[13]_3\ <= \^q_reg[13]_3\;
  \q_reg[17]_0\ <= \^q_reg[17]_0\;
  \q_reg[17]_1\ <= \^q_reg[17]_1\;
  \q_reg[19]_1\ <= \^q_reg[19]_1\;
  \q_reg[1]_0\ <= \^q_reg[1]_0\;
  \q_reg[1]_1\ <= \^q_reg[1]_1\;
  \q_reg[1]_2\ <= \^q_reg[1]_2\;
  \q_reg[29]_0\(9 downto 0) <= \^q_reg[29]_0\(9 downto 0);
  \q_reg[2]_0\ <= \^q_reg[2]_0\;
  \q_reg[30]_1\ <= \^q_reg[30]_1\;
  \q_reg[3]_0\ <= \^q_reg[3]_0\;
  \q_reg[3]_1\ <= \^q_reg[3]_1\;
  \q_reg[3]_2\ <= \^q_reg[3]_2\;
  \q_reg[4]_0\ <= \^q_reg[4]_0\;
  \q_reg[5]_0\ <= \^q_reg[5]_0\;
  \q_reg[5]_1\ <= \^q_reg[5]_1\;
  \q_reg[5]_2\ <= \^q_reg[5]_2\;
  \q_reg[5]_3\ <= \^q_reg[5]_3\;
  \q_reg[6]_0\ <= \^q_reg[6]_0\;
  \q_reg[7]_0\ <= \^q_reg[7]_0\;
  \q_reg[8]_1\ <= \^q_reg[8]_1\;
  \q_reg[9]_1\ <= \^q_reg[9]_1\;
\ALUResult[0]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFA0A0303F303F"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^srca\(15),
      I2 => \ALUResult[14]_INST_0_i_4_0\,
      I3 => \^srca\(7),
      I4 => \^q_reg[1]_2\,
      I5 => \ALUResult[0]_INST_0_i_15\,
      O => \q_reg[9]_2\
    );
\ALUResult[0]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBB88888BBB8BBB"
    )
        port map (
      I0 => \^q_reg[13]_3\,
      I1 => \ALUResult[14]_INST_0_i_4_0\,
      I2 => \ALUResult[31]_INST_0_i_9\,
      I3 => \^srca\(11),
      I4 => \^q_reg[5]_0\,
      I5 => \ALUResult[0]_INST_0_i_15\,
      O => \^q_reg[13]_2\
    );
\ALUResult[0]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFCFCFA0AFC0C0"
    )
        port map (
      I0 => \^srca\(3),
      I1 => \^srca\(18),
      I2 => \ALUResult[14]_INST_0_i_4_0\,
      I3 => \^q_reg[4]_0\,
      I4 => \ALUResult[0]_INST_0_i_15\,
      I5 => \^srca\(10),
      O => \^q_reg[12]_1\
    );
\ALUResult[0]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5030305F503F3F"
    )
        port map (
      I0 => \^srca\(1),
      I1 => \^srca\(14),
      I2 => \ALUResult[14]_INST_0_i_4_0\,
      I3 => \^q_reg[0]_1\,
      I4 => \ALUResult[0]_INST_0_i_15\,
      I5 => \^srca\(6),
      O => \^q_reg[8]_1\
    );
\ALUResult[0]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"774700007747FFFF"
    )
        port map (
      I0 => \^q\(13),
      I1 => \ALUResult[0]_INST_0_i_15_0\,
      I2 => rd10(13),
      I3 => \addressM[29]_1\,
      I4 => \ALUResult[0]_INST_0_i_15\,
      I5 => \^srca\(19),
      O => \^q_reg[13]_3\
    );
\ALUResult[0]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444747777777477"
    )
        port map (
      I0 => \^srca\(4),
      I1 => \ALUResult[0]_INST_0_i_15\,
      I2 => \addressM[29]_1\,
      I3 => rd10(30),
      I4 => \ALUResult[0]_INST_0_i_15_0\,
      I5 => \^q\(30),
      O => \^q_reg[30]_1\
    );
\ALUResult[0]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => \^srca\(16),
      I1 => \ALUResult[0]_INST_0_i_15\,
      I2 => \ALUResult[31]_INST_0_i_9\,
      I3 => \^srca\(2),
      O => \q_reg[26]_0\
    );
\ALUResult[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F80EFE08080"
    )
        port map (
      I0 => \addressM[10]\,
      I1 => \^srca\(2),
      I2 => \^aluresult[31]_inst_0_i_5_0\,
      I3 => \addressM[10]_0\,
      I4 => \^aluresult[31]_inst_0_i_13_0\,
      I5 => \addressM[29]\(0),
      O => \^q_reg[10]_0\
    );
\ALUResult[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(10),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(10),
      I4 => \addressM[29]_1\,
      O => \^srca\(2)
    );
\ALUResult[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F704F7"
    )
        port map (
      I0 => \^q\(11),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(11),
      I4 => \addressM[29]_1\,
      O => \^q_reg[11]_1\
    );
\ALUResult[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB02F20BFB02020"
    )
        port map (
      I0 => \^srca\(3),
      I1 => \addressM[12]\,
      I2 => \^aluresult[31]_inst_0_i_5_0\,
      I3 => \ALUResult[12]_INST_0_i_3_n_0\,
      I4 => \^aluresult[31]_inst_0_i_13_0\,
      I5 => \addressM[29]\(1),
      O => \^q_reg[29]_0\(0)
    );
\ALUResult[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(12),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(12),
      I4 => \addressM[29]_1\,
      O => \^srca\(3)
    );
\ALUResult[12]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \^aluresult[12]_inst_0_i_6_0\,
      I1 => \addressM[12]_1\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \addressM[12]_0\,
      I4 => \ALUResult[12]_INST_0_i_5_n_0\,
      O => \ALUResult[12]_INST_0_i_3_n_0\
    );
\ALUResult[12]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_6_n_0\,
      I1 => \result1_carry__0_i_8_0\,
      I2 => \^q_reg[5]_3\,
      O => \^aluresult[12]_inst_0_i_6_0\
    );
\ALUResult[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9000900FFFFFFFF"
    )
        port map (
      I0 => \^srca\(3),
      I1 => \addressM[12]\,
      I2 => \^alucontrol\(0),
      I3 => \^aluresult[8]_inst_0_i_6_0\,
      I4 => \ALUResult[29]_INST_0_i_1_0\(2),
      I5 => \^aluresult[31]_inst_0_i_13_0\,
      O => \ALUResult[12]_INST_0_i_5_n_0\
    );
\ALUResult[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0344000003770000"
    )
        port map (
      I0 => \^q_reg[5]_0\,
      I1 => \result1_carry__0_i_8\,
      I2 => \^q_reg[1]_2\,
      I3 => \ALUResult[14]_INST_0_i_4_0\,
      I4 => \ALUResult[0]_INST_0_i_15\,
      I5 => \^q_reg[9]_1\,
      O => \^q_reg[5]_3\
    );
\ALUResult[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F704F7"
    )
        port map (
      I0 => \^q\(13),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(13),
      I4 => \addressM[29]_1\,
      O => \^q_reg[13]_1\
    );
\ALUResult[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9000900FFFFFFFF"
    )
        port map (
      I0 => \^q_reg[13]_1\,
      I1 => \ALUResult[13]_INST_0_i_3\,
      I2 => \^alucontrol\(0),
      I3 => \^aluresult[8]_inst_0_i_6_0\,
      I4 => \ALUResult[29]_INST_0_i_1_0\(3),
      I5 => \^aluresult[31]_inst_0_i_13_0\,
      O => \^q_reg[13]_0\
    );
\ALUResult[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB02F20BFB02020"
    )
        port map (
      I0 => \^srca\(4),
      I1 => \addressM[14]\,
      I2 => \^aluresult[31]_inst_0_i_5_0\,
      I3 => \ALUResult[14]_INST_0_i_3_n_0\,
      I4 => \^aluresult[31]_inst_0_i_13_0\,
      I5 => \addressM[29]\(2),
      O => \^q_reg[29]_0\(1)
    );
\ALUResult[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(14),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(14),
      I4 => \addressM[29]_1\,
      O => \^srca\(4)
    );
\ALUResult[14]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \^aluresult[14]_inst_0_i_6_0\,
      I1 => \addressM[12]_1\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \addressM[14]_0\,
      I4 => \addressM[14]_1\,
      O => \ALUResult[14]_INST_0_i_3_n_0\
    );
\ALUResult[14]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_6_n_0\,
      I1 => \result1_carry__0_i_8\,
      I2 => \^q_reg[5]_2\,
      I3 => \result1_carry__0_i_8_0\,
      I4 => \ALUResult[14]_INST_0_i_6_n_0\,
      O => \^aluresult[14]_inst_0_i_6_0\
    );
\ALUResult[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0344000003770000"
    )
        port map (
      I0 => \^q_reg[7]_0\,
      I1 => \result1_carry__0_i_8\,
      I2 => \^q_reg[3]_2\,
      I3 => \ALUResult[14]_INST_0_i_4_0\,
      I4 => \ALUResult[0]_INST_0_i_15\,
      I5 => \^q_reg[11]_1\,
      O => \ALUResult[14]_INST_0_i_6_n_0\
    );
\ALUResult[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F80EFE08080"
    )
        port map (
      I0 => \addressM[16]\,
      I1 => \^srca\(6),
      I2 => \^aluresult[31]_inst_0_i_5_0\,
      I3 => \ALUResult[16]_INST_0_i_3_n_0\,
      I4 => \^aluresult[31]_inst_0_i_13_0\,
      I5 => \addressM[29]\(3),
      O => \^q_reg[29]_0\(2)
    );
\ALUResult[16]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(16),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(16),
      I4 => \addressM[29]_1\,
      O => \^srca\(6)
    );
\ALUResult[16]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \^aluresult[20]_inst_0_i_6_0\,
      I1 => \addressM[12]_1\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \addressM[16]_0\,
      I4 => \addressM[16]_1\,
      O => \ALUResult[16]_INST_0_i_3_n_0\
    );
\ALUResult[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_6_n_0\,
      I1 => \q[31]_i_42\,
      I2 => \result1_carry__0_i_8_0\,
      I3 => \ALUResult[16]_INST_0_i_6_n_0\,
      I4 => \result1_carry__0_i_8\,
      I5 => \^q_reg[5]_2\,
      O => \^aluresult[20]_inst_0_i_6_0\
    );
\ALUResult[16]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4070"
    )
        port map (
      I0 => \^q_reg[1]_2\,
      I1 => \ALUResult[14]_INST_0_i_4_0\,
      I2 => \ALUResult[0]_INST_0_i_15\,
      I3 => \^q_reg[9]_1\,
      O => \ALUResult[16]_INST_0_i_6_n_0\
    );
\ALUResult[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(17),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(17),
      I4 => \addressM[29]_1\,
      O => \^srca\(7)
    );
\ALUResult[17]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6000600FFFFFFFF"
    )
        port map (
      I0 => \^srca\(7),
      I1 => \w_carry__1_1\,
      I2 => \^alucontrol\(0),
      I3 => \^aluresult[8]_inst_0_i_6_0\,
      I4 => \ALUResult[29]_INST_0_i_1_0\(4),
      I5 => \^aluresult[31]_inst_0_i_13_0\,
      O => \^q_reg[17]_0\
    );
\ALUResult[18]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(18),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(18),
      I4 => \addressM[29]_1\,
      O => \^srca\(8)
    );
\ALUResult[18]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[5]_2\,
      I1 => \^q_reg[1]_1\,
      I2 => \result1_carry__0_i_8_0\,
      I3 => \ALUResult[18]_INST_0_i_6_n_0\,
      I4 => \result1_carry__0_i_8\,
      I5 => \q[31]_i_42\,
      O => \^aluresult[22]_inst_0_i_6\
    );
\ALUResult[18]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4070"
    )
        port map (
      I0 => \^q_reg[3]_2\,
      I1 => \ALUResult[14]_INST_0_i_4_0\,
      I2 => \ALUResult[0]_INST_0_i_15\,
      I3 => \^q_reg[11]_1\,
      O => \ALUResult[18]_INST_0_i_6_n_0\
    );
\ALUResult[19]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(19),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(19),
      I4 => \addressM[29]_1\,
      O => \^srca\(9)
    );
\ALUResult[19]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6000600FFFFFFFF"
    )
        port map (
      I0 => \^srca\(9),
      I1 => \w_carry__1\,
      I2 => \^alucontrol\(0),
      I3 => \^aluresult[8]_inst_0_i_6_0\,
      I4 => \ALUResult[29]_INST_0_i_1_0\(5),
      I5 => \^aluresult[31]_inst_0_i_13_0\,
      O => \q_reg[19]_3\
    );
\ALUResult[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F704F7"
    )
        port map (
      I0 => \^q\(1),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(1),
      I4 => \addressM[29]_1\,
      O => \^q_reg[1]_2\
    );
\ALUResult[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(20),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(20),
      I4 => \addressM[29]_1\,
      O => \^srca\(10)
    );
\ALUResult[20]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4070"
    )
        port map (
      I0 => \^q_reg[5]_0\,
      I1 => \ALUResult[14]_INST_0_i_4_0\,
      I2 => \ALUResult[0]_INST_0_i_15\,
      I3 => \^q_reg[13]_1\,
      O => \^q_reg[5]_2\
    );
\ALUResult[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCCC00F08888"
    )
        port map (
      I0 => \addressM[29]\(4),
      I1 => \ALUResult[21]_INST_0_i_1_n_0\,
      I2 => \^srca\(11),
      I3 => \addressM[21]\,
      I4 => \^aluresult[31]_inst_0_i_5_0\,
      I5 => \^aluresult[31]_inst_0_i_13_0\,
      O => \^q_reg[29]_0\(3)
    );
\ALUResult[21]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \^aluresult[25]_inst_0_i_6_0\,
      I1 => \addressM[12]_1\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \ALUResult[22]_INST_0_i_4_n_0\,
      I4 => \ALUResult[21]_INST_0_i_5_n_0\,
      O => \ALUResult[21]_INST_0_i_1_n_0\
    );
\ALUResult[21]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(21),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(21),
      I4 => \addressM[29]_1\,
      O => \^srca\(11)
    );
\ALUResult[21]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[0]_0\,
      I1 => \ALUResult[27]_INST_0_i_6_n_0\,
      I2 => \result1_carry__0_i_8_0\,
      I3 => \ALUResult[20]_INST_0_i_1\,
      I4 => \result1_carry__0_i_8\,
      I5 => \^q_reg[2]_0\,
      O => \^aluresult[25]_inst_0_i_6_0\
    );
\ALUResult[21]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9000900FFFFFFFF"
    )
        port map (
      I0 => \^srca\(11),
      I1 => \addressM[21]\,
      I2 => \^alucontrol\(0),
      I3 => \^aluresult[8]_inst_0_i_6_0\,
      I4 => \ALUResult[29]_INST_0_i_1_0\(6),
      I5 => \^aluresult[31]_inst_0_i_13_0\,
      O => \ALUResult[21]_INST_0_i_5_n_0\
    );
\ALUResult[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCCC00F08888"
    )
        port map (
      I0 => \addressM[29]\(5),
      I1 => \ALUResult[22]_INST_0_i_1_n_0\,
      I2 => \^srca\(12),
      I3 => \addressM[22]\,
      I4 => \^aluresult[31]_inst_0_i_5_0\,
      I5 => \^aluresult[31]_inst_0_i_13_0\,
      O => \^q_reg[29]_0\(4)
    );
\ALUResult[22]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_4_n_0\,
      I1 => \addressM[12]_1\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \ALUResult[23]_INST_0_i_4_n_0\,
      I4 => \addressM[22]_0\,
      O => \ALUResult[22]_INST_0_i_1_n_0\
    );
\ALUResult[22]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(22),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(22),
      I4 => \addressM[29]_1\,
      O => \^srca\(12)
    );
\ALUResult[22]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[1]_1\,
      I1 => \^q_reg[5]_1\,
      I2 => \result1_carry__0_i_8_0\,
      I3 => \q[31]_i_42\,
      I4 => \result1_carry__0_i_8\,
      I5 => \^q_reg[3]_1\,
      O => \ALUResult[22]_INST_0_i_4_n_0\
    );
\ALUResult[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCCC00F08888"
    )
        port map (
      I0 => \addressM[29]\(6),
      I1 => \ALUResult[23]_INST_0_i_1_n_0\,
      I2 => \^srca\(13),
      I3 => \addressM[23]\,
      I4 => \^aluresult[31]_inst_0_i_5_0\,
      I5 => \^aluresult[31]_inst_0_i_13_0\,
      O => \^q_reg[29]_0\(5)
    );
\ALUResult[23]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_4_n_0\,
      I1 => \addressM[12]_1\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \^aluresult[28]_inst_0_i_6_0\,
      I4 => \ALUResult[23]_INST_0_i_5_n_0\,
      O => \ALUResult[23]_INST_0_i_1_n_0\
    );
\ALUResult[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(23),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(23),
      I4 => \addressM[29]_1\,
      O => \^srca\(13)
    );
\ALUResult[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[2]_0\,
      I1 => \ALUResult[29]_INST_0_i_6_n_0\,
      I2 => \result1_carry__0_i_8_0\,
      I3 => \^q_reg[0]_0\,
      I4 => \result1_carry__0_i_8\,
      I5 => \ALUResult[27]_INST_0_i_6_n_0\,
      O => \ALUResult[23]_INST_0_i_4_n_0\
    );
\ALUResult[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9000900FFFFFFFF"
    )
        port map (
      I0 => \^srca\(13),
      I1 => \addressM[23]\,
      I2 => \^alucontrol\(0),
      I3 => \^aluresult[8]_inst_0_i_6_0\,
      I4 => \ALUResult[29]_INST_0_i_1_0\(7),
      I5 => \^aluresult[31]_inst_0_i_13_0\,
      O => \ALUResult[23]_INST_0_i_5_n_0\
    );
\ALUResult[23]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5050CFC0"
    )
        port map (
      I0 => \^q_reg[0]_1\,
      I1 => \^srca\(6),
      I2 => \ALUResult[17]_INST_0_i_4\,
      I3 => \^srca\(1),
      I4 => \ALUResult[31]_INST_0_i_9\,
      O => \^q_reg[0]_0\
    );
\ALUResult[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FBF20B020B020"
    )
        port map (
      I0 => \^srca\(14),
      I1 => \addressM[24]\,
      I2 => \^aluresult[31]_inst_0_i_5_0\,
      I3 => \^aluresult[31]_inst_0_i_13_0\,
      I4 => \addressM[29]\(7),
      I5 => \ALUResult[24]_INST_0_i_3_n_0\,
      O => \^q_reg[29]_0\(6)
    );
\ALUResult[24]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(24),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(24),
      I4 => \addressM[29]_1\,
      O => \^srca\(14)
    );
\ALUResult[24]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \^aluresult[28]_inst_0_i_6_0\,
      I1 => \addressM[12]_1\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \^aluresult[29]_inst_0_i_6_0\,
      I4 => \addressM[24]_0\,
      O => \ALUResult[24]_INST_0_i_3_n_0\
    );
\ALUResult[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[3]_1\,
      I1 => \q[31]_i_34\,
      I2 => \result1_carry__0_i_8_0\,
      I3 => \^q_reg[1]_1\,
      I4 => \result1_carry__0_i_8\,
      I5 => \^q_reg[5]_1\,
      O => \^aluresult[28]_inst_0_i_6_0\
    );
\ALUResult[24]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7400740074FF7400"
    )
        port map (
      I0 => \^q_reg[1]_2\,
      I1 => \ALUResult[31]_INST_0_i_9\,
      I2 => \^srca\(7),
      I3 => \ALUResult[17]_INST_0_i_4\,
      I4 => \ALUResult[0]_INST_0_i_15\,
      I5 => \^q_reg[9]_1\,
      O => \^q_reg[1]_1\
    );
\ALUResult[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FBF20B020B020"
    )
        port map (
      I0 => \^srca\(15),
      I1 => \addressM[25]\,
      I2 => \^aluresult[31]_inst_0_i_5_0\,
      I3 => \^aluresult[31]_inst_0_i_13_0\,
      I4 => \addressM[29]\(8),
      I5 => \ALUResult[25]_INST_0_i_3_n_0\,
      O => \^q_reg[29]_0\(7)
    );
\ALUResult[25]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(25),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(25),
      I4 => \addressM[29]_1\,
      O => \^srca\(15)
    );
\ALUResult[25]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \^aluresult[29]_inst_0_i_6_0\,
      I1 => \addressM[12]_1\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \^aluresult[30]_inst_0_i_9\,
      I4 => \ALUResult[25]_INST_0_i_5_n_0\,
      O => \ALUResult[25]_INST_0_i_3_n_0\
    );
\ALUResult[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_6_n_0\,
      I1 => \ALUResult[31]_INST_0_i_22_n_0\,
      I2 => \result1_carry__0_i_8_0\,
      I3 => \^q_reg[2]_0\,
      I4 => \result1_carry__0_i_8\,
      I5 => \ALUResult[29]_INST_0_i_6_n_0\,
      O => \^aluresult[29]_inst_0_i_6_0\
    );
\ALUResult[25]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9000900FFFFFFFF"
    )
        port map (
      I0 => \^srca\(15),
      I1 => \addressM[25]\,
      I2 => \^alucontrol\(0),
      I3 => \^aluresult[8]_inst_0_i_6_0\,
      I4 => \ALUResult[29]_INST_0_i_1_0\(8),
      I5 => \^aluresult[31]_inst_0_i_13_0\,
      O => \ALUResult[25]_INST_0_i_5_n_0\
    );
\ALUResult[25]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^srca\(0),
      I1 => \^srca\(8),
      I2 => \ALUResult[17]_INST_0_i_4\,
      I3 => \^srca\(2),
      I4 => \ALUResult[31]_INST_0_i_9\,
      O => \^q_reg[2]_0\
    );
\ALUResult[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FBF20B020B020"
    )
        port map (
      I0 => \^srca\(16),
      I1 => \addressM[26]\,
      I2 => \^aluresult[31]_inst_0_i_5_0\,
      I3 => \^aluresult[31]_inst_0_i_13_0\,
      I4 => \addressM[29]\(9),
      I5 => \ALUResult[26]_INST_0_i_3_n_0\,
      O => \^q_reg[29]_0\(8)
    );
\ALUResult[26]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(26),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(26),
      I4 => \addressM[29]_1\,
      O => \^srca\(16)
    );
\ALUResult[26]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \^aluresult[30]_inst_0_i_9\,
      I1 => \addressM[12]_1\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \^aluresult[31]_inst_0_i_22_0\,
      I4 => \addressM[26]_0\,
      O => \ALUResult[26]_INST_0_i_3_n_0\
    );
\ALUResult[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[5]_1\,
      I1 => \^q_reg[1]_0\,
      I2 => \result1_carry__0_i_8_0\,
      I3 => \^q_reg[3]_1\,
      I4 => \result1_carry__0_i_8\,
      I5 => \q[31]_i_34\,
      O => \^aluresult[30]_inst_0_i_9\
    );
\ALUResult[26]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7400740074FF7400"
    )
        port map (
      I0 => \^q_reg[3]_2\,
      I1 => \ALUResult[31]_INST_0_i_9\,
      I2 => \^srca\(9),
      I3 => \ALUResult[17]_INST_0_i_4\,
      I4 => \ALUResult[0]_INST_0_i_15\,
      I5 => \^q_reg[11]_1\,
      O => \^q_reg[3]_1\
    );
\ALUResult[27]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(27),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(27),
      I4 => \addressM[29]_1\,
      O => \^srca\(17)
    );
\ALUResult[27]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_22_0\,
      I1 => \addressM[12]_1\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \addressM[27]\,
      I4 => \ALUResult[27]_INST_0_i_5_n_0\,
      O => \ALUResult[27]_INST_0_i_5_0\
    );
\ALUResult[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_6_n_0\,
      I1 => \ALUResult[31]_INST_0_i_20_n_0\,
      I2 => \result1_carry__0_i_8_0\,
      I3 => \ALUResult[27]_INST_0_i_6_n_0\,
      I4 => \result1_carry__0_i_8\,
      I5 => \ALUResult[31]_INST_0_i_22_n_0\,
      O => \^aluresult[31]_inst_0_i_22_0\
    );
\ALUResult[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9000900FFFFFFFF"
    )
        port map (
      I0 => \^srca\(17),
      I1 => \w_carry__2\,
      I2 => \^alucontrol\(0),
      I3 => \^aluresult[8]_inst_0_i_6_0\,
      I4 => \ALUResult[29]_INST_0_i_1_0\(9),
      I5 => \^aluresult[31]_inst_0_i_13_0\,
      O => \ALUResult[27]_INST_0_i_5_n_0\
    );
\ALUResult[27]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5050CFC0"
    )
        port map (
      I0 => \^q_reg[4]_0\,
      I1 => \^srca\(10),
      I2 => \ALUResult[17]_INST_0_i_4\,
      I3 => \^srca\(3),
      I4 => \ALUResult[31]_INST_0_i_9\,
      O => \ALUResult[27]_INST_0_i_6_n_0\
    );
\ALUResult[28]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(28),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(28),
      I4 => \addressM[29]_1\,
      O => \^srca\(18)
    );
\ALUResult[28]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7400740074FF7400"
    )
        port map (
      I0 => \^q_reg[5]_0\,
      I1 => \ALUResult[31]_INST_0_i_9\,
      I2 => \^srca\(11),
      I3 => \ALUResult[17]_INST_0_i_4\,
      I4 => \ALUResult[0]_INST_0_i_15\,
      I5 => \^q_reg[13]_1\,
      O => \^q_reg[5]_1\
    );
\ALUResult[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCCC00F08888"
    )
        port map (
      I0 => \addressM[29]\(10),
      I1 => \ALUResult[29]_INST_0_i_1_n_0\,
      I2 => \^srca\(19),
      I3 => \addressM[29]_0\,
      I4 => \^aluresult[31]_inst_0_i_5_0\,
      I5 => \^aluresult[31]_inst_0_i_13_0\,
      O => \^q_reg[29]_0\(9)
    );
\ALUResult[29]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_20_0\,
      I1 => \addressM[12]_1\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \ALUResult[30]_INST_0_i_7_n_0\,
      I4 => \ALUResult[29]_INST_0_i_5_n_0\,
      O => \ALUResult[29]_INST_0_i_1_n_0\
    );
\ALUResult[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(29),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(29),
      I4 => \addressM[29]_1\,
      O => \^srca\(19)
    );
\ALUResult[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_22_n_0\,
      I1 => \ALUResult[31]_INST_0_i_23_n_0\,
      I2 => \result1_carry__0_i_8_0\,
      I3 => \ALUResult[29]_INST_0_i_6_n_0\,
      I4 => \result1_carry__0_i_8\,
      I5 => \ALUResult[31]_INST_0_i_20_n_0\,
      O => \^aluresult[31]_inst_0_i_20_0\
    );
\ALUResult[29]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9000900FFFFFFFF"
    )
        port map (
      I0 => \^srca\(19),
      I1 => \addressM[29]_0\,
      I2 => \^alucontrol\(0),
      I3 => \^aluresult[8]_inst_0_i_6_0\,
      I4 => \ALUResult[29]_INST_0_i_1_0\(10),
      I5 => \^aluresult[31]_inst_0_i_13_0\,
      O => \ALUResult[29]_INST_0_i_5_n_0\
    );
\ALUResult[29]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5050CFC0"
    )
        port map (
      I0 => \^q_reg[6]_0\,
      I1 => \^srca\(12),
      I2 => \ALUResult[17]_INST_0_i_4\,
      I3 => \^srca\(4),
      I4 => \ALUResult[31]_INST_0_i_9\,
      O => \ALUResult[29]_INST_0_i_6_n_0\
    );
\ALUResult[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(2),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(2),
      I4 => \addressM[29]_1\,
      O => \^srca\(0)
    );
\ALUResult[30]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_7_n_0\,
      I1 => \addressM[12]_1\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \^aluresult[31]_inst_0_i_23_0\,
      I4 => \addressM[30]\,
      O => \ALUResult[30]_INST_0_i_8\
    );
\ALUResult[30]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[1]_0\,
      I1 => \ALUResult[31]_INST_0_i_16_n_0\,
      I2 => \result1_carry__0_i_8_0\,
      I3 => \q[31]_i_34\,
      I4 => \result1_carry__0_i_8\,
      I5 => \^q_reg[3]_0\,
      O => \ALUResult[30]_INST_0_i_7_n_0\
    );
\ALUResult[31]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_20_n_0\,
      I1 => \ALUResult[31]_INST_0_i_21_n_0\,
      I2 => \result1_carry__0_i_8_0\,
      I3 => \ALUResult[31]_INST_0_i_22_n_0\,
      I4 => \result1_carry__0_i_8\,
      I5 => \ALUResult[31]_INST_0_i_23_n_0\,
      O => \^aluresult[31]_inst_0_i_23_0\
    );
\ALUResult[31]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5515"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => Instr(12),
      I2 => Instr(2),
      I3 => Instr(0),
      O => \^aluresult[31]_inst_0_i_13_1\
    );
\ALUResult[31]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_24_n_0\,
      I1 => Instr(4),
      I2 => Instr(2),
      I3 => Instr(0),
      O => \^alucontrol\(0)
    );
\ALUResult[31]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505FCFCF505FC0C0"
    )
        port map (
      I0 => \^q_reg[1]_2\,
      I1 => \^srca\(7),
      I2 => \ALUResult[14]_INST_0_i_4_0\,
      I3 => \^q_reg[9]_1\,
      I4 => \ALUResult[31]_INST_0_i_9\,
      I5 => \^srca\(15),
      O => \^q_reg[1]_0\
    );
\ALUResult[31]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505FCFCF505FC0C0"
    )
        port map (
      I0 => \^q_reg[5]_0\,
      I1 => \^srca\(11),
      I2 => \ALUResult[14]_INST_0_i_4_0\,
      I3 => \^q_reg[13]_1\,
      I4 => \ALUResult[31]_INST_0_i_9\,
      I5 => \^srca\(19),
      O => \ALUResult[31]_INST_0_i_16_n_0\
    );
\ALUResult[31]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505FCFCF505FC0C0"
    )
        port map (
      I0 => \^q_reg[3]_2\,
      I1 => \^srca\(9),
      I2 => \ALUResult[14]_INST_0_i_4_0\,
      I3 => \^q_reg[11]_1\,
      I4 => \ALUResult[31]_INST_0_i_9\,
      I5 => \^srca\(17),
      O => \^q_reg[3]_0\
    );
\ALUResult[31]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^srca\(0),
      I1 => \^srca\(8),
      I2 => \ALUResult[14]_INST_0_i_4_0\,
      I3 => \^srca\(2),
      I4 => \ALUResult[31]_INST_0_i_9\,
      I5 => \^srca\(16),
      O => \ALUResult[31]_INST_0_i_20_n_0\
    );
\ALUResult[31]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F50C0C05F50CFCF"
    )
        port map (
      I0 => \^q_reg[6]_0\,
      I1 => \^srca\(12),
      I2 => \ALUResult[14]_INST_0_i_4_0\,
      I3 => \^srca\(4),
      I4 => \ALUResult[31]_INST_0_i_9\,
      I5 => \ALUResult[31]_INST_0_i_11_0\,
      O => \ALUResult[31]_INST_0_i_21_n_0\
    );
\ALUResult[31]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F50CFCF5F50C0C0"
    )
        port map (
      I0 => \^q_reg[0]_1\,
      I1 => \^srca\(6),
      I2 => \ALUResult[14]_INST_0_i_4_0\,
      I3 => \^srca\(1),
      I4 => \ALUResult[31]_INST_0_i_9\,
      I5 => \^srca\(14),
      O => \ALUResult[31]_INST_0_i_22_n_0\
    );
\ALUResult[31]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F50CFCF5F50C0C0"
    )
        port map (
      I0 => \^q_reg[4]_0\,
      I1 => \^srca\(10),
      I2 => \ALUResult[14]_INST_0_i_4_0\,
      I3 => \^srca\(3),
      I4 => \ALUResult[31]_INST_0_i_9\,
      I5 => \^srca\(18),
      O => \ALUResult[31]_INST_0_i_23_n_0\
    );
\ALUResult[31]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8028802A802A802A"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(10),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(28),
      I5 => Instr(3),
      O => \ALUResult[31]_INST_0_i_24_n_0\
    );
\ALUResult[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000C0C0C0C0808"
    )
        port map (
      I0 => Instr(10),
      I1 => Instr(2),
      I2 => Instr(0),
      I3 => \^alucontrol\(0),
      I4 => Instr(11),
      I5 => Instr(12),
      O => \^aluresult[31]_inst_0_i_13_0\
    );
\ALUResult[31]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Instr(12),
      I1 => Instr(11),
      I2 => Instr(0),
      I3 => Instr(2),
      O => \^aluresult[31]_inst_0_i_5_0\
    );
\ALUResult[31]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[1]_0\,
      I1 => \result1_carry__0_i_8\,
      I2 => \ALUResult[31]_INST_0_i_16_n_0\,
      O => \ALUResult[31]_INST_0_i_16_0\
    );
\ALUResult[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F704F7"
    )
        port map (
      I0 => \^q\(3),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(3),
      I4 => \addressM[29]_1\,
      O => \^q_reg[3]_2\
    );
\ALUResult[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F704F7"
    )
        port map (
      I0 => \^q\(4),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(4),
      I4 => \addressM[29]_1\,
      O => \^q_reg[4]_0\
    );
\ALUResult[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F704F7"
    )
        port map (
      I0 => \^q\(5),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(5),
      I4 => \addressM[29]_1\,
      O => \^q_reg[5]_0\
    );
\ALUResult[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F704F7"
    )
        port map (
      I0 => \^q\(6),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(6),
      I4 => \addressM[29]_1\,
      O => \^q_reg[6]_0\
    );
\ALUResult[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F704F7"
    )
        port map (
      I0 => \^q\(7),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(7),
      I4 => \addressM[29]_1\,
      O => \^q_reg[7]_0\
    );
\ALUResult[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \^q\(8),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(8),
      I4 => \addressM[29]_1\,
      O => \^srca\(1)
    );
\ALUResult[8]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => Instr(12),
      O => \^aluresult[8]_inst_0_i_6_0\
    );
\ALUResult[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F704F7"
    )
        port map (
      I0 => \^q\(9),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(9),
      I4 => \addressM[29]_1\,
      O => \^q_reg[9]_1\
    );
\ALUResult[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9000900FFFFFFFF"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \w_carry__0_0\,
      I2 => \^alucontrol\(0),
      I3 => \^aluresult[8]_inst_0_i_6_0\,
      I4 => \ALUResult[29]_INST_0_i_1_0\(1),
      I5 => \^aluresult[31]_inst_0_i_13_0\,
      O => \q_reg[9]_3\
    );
\q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \q_reg[0]_2\,
      I4 => Instr(4),
      I5 => \q_reg[0]_3\,
      O => \q[0]_i_1_n_0\
    );
\q[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[10]_0\,
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(0),
      O => \q_reg[11]_0\
    );
\q[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[29]_0\(0),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(1),
      O => \q_reg[15]_0\
    );
\q[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[29]_0\(1),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(2),
      O => \q_reg[15]_1\
    );
\q[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[29]_0\(2),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(3),
      O => \q_reg[19]_0\
    );
\q[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[29]_0\(3),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(4),
      O => \q_reg[23]_0\
    );
\q[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[29]_0\(4),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(5),
      O => \q_reg[23]_1\
    );
\q[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[29]_0\(5),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(6),
      O => \q_reg[23]_2\
    );
\q[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[29]_0\(6),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(7),
      O => \q_reg[27]_0\
    );
\q[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[29]_0\(7),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(8),
      O => \q_reg[27]_1\
    );
\q[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[29]_0\(8),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(9),
      O => \q_reg[27]_2\
    );
\q[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[31]_2\(0),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \q_reg[0]_2\,
      I4 => Instr(4),
      I5 => \q[29]_i_2_n_0\,
      O => \q[29]_i_1_n_0\
    );
\q[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[29]_0\(9),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(10),
      O => \q[29]_i_2_n_0\
    );
\q[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[31]_2\(1),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \q_reg[0]_2\,
      I4 => Instr(4),
      I5 => \q_reg[30]_2\,
      O => \q[30]_i_1_n_0\
    );
\q[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[31]_2\(2),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \q_reg[0]_2\,
      I4 => Instr(4),
      I5 => \q_reg[31]_3\,
      O => \q[31]_i_1_n_0\
    );
\q[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^q_reg[29]_0\(4),
      I1 => \^q_reg[29]_0\(5),
      I2 => ALUResult(1),
      I3 => \^q_reg[29]_0\(3),
      I4 => \q[31]_i_18_n_0\,
      I5 => \q[31]_i_19_n_0\,
      O => \q[31]_i_19_0\
    );
\q[31]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \q[31]_i_26_n_0\,
      I1 => \q[31]_i_10\,
      I2 => \q[31]_i_28_n_0\,
      I3 => \^aluresult[31]_inst_0_i_5_0\,
      I4 => \q[31]_i_10_0\,
      O => \q_reg[12]_0\
    );
\q[31]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \q[31]_i_38_n_0\,
      I1 => \q[31]_i_12_2\,
      I2 => \q[31]_i_12_3\,
      I3 => \q[31]_i_41_n_0\,
      O => \q[31]_i_18_n_0\
    );
\q[31]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFE2"
    )
        port map (
      I0 => \q[31]_i_12_0\,
      I1 => \^aluresult[31]_inst_0_i_5_0\,
      I2 => \q[31]_i_12_1\,
      I3 => \q[31]_i_44_n_0\,
      I4 => \q[31]_i_45_n_0\,
      O => \q[31]_i_19_n_0\
    );
\q[31]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FAEAAAEA"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_5_n_0\,
      I1 => \addressM[12]_0\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \addressM[12]_1\,
      I4 => \^aluresult[12]_inst_0_i_6_0\,
      I5 => \q[31]_i_15_0\,
      O => \q[31]_i_26_n_0\
    );
\q[31]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FAEAAAEA"
    )
        port map (
      I0 => \^q_reg[13]_0\,
      I1 => \^aluresult[14]_inst_0_i_6_0\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \addressM[12]_1\,
      I4 => \addressM[12]_0\,
      I5 => \q[31]_i_15_1\,
      O => \q[31]_i_28_n_0\
    );
\q[31]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FAEAAAEA"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_5_n_0\,
      I1 => \^aluresult[30]_inst_0_i_9\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \addressM[12]_1\,
      I4 => \^aluresult[29]_inst_0_i_6_0\,
      I5 => \q[31]_i_16\,
      O => \q[31]_i_54\
    );
\q[31]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FAEAAAEA"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_5_n_0\,
      I1 => \addressM[27]\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \addressM[12]_1\,
      I4 => \^aluresult[31]_inst_0_i_22_0\,
      I5 => \q[31]_i_17\,
      O => \q[31]_i_56\
    );
\q[31]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C880"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_13_0\,
      I1 => \^aluresult[31]_inst_0_i_5_0\,
      I2 => \^srca\(8),
      I3 => \w_carry__1_0\,
      O => \q[31]_i_38_n_0\
    );
\q[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Instr(12),
      I1 => Instr(0),
      I2 => Instr(2),
      O => \q[31]_i_4_0\
    );
\q[31]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C880"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_13_0\,
      I1 => \^aluresult[31]_inst_0_i_5_0\,
      I2 => \^srca\(9),
      I3 => \w_carry__1\,
      O => \q[31]_i_41_n_0\
    );
\q[31]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FAEAAAEA"
    )
        port map (
      I0 => \^q_reg[17]_0\,
      I1 => \^aluresult[22]_inst_0_i_6\,
      I2 => \^aluresult[31]_inst_0_i_13_1\,
      I3 => \addressM[12]_1\,
      I4 => \addressM[16]_0\,
      I5 => \q[31]_i_19_1\,
      O => \q[31]_i_44_n_0\
    );
\q[31]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C880"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_13_0\,
      I1 => \^aluresult[31]_inst_0_i_5_0\,
      I2 => \^srca\(7),
      I3 => \w_carry__1_1\,
      O => \q[31]_i_45_n_0\
    );
\q[31]_i_47\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => \^q_reg[8]_1\,
      I1 => \result1_carry__0_i_8\,
      I2 => \^q_reg[12]_1\,
      O => \ALUResult[0]_INST_0_i_16_0\
    );
\q[31]_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA820082"
    )
        port map (
      I0 => \^aluresult[8]_inst_0_i_6_0\,
      I1 => \^srca\(1),
      I2 => \w_carry__0\,
      I3 => \^alucontrol\(0),
      I4 => \ALUResult[29]_INST_0_i_1_0\(0),
      O => \q_reg[8]_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(9),
      Q => \^q\(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(10),
      Q => \^q\(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(11),
      Q => \^q\(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(12),
      Q => \^q\(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(13),
      Q => \^q\(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(14),
      Q => \^q\(15)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(15),
      Q => \^q\(16)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(16),
      Q => \^q\(17)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(17),
      Q => \^q\(18)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(18),
      Q => \^q\(19)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(0),
      Q => \^q\(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(19),
      Q => \^q\(20)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(20),
      Q => \^q\(21)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(21),
      Q => \^q\(22)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(22),
      Q => \^q\(23)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(23),
      Q => \^q\(24)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(24),
      Q => \^q\(25)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(25),
      Q => \^q\(26)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(26),
      Q => \^q\(27)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(27),
      Q => \^q\(28)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q[29]_i_1_n_0\,
      Q => \^q\(29)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(1),
      Q => \^q\(2)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q[30]_i_1_n_0\,
      Q => \^q\(30)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q[31]_i_1_n_0\,
      Q => \^q\(31)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(2),
      Q => \^q\(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(3),
      Q => \^q\(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(4),
      Q => \^q\(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(5),
      Q => \^q\(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(6),
      Q => \^q\(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(7),
      Q => \^q\(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(8),
      Q => \^q\(9)
    );
\result1_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF8F0088008800"
    )
        port map (
      I0 => \^srca\(11),
      I1 => \ALUResult[14]_INST_0_i_4_0\,
      I2 => \^q_reg[13]_1\,
      I3 => \ALUResult[0]_INST_0_i_15\,
      I4 => \^srca\(19),
      I5 => \ALUResult[17]_INST_0_i_4\,
      O => \result1_carry__0_i_16_n_0\
    );
\result1_carry__0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \^srca\(10),
      I1 => \ALUResult[31]_INST_0_i_9\,
      I2 => \ALUResult[14]_INST_0_i_4_0\,
      I3 => \^srca\(3),
      I4 => \ALUResult[0]_INST_0_i_15\,
      I5 => \^srca\(18),
      O => \q_reg[20]_0\
    );
\result1_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__0_i_16_n_0\,
      I1 => \result1_carry__0_i_8\,
      I2 => \^q_reg[17]_1\,
      O => result1_carry_i_14_0
    );
\result1_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^srca\(15),
      I1 => \ALUResult[14]_INST_0_i_4_0\,
      I2 => \ALUResult[0]_INST_0_i_15\,
      I3 => \^srca\(7),
      I4 => \result1_carry__0_i_8\,
      I5 => \result1_carry__0_i_16_n_0\,
      O => \q_reg[25]_0\
    );
\result1_carry__2_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^srca\(19),
      I1 => \ALUResult[14]_INST_0_i_4_0\,
      I2 => \ALUResult[0]_INST_0_i_15\,
      I3 => \^srca\(11),
      I4 => \result1_carry__0_i_8\,
      I5 => \result1_carry__2_i_17_n_0\,
      O => \q_reg[29]_1\
    );
\result1_carry__2_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^srca\(15),
      I1 => \ALUResult[14]_INST_0_i_4_0\,
      I2 => \ALUResult[0]_INST_0_i_15\,
      I3 => \^srca\(7),
      O => \result1_carry__2_i_17_n_0\
    );
\result1_carry__2_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^srca\(17),
      I1 => \ALUResult[14]_INST_0_i_4_0\,
      I2 => \ALUResult[0]_INST_0_i_15\,
      I3 => \^srca\(9),
      O => \q_reg[27]_3\
    );
\result1_carry__3_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => \^srca\(15),
      I1 => \result1_carry__0_i_8\,
      I2 => \^srca\(19),
      I3 => \ALUResult[14]_INST_0_i_4_0\,
      I4 => \ALUResult[0]_INST_0_i_15\,
      I5 => \^srca\(11),
      O => \q_reg[25]_1\
    );
result1_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF8F0088008800"
    )
        port map (
      I0 => \^srca\(7),
      I1 => \ALUResult[14]_INST_0_i_4_0\,
      I2 => \^q_reg[9]_1\,
      I3 => \ALUResult[0]_INST_0_i_15\,
      I4 => \^srca\(15),
      I5 => \ALUResult[17]_INST_0_i_4\,
      O => \^q_reg[17]_1\
    );
result1_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF8F0088008800"
    )
        port map (
      I0 => \^srca\(9),
      I1 => \ALUResult[14]_INST_0_i_4_0\,
      I2 => \^q_reg[11]_1\,
      I3 => \ALUResult[0]_INST_0_i_15\,
      I4 => \^srca\(17),
      I5 => \ALUResult[17]_INST_0_i_4\,
      O => \^q_reg[19]_1\
    );
result1_carry_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A3AFA0A0A3AFA3AF"
    )
        port map (
      I0 => \^q_reg[30]_1\,
      I1 => \^srca\(12),
      I2 => \ALUResult[14]_INST_0_i_4_0\,
      I3 => \ALUResult[31]_INST_0_i_9\,
      I4 => \^q_reg[6]_0\,
      I5 => \ALUResult[0]_INST_0_i_15\,
      O => \q_reg[30]_0\
    );
result1_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A3A3A3A3F000FF0F"
    )
        port map (
      I0 => \^q_reg[17]_1\,
      I1 => \^q_reg[13]_2\,
      I2 => \result1_carry__0_i_8\,
      I3 => \^q_reg[19]_1\,
      I4 => \result1_carry__0_i_8_1\,
      I5 => \result1_carry__0_i_8_0\,
      O => \ALUResult[1]_INST_0_i_2\
    );
rf_reg_r1_0_31_0_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rf_reg_r1_0_31_0_5,
      I1 => \^q\(0),
      I2 => rf_reg_r1_0_31_24_29,
      I3 => ReadData(0),
      I4 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I5 => ALUResult(0),
      O => wd3(0)
    );
rf_reg_r1_0_31_12_17_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F404FFFFF4040000"
    )
        port map (
      I0 => Instr(12),
      I1 => ReadData(1),
      I2 => rf_reg_r1_0_31_12_17_i_4_0,
      I3 => ReadData(4),
      I4 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I5 => \^q_reg[29]_0\(1),
      O => rf_reg_r1_0_31_12_17_i_13_n_0
    );
rf_reg_r1_0_31_12_17_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => rf_reg_r1_0_31_24_29_i_5_0,
      I1 => ReadData(5),
      I2 => Instr(11),
      I3 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I4 => \^q_reg[29]_0\(2),
      O => rf_reg_r1_0_31_12_17_i_17_n_0
    );
rf_reg_r1_0_31_12_17_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_12_17_i_9_n_0,
      I1 => rf_reg_r1_0_31_12_17,
      O => wd3(1),
      S => rf_reg_r1_0_31_24_29
    );
rf_reg_r1_0_31_12_17_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_12_17_i_13_n_0,
      I1 => rf_reg_r1_0_31_12_17_0,
      O => wd3(2),
      S => rf_reg_r1_0_31_24_29
    );
rf_reg_r1_0_31_12_17_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_12_17_i_17_n_0,
      I1 => rf_reg_r1_0_31_12_17_1,
      O => wd3(3),
      S => rf_reg_r1_0_31_24_29
    );
rf_reg_r1_0_31_12_17_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F404FFFFF4040000"
    )
        port map (
      I0 => Instr(12),
      I1 => ReadData(1),
      I2 => rf_reg_r1_0_31_12_17_i_4_0,
      I3 => ReadData(3),
      I4 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I5 => \^q_reg[29]_0\(0),
      O => rf_reg_r1_0_31_12_17_i_9_n_0
    );
rf_reg_r1_0_31_18_23_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => rf_reg_r1_0_31_24_29_i_5_0,
      I1 => ReadData(6),
      I2 => Instr(11),
      I3 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I4 => \^q_reg[29]_0\(3),
      O => rf_reg_r1_0_31_18_23_i_11_n_0
    );
rf_reg_r1_0_31_18_23_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => rf_reg_r1_0_31_24_29_i_5_0,
      I1 => ReadData(8),
      I2 => Instr(11),
      I3 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I4 => \^q_reg[29]_0\(5),
      O => rf_reg_r1_0_31_18_23_i_15_n_0
    );
rf_reg_r1_0_31_18_23_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => rf_reg_r1_0_31_24_29_i_5_0,
      I1 => ReadData(7),
      I2 => Instr(11),
      I3 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I4 => \^q_reg[29]_0\(4),
      O => rf_reg_r1_0_31_18_23_i_17_n_0
    );
rf_reg_r1_0_31_18_23_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_18_23_i_11_n_0,
      I1 => rf_reg_r1_0_31_18_23,
      O => wd3(4),
      S => rf_reg_r1_0_31_24_29
    );
rf_reg_r1_0_31_18_23_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_18_23_i_15_n_0,
      I1 => rf_reg_r1_0_31_18_23_1,
      O => wd3(6),
      S => rf_reg_r1_0_31_24_29
    );
rf_reg_r1_0_31_18_23_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_18_23_i_17_n_0,
      I1 => rf_reg_r1_0_31_18_23_0,
      O => wd3(5),
      S => rf_reg_r1_0_31_24_29
    );
rf_reg_r1_0_31_24_29_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_24_29_i_7_n_0,
      I1 => rf_reg_r1_0_31_24_29_1,
      O => wd3(8),
      S => rf_reg_r1_0_31_24_29
    );
rf_reg_r1_0_31_24_29_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => rf_reg_r1_0_31_24_29_i_5_0,
      I1 => ReadData(11),
      I2 => Instr(11),
      I3 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I4 => \^q_reg[29]_0\(8),
      O => rf_reg_r1_0_31_24_29_i_13_n_0
    );
rf_reg_r1_0_31_24_29_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => rf_reg_r1_0_31_24_29_i_5_0,
      I1 => ReadData(12),
      I2 => Instr(11),
      I3 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I4 => \^q_reg[29]_0\(9),
      O => rf_reg_r1_0_31_24_29_i_15_n_0
    );
rf_reg_r1_0_31_24_29_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => Instr(27),
      I4 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I5 => \q_reg[31]_2\(0),
      O => rf_reg_r1_0_31_24_29_i_16_n_0
    );
rf_reg_r1_0_31_24_29_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_24_29_i_9_n_0,
      I1 => rf_reg_r1_0_31_24_29_0,
      O => wd3(7),
      S => rf_reg_r1_0_31_24_29
    );
rf_reg_r1_0_31_24_29_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_24_29_i_13_n_0,
      I1 => rf_reg_r1_0_31_24_29_2,
      O => wd3(9),
      S => rf_reg_r1_0_31_24_29
    );
rf_reg_r1_0_31_24_29_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_24_29_i_15_n_0,
      I1 => rf_reg_r1_0_31_24_29_i_16_n_0,
      O => wd3(10),
      S => rf_reg_r1_0_31_24_29
    );
rf_reg_r1_0_31_24_29_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => rf_reg_r1_0_31_24_29_i_5_0,
      I1 => ReadData(10),
      I2 => Instr(11),
      I3 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I4 => \^q_reg[29]_0\(7),
      O => rf_reg_r1_0_31_24_29_i_7_n_0
    );
rf_reg_r1_0_31_24_29_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => rf_reg_r1_0_31_24_29_i_5_0,
      I1 => ReadData(9),
      I2 => Instr(11),
      I3 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I4 => \^q_reg[29]_0\(6),
      O => rf_reg_r1_0_31_24_29_i_9_n_0
    );
rf_reg_r1_0_31_30_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Instr(29),
      I1 => \q_reg[31]_2\(2),
      I2 => rf_reg_r1_0_31_24_29,
      I3 => \rf_reg_r2_0_31_30_31__0\,
      I4 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I5 => ALUResult(2),
      O => wd3(11)
    );
rf_reg_r1_0_31_30_31_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => Instr(28),
      I4 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I5 => \q_reg[31]_2\(1),
      O => \q_reg[31]_0\
    );
rf_reg_r1_0_31_6_11_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F404FFFFF4040000"
    )
        port map (
      I0 => Instr(12),
      I1 => ReadData(1),
      I2 => rf_reg_r1_0_31_12_17_i_4_0,
      I3 => ReadData(2),
      I4 => \rf_reg_r1_0_31_30_31_i_1__0\,
      I5 => \^q_reg[10]_0\,
      O => \readDataM[7]\
    );
\sum_carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2020EF20"
    )
        port map (
      I0 => \^q\(15),
      I1 => Instr(3),
      I2 => Instr(0),
      I3 => rd10(15),
      I4 => \addressM[29]_1\,
      O => \^srca\(5)
    );
\sum_carry__6_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2020EF20"
    )
        port map (
      I0 => \^q\(30),
      I1 => Instr(3),
      I2 => Instr(0),
      I3 => rd10(30),
      I4 => \addressM[29]_1\,
      O => \^srca\(20)
    );
\w_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F440"
    )
        port map (
      I0 => \^srca\(2),
      I1 => \addressM[10]\,
      I2 => \w_carry__0_1\,
      I3 => \^q_reg[11]_1\,
      O => \q_reg[10]_1\(0)
    );
\w_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \w_carry__0_0\,
      I2 => \^srca\(1),
      I3 => \w_carry__0\,
      O => \q_reg[9]_0\(0)
    );
\w_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \^srca\(8),
      I1 => \w_carry__1_0\,
      I2 => \w_carry__1\,
      I3 => \^srca\(9),
      O => \q_reg[18]_0\(1)
    );
\w_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \^srca\(6),
      I1 => \addressM[16]\,
      I2 => \w_carry__1_1\,
      I3 => \^srca\(7),
      O => \q_reg[18]_0\(0)
    );
\w_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => \^srca\(13),
      I1 => \addressM[23]\,
      I2 => \addressM[22]\,
      I3 => \^srca\(12),
      O => \q_reg[23]_3\(3)
    );
\w_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => \^srca\(11),
      I1 => \addressM[21]\,
      I2 => \w_carry__1_2\,
      I3 => \^srca\(10),
      O => \q_reg[23]_3\(2)
    );
\w_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^srca\(9),
      I1 => \w_carry__1\,
      I2 => \^srca\(8),
      I3 => \w_carry__1_0\,
      O => \q_reg[23]_3\(1)
    );
\w_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^srca\(7),
      I1 => \w_carry__1_1\,
      I2 => \^srca\(6),
      I3 => \addressM[16]\,
      O => \q_reg[23]_3\(0)
    );
\w_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => \^srca\(19),
      I1 => \addressM[29]_0\,
      I2 => \^srca\(18),
      I3 => \w_carry__2_0\,
      O => \q_reg[29]_2\(2)
    );
\w_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => \^srca\(17),
      I1 => \w_carry__2\,
      I2 => \^srca\(16),
      I3 => \addressM[26]\,
      O => \q_reg[29]_2\(1)
    );
\w_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => \^srca\(15),
      I1 => \addressM[25]\,
      I2 => \^srca\(14),
      I3 => \addressM[24]\,
      O => \q_reg[29]_2\(0)
    );
w_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => \^q_reg[5]_0\,
      I1 => w_carry,
      I2 => \^q_reg[4]_0\,
      I3 => \ALUResult[31]_INST_0_i_9\,
      O => DI(2)
    );
w_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F440"
    )
        port map (
      I0 => \^srca\(0),
      I1 => \result1_carry__0_i_8\,
      I2 => \ALUResult[14]_INST_0_i_4_0\,
      I3 => \^q_reg[3]_2\,
      O => DI(1)
    );
w_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F08"
    )
        port map (
      I0 => \^q_reg[0]_1\,
      I1 => \addressM[12]_1\,
      I2 => \result1_carry__0_i_8_0\,
      I3 => \^q_reg[1]_2\,
      O => DI(0)
    );
w_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => \^q_reg[3]_2\,
      I1 => \ALUResult[14]_INST_0_i_4_0\,
      I2 => \^srca\(0),
      I3 => \result1_carry__0_i_8\,
      O => \q_reg[3]_3\(1)
    );
w_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \^q_reg[1]_2\,
      I1 => \result1_carry__0_i_8_0\,
      I2 => \addressM[12]_1\,
      I3 => \^q_reg[0]_1\,
      O => \q_reg[3]_3\(0)
    );
w_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F704F7"
    )
        port map (
      I0 => \^q\(0),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => rd10(0),
      I4 => \addressM[29]_1\,
      O => \^q_reg[0]_1\
    );
\y_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(7),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(25),
      O => \q_reg[7]_1\(3)
    );
\y_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(6),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(24),
      O => \q_reg[7]_1\(2)
    );
\y_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(5),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(23),
      O => \q_reg[7]_1\(1)
    );
\y_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA56599A6A"
    )
        port map (
      I0 => \^q\(4),
      I1 => \y_carry__0_0\,
      I2 => Instr(9),
      I3 => \y_carry__0\,
      I4 => Instr(22),
      I5 => \y_carry__0_1\,
      O => \q_reg[7]_1\(0)
    );
\y_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(11),
      I1 => \y_carry__1\,
      O => \q_reg[11]_2\(3)
    );
\y_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(10),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(28),
      O => \q_reg[11]_2\(2)
    );
\y_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(9),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(27),
      O => \q_reg[11]_2\(1)
    );
\y_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(8),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(26),
      O => \q_reg[11]_2\(0)
    );
\y_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^q\(15),
      I1 => Instr(29),
      I2 => \y_carry__2\,
      I3 => Instr(13),
      O => \q_reg[15]_2\(3)
    );
\y_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^q\(14),
      I1 => Instr(29),
      I2 => \y_carry__2\,
      I3 => Instr(12),
      O => \q_reg[15]_2\(2)
    );
\y_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^q\(13),
      I1 => Instr(29),
      I2 => \y_carry__2\,
      I3 => Instr(11),
      O => \q_reg[15]_2\(1)
    );
\y_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^q\(12),
      I1 => Instr(29),
      I2 => \y_carry__2\,
      I3 => Instr(10),
      O => \q_reg[15]_2\(0)
    );
\y_carry__3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^q\(19),
      I1 => Instr(29),
      I2 => \y_carry__2\,
      I3 => Instr(17),
      O => \q_reg[19]_2\(3)
    );
\y_carry__3_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^q\(18),
      I1 => Instr(29),
      I2 => \y_carry__2\,
      I3 => Instr(16),
      O => \q_reg[19]_2\(2)
    );
\y_carry__3_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^q\(17),
      I1 => Instr(29),
      I2 => \y_carry__2\,
      I3 => Instr(15),
      O => \q_reg[19]_2\(1)
    );
\y_carry__3_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^q\(16),
      I1 => Instr(29),
      I2 => \y_carry__2\,
      I3 => Instr(14),
      O => \q_reg[19]_2\(0)
    );
\y_carry__4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(23),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(21),
      O => \q_reg[23]_4\(3)
    );
\y_carry__4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(22),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(20),
      O => \q_reg[23]_4\(2)
    );
\y_carry__4_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(21),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(19),
      O => \q_reg[23]_4\(1)
    );
\y_carry__4_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(20),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(18),
      O => \q_reg[23]_4\(0)
    );
\y_carry__5_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(27),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(25),
      O => \q_reg[27]_4\(3)
    );
\y_carry__5_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(26),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(24),
      O => \q_reg[27]_4\(2)
    );
\y_carry__5_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(25),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(23),
      O => \q_reg[27]_4\(1)
    );
\y_carry__5_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(24),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(22),
      O => \q_reg[27]_4\(0)
    );
\y_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Instr(29),
      I1 => \^q\(31),
      O => \q_reg[31]_1\(3)
    );
\y_carry__6_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(30),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(28),
      O => \q_reg[31]_1\(2)
    );
\y_carry__6_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(29),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(27),
      O => \q_reg[31]_1\(1)
    );
\y_carry__6_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(28),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(26),
      O => \q_reg[31]_1\(0)
    );
y_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => S(0)
    );
\y_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"656565AAAA65AAAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => y_carry,
      I4 => Instr(21),
      I5 => Instr(8),
      O => \q_reg[3]_4\(3)
    );
y_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"656565AAAA65AAAA"
    )
        port map (
      I0 => \^q\(2),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => y_carry,
      I4 => Instr(20),
      I5 => Instr(7),
      O => \q_reg[3]_4\(2)
    );
y_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"656565AAAA65AAAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => y_carry,
      I4 => Instr(19),
      I5 => Instr(6),
      O => \q_reg[3]_4\(1)
    );
y_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA56A6AAAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => Instr(5),
      I2 => \y_carry__0\,
      I3 => Instr(18),
      I4 => \y_carry__0_0\,
      I5 => \y_carry__0_1\,
      O => \q_reg[3]_4\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile is
  port (
    clk_0 : out STD_LOGIC_VECTOR ( 30 downto 0 );
    D : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \q[31]_i_6\ : out STD_LOGIC;
    \q_reg[0]\ : out STD_LOGIC;
    \q_reg[1]\ : out STD_LOGIC;
    clk_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[31]\ : out STD_LOGIC;
    \q_reg[28]\ : out STD_LOGIC;
    \q_reg[31]_0\ : out STD_LOGIC_VECTOR ( 25 downto 0 );
    clk_2 : out STD_LOGIC;
    \q_reg[2]\ : out STD_LOGIC;
    \q_reg[3]\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_6\ : out STD_LOGIC;
    \WriteData[3]_INST_0_0\ : out STD_LOGIC;
    \q_reg[4]\ : out STD_LOGIC;
    \q_reg[7]\ : out STD_LOGIC;
    \q_reg[6]\ : out STD_LOGIC;
    \q_reg[5]\ : out STD_LOGIC;
    \WriteData[4]_INST_0_0\ : out STD_LOGIC;
    clk_3 : out STD_LOGIC;
    clk_4 : out STD_LOGIC;
    clk_5 : out STD_LOGIC;
    \readDataM[7]\ : out STD_LOGIC;
    rf_reg_r1_0_31_6_11_i_13_0 : out STD_LOGIC;
    rf_reg_r1_0_31_0_5_i_9_0 : out STD_LOGIC;
    \q_reg[19]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk_6 : out STD_LOGIC;
    clk_7 : out STD_LOGIC;
    \readDataM[7]_0\ : out STD_LOGIC;
    clk_8 : out STD_LOGIC;
    \ALUResult[10]_INST_0_i_5\ : out STD_LOGIC;
    clk_9 : out STD_LOGIC;
    \q_reg[12]\ : out STD_LOGIC;
    clk_10 : out STD_LOGIC;
    rf_reg_r1_0_31_0_5_i_8_0 : out STD_LOGIC;
    clk_11 : out STD_LOGIC;
    \q_reg[6]_0\ : out STD_LOGIC;
    \q_reg[13]\ : out STD_LOGIC;
    \ALUResult[19]_INST_0_i_7_0\ : out STD_LOGIC;
    \q_reg[16]\ : out STD_LOGIC;
    clk_12 : out STD_LOGIC;
    \readDataM[15]\ : out STD_LOGIC;
    clk_13 : out STD_LOGIC;
    \ALUResult[21]_INST_0_i_6_0\ : out STD_LOGIC;
    \ALUResult[18]_INST_0_i_5\ : out STD_LOGIC;
    \ALUResult[23]_INST_0_i_6\ : out STD_LOGIC;
    clk_14 : out STD_LOGIC;
    \q[31]_i_58\ : out STD_LOGIC;
    \ALUResult[20]_INST_0_i_5\ : out STD_LOGIC;
    clk_15 : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_15\ : out STD_LOGIC;
    clk_16 : out STD_LOGIC;
    clk_17 : out STD_LOGIC;
    clk_18 : out STD_LOGIC;
    clk_19 : out STD_LOGIC;
    \q_reg[31]_1\ : out STD_LOGIC;
    clk_20 : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \WriteData[3]_INST_0_1\ : out STD_LOGIC;
    \q_reg[31]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \readDataM[7]_1\ : out STD_LOGIC;
    \q_reg[14]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_21 : out STD_LOGIC;
    \q_reg[14]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ALUResult[19]_INST_0_i_4_0\ : out STD_LOGIC;
    \q_reg[6]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \WriteData[4]_INST_0_1\ : out STD_LOGIC;
    \q_reg[23]\ : out STD_LOGIC;
    \q_reg[7]_0\ : out STD_LOGIC;
    \q_reg[7]_1\ : out STD_LOGIC;
    \q_reg[6]_2\ : out STD_LOGIC;
    \q_reg[30]\ : out STD_LOGIC;
    \q_reg[31]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_22 : out STD_LOGIC;
    \q_reg[30]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[31]_4\ : out STD_LOGIC;
    clk_23 : out STD_LOGIC;
    clk_24 : out STD_LOGIC;
    \q_reg[22]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_25 : out STD_LOGIC;
    clk_26 : out STD_LOGIC;
    clk_27 : out STD_LOGIC;
    clk_28 : out STD_LOGIC;
    clk_29 : out STD_LOGIC;
    rf_reg_r1_0_31_6_11_i_7_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \q_reg[13]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \readDataM[31]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[1]_INST_0_i_2_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[2]_INST_0_i_1_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[2]_INST_0_i_1_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[31]_5\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \result1_carry__3_i_15_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[31]_6\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[31]_7\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[31]_INST_0_i_10_0\ : out STD_LOGIC;
    \q_reg[7]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[0]_0\ : out STD_LOGIC;
    \q_reg[30]_1\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12\ : out STD_LOGIC;
    \q_reg[0]_1\ : out STD_LOGIC;
    \ALUResult[2]_INST_0_i_1_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    y_carry_i_5 : out STD_LOGIC;
    clk : in STD_LOGIC;
    \writeDataM[31]\ : in STD_LOGIC_VECTOR ( 26 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \q_reg[28]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \q_reg[28]_1\ : in STD_LOGIC;
    \q_reg[28]_2\ : in STD_LOGIC;
    \q_reg[31]_i_2_0\ : in STD_LOGIC;
    \q[31]_i_5_0\ : in STD_LOGIC;
    \q[31]_i_5_1\ : in STD_LOGIC;
    \addressM[1]\ : in STD_LOGIC;
    ALUControl : in STD_LOGIC_VECTOR ( 0 to 0 );
    \addressM[14]\ : in STD_LOGIC;
    \writeDataM[15]\ : in STD_LOGIC;
    ALUResult : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \addressM[1]_0\ : in STD_LOGIC;
    \addressM[0]\ : in STD_LOGIC;
    d1 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \addressM[1]_1\ : in STD_LOGIC;
    \addressM[28]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    SrcA : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \addressM[3]\ : in STD_LOGIC;
    \addressM[4]\ : in STD_LOGIC;
    \addressM[5]\ : in STD_LOGIC;
    \addressM[6]\ : in STD_LOGIC;
    \addressM[7]\ : in STD_LOGIC;
    ReadData : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \q[31]_i_5_2\ : in STD_LOGIC;
    \q[31]_i_14_0\ : in STD_LOGIC;
    \addressM[9]\ : in STD_LOGIC;
    \addressM[9]_0\ : in STD_LOGIC;
    \addressM[9]_1\ : in STD_LOGIC;
    \q[31]_i_14_1\ : in STD_LOGIC;
    \addressM[10]\ : in STD_LOGIC;
    \addressM[11]\ : in STD_LOGIC;
    \addressM[11]_0\ : in STD_LOGIC;
    \addressM[11]_1\ : in STD_LOGIC;
    \addressM[0]_0\ : in STD_LOGIC;
    \addressM[0]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rf_reg_r2_0_31_12_17_0 : in STD_LOGIC;
    \addressM[13]\ : in STD_LOGIC;
    \addressM[13]_0\ : in STD_LOGIC;
    \addressM[13]_1\ : in STD_LOGIC;
    rf_reg_r2_0_31_12_17_1 : in STD_LOGIC;
    \addressM[15]\ : in STD_LOGIC;
    rf_reg_r2_0_31_12_17_2 : in STD_LOGIC;
    \addressM[17]\ : in STD_LOGIC;
    \addressM[17]_0\ : in STD_LOGIC;
    \addressM[18]\ : in STD_LOGIC;
    rf_reg_r2_0_31_18_23_0 : in STD_LOGIC;
    \addressM[19]\ : in STD_LOGIC;
    \q[31]_i_18\ : in STD_LOGIC;
    \addressM[20]\ : in STD_LOGIC;
    \addressM[20]_0\ : in STD_LOGIC;
    \q[31]_i_11_0\ : in STD_LOGIC;
    \q[31]_i_11_1\ : in STD_LOGIC;
    \q[31]_i_11_2\ : in STD_LOGIC;
    \q[31]_i_11_3\ : in STD_LOGIC;
    rf_reg_r2_0_31_24_29_0 : in STD_LOGIC;
    \addressM[28]_0\ : in STD_LOGIC;
    \addressM[28]_1\ : in STD_LOGIC;
    \ALUResult[30]_INST_0_i_3\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \addressM[2]\ : in STD_LOGIC;
    \addressM[3]_0\ : in STD_LOGIC;
    \addressM[4]_0\ : in STD_LOGIC;
    \addressM[5]_0\ : in STD_LOGIC;
    \addressM[6]_0\ : in STD_LOGIC;
    \addressM[7]_0\ : in STD_LOGIC;
    \addressM[8]\ : in STD_LOGIC;
    \result1_carry__2\ : in STD_LOGIC;
    \result1_carry__0\ : in STD_LOGIC;
    \q[31]_i_13_0\ : in STD_LOGIC;
    \q[31]_i_21_0\ : in STD_LOGIC;
    result1_carry_i_6_0 : in STD_LOGIC;
    \result1_carry__1_i_11_0\ : in STD_LOGIC;
    \q[31]_i_21_1\ : in STD_LOGIC;
    \result1_carry__2_0\ : in STD_LOGIC;
    \result1_carry__0_i_3_0\ : in STD_LOGIC;
    \q[31]_i_21_2\ : in STD_LOGIC;
    \ALUResult[31]_INST_0_i_2_0\ : in STD_LOGIC;
    \ALUResult[27]_INST_0_i_3\ : in STD_LOGIC;
    \ALUResult[27]_INST_0_i_3_0\ : in STD_LOGIC;
    \q[31]_i_40_0\ : in STD_LOGIC;
    \q[31]_i_40_1\ : in STD_LOGIC;
    \q[31]_i_40_2\ : in STD_LOGIC;
    \q[31]_i_39\ : in STD_LOGIC;
    \q[31]_i_42\ : in STD_LOGIC;
    \addressM[2]_0\ : in STD_LOGIC;
    \addressM[4]_1\ : in STD_LOGIC;
    \q[31]_i_21_3\ : in STD_LOGIC;
    \ALUResult[5]_INST_0_i_4_0\ : in STD_LOGIC;
    \addressM[4]_2\ : in STD_LOGIC;
    \addressM[4]_3\ : in STD_LOGIC;
    \addressM[4]_4\ : in STD_LOGIC;
    \q[31]_i_34\ : in STD_LOGIC;
    \q[31]_i_24_0\ : in STD_LOGIC;
    \result1_carry__3_i_2_0\ : in STD_LOGIC;
    \result1_carry__2_1\ : in STD_LOGIC;
    immext : in STD_LOGIC_VECTOR ( 0 to 0 );
    \result1_carry__3_i_11_0\ : in STD_LOGIC;
    \addressM[11]_2\ : in STD_LOGIC;
    \addressM[31]\ : in STD_LOGIC;
    \addressM[31]_0\ : in STD_LOGIC;
    result1_carry_i_6_1 : in STD_LOGIC;
    \ALUResult[0]_INST_0_i_3_0\ : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_i_7 : in STD_LOGIC;
    \result1_carry__1\ : in STD_LOGIC;
    result1_carry_i_6_2 : in STD_LOGIC;
    \result1_carry__0_i_3_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile is
  signal \ALUResult[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \^aluresult[19]_inst_0_i_4_0\ : STD_LOGIC;
  signal \^aluresult[19]_inst_0_i_7_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \^aluresult[21]_inst_0_i_6_0\ : STD_LOGIC;
  signal \^aluresult[23]_inst_0_i_6\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \^aluresult[30]_inst_0_i_6\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_15\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \^writedata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \WriteData[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^writedata[3]_inst_0_0\ : STD_LOGIC;
  signal \^writedata[3]_inst_0_1\ : STD_LOGIC;
  signal \^writedata[4]_inst_0_0\ : STD_LOGIC;
  signal \^writedata[4]_inst_0_1\ : STD_LOGIC;
  signal \^clk_0\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^clk_10\ : STD_LOGIC;
  signal \^clk_11\ : STD_LOGIC;
  signal \^clk_12\ : STD_LOGIC;
  signal \^clk_13\ : STD_LOGIC;
  signal \^clk_14\ : STD_LOGIC;
  signal \^clk_15\ : STD_LOGIC;
  signal \^clk_16\ : STD_LOGIC;
  signal \^clk_17\ : STD_LOGIC;
  signal \^clk_18\ : STD_LOGIC;
  signal \^clk_19\ : STD_LOGIC;
  signal \^clk_2\ : STD_LOGIC;
  signal \^clk_20\ : STD_LOGIC;
  signal \^clk_21\ : STD_LOGIC;
  signal \^clk_22\ : STD_LOGIC;
  signal \^clk_23\ : STD_LOGIC;
  signal \^clk_24\ : STD_LOGIC;
  signal \^clk_25\ : STD_LOGIC;
  signal \^clk_26\ : STD_LOGIC;
  signal \^clk_27\ : STD_LOGIC;
  signal \^clk_28\ : STD_LOGIC;
  signal \^clk_29\ : STD_LOGIC;
  signal \^clk_3\ : STD_LOGIC;
  signal \^clk_4\ : STD_LOGIC;
  signal \^clk_5\ : STD_LOGIC;
  signal \^clk_6\ : STD_LOGIC;
  signal \^clk_7\ : STD_LOGIC;
  signal \^clk_8\ : STD_LOGIC;
  signal \^clk_9\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \q[11]_i_2_n_0\ : STD_LOGIC;
  signal \q[13]_i_2_n_0\ : STD_LOGIC;
  signal \q[15]_i_2_n_0\ : STD_LOGIC;
  signal \q[17]_i_2_n_0\ : STD_LOGIC;
  signal \q[19]_i_2_n_0\ : STD_LOGIC;
  signal \q[1]_i_2_n_0\ : STD_LOGIC;
  signal \q[28]_i_2_n_0\ : STD_LOGIC;
  signal \q[2]_i_2_n_0\ : STD_LOGIC;
  signal \q[31]_i_10_n_0\ : STD_LOGIC;
  signal \q[31]_i_11_n_0\ : STD_LOGIC;
  signal \q[31]_i_13_n_0\ : STD_LOGIC;
  signal \q[31]_i_14_n_0\ : STD_LOGIC;
  signal \q[31]_i_16_n_0\ : STD_LOGIC;
  signal \q[31]_i_17_n_0\ : STD_LOGIC;
  signal \q[31]_i_20_n_0\ : STD_LOGIC;
  signal \q[31]_i_22_n_0\ : STD_LOGIC;
  signal \q[31]_i_23_n_0\ : STD_LOGIC;
  signal \q[31]_i_24_n_0\ : STD_LOGIC;
  signal \q[31]_i_25_n_0\ : STD_LOGIC;
  signal \q[31]_i_31_n_0\ : STD_LOGIC;
  signal \q[31]_i_33_n_0\ : STD_LOGIC;
  signal \q[31]_i_35_n_0\ : STD_LOGIC;
  signal \q[31]_i_37_n_0\ : STD_LOGIC;
  signal \q[31]_i_46_n_0\ : STD_LOGIC;
  signal \q[31]_i_48_n_0\ : STD_LOGIC;
  signal \q[31]_i_5_n_0\ : STD_LOGIC;
  signal \^q[31]_i_6\ : STD_LOGIC;
  signal \q[31]_i_61_n_0\ : STD_LOGIC;
  signal \q[31]_i_7_n_0\ : STD_LOGIC;
  signal \q[31]_i_8_n_0\ : STD_LOGIC;
  signal \q[31]_i_9_n_0\ : STD_LOGIC;
  signal \q[3]_i_2_n_0\ : STD_LOGIC;
  signal \q[4]_i_2_n_0\ : STD_LOGIC;
  signal \q[5]_i_2_n_0\ : STD_LOGIC;
  signal \q[6]_i_2_n_0\ : STD_LOGIC;
  signal \q[7]_i_2_n_0\ : STD_LOGIC;
  signal \q[8]_i_2_n_0\ : STD_LOGIC;
  signal \q[9]_i_2_n_0\ : STD_LOGIC;
  signal \^q_reg[0]\ : STD_LOGIC;
  signal \^q_reg[19]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^q_reg[1]\ : STD_LOGIC;
  signal \^q_reg[23]\ : STD_LOGIC;
  signal \^q_reg[28]\ : STD_LOGIC;
  signal \^q_reg[2]\ : STD_LOGIC;
  signal \^q_reg[30]\ : STD_LOGIC;
  signal \^q_reg[31]\ : STD_LOGIC;
  signal \^q_reg[31]_0\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \^q_reg[31]_4\ : STD_LOGIC;
  signal \^q_reg[3]\ : STD_LOGIC;
  signal \^q_reg[4]\ : STD_LOGIC;
  signal \^q_reg[5]\ : STD_LOGIC;
  signal \^q_reg[6]\ : STD_LOGIC;
  signal \^q_reg[6]_0\ : STD_LOGIC;
  signal \^q_reg[6]_2\ : STD_LOGIC;
  signal \^q_reg[7]\ : STD_LOGIC;
  signal \^q_reg[7]_0\ : STD_LOGIC;
  signal \^q_reg[7]_1\ : STD_LOGIC;
  signal rd10 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal rd20 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^readdatam[15]\ : STD_LOGIC;
  signal \result1_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \result1_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \result1_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \result1_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \result1_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \result1_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \result1_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \result1_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \result1_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \result1_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \result1_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \result1_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \result1_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \result1_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \result1_carry__1_i_17_n_0\ : STD_LOGIC;
  signal \result1_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \result1_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \result1_carry__2_i_13_n_0\ : STD_LOGIC;
  signal \result1_carry__2_i_14_n_0\ : STD_LOGIC;
  signal \result1_carry__2_i_16_n_0\ : STD_LOGIC;
  signal \result1_carry__2_i_18_n_0\ : STD_LOGIC;
  signal \result1_carry__2_i_19_n_0\ : STD_LOGIC;
  signal \result1_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \result1_carry__3_i_10_n_0\ : STD_LOGIC;
  signal \result1_carry__3_i_11_n_0\ : STD_LOGIC;
  signal \result1_carry__3_i_12_n_0\ : STD_LOGIC;
  signal \result1_carry__3_i_13_n_0\ : STD_LOGIC;
  signal \result1_carry__3_i_14_n_0\ : STD_LOGIC;
  signal \result1_carry__3_i_15_n_0\ : STD_LOGIC;
  signal \result1_carry__3_i_17_n_0\ : STD_LOGIC;
  signal \result1_carry__3_i_18_n_0\ : STD_LOGIC;
  signal \result1_carry__3_i_19_n_0\ : STD_LOGIC;
  signal \result1_carry__3_i_20_n_0\ : STD_LOGIC;
  signal \result1_carry__3_i_21_n_0\ : STD_LOGIC;
  signal \result1_carry__3_i_9_n_0\ : STD_LOGIC;
  signal \result1_carry__4_i_10_n_0\ : STD_LOGIC;
  signal \result1_carry__4_i_11_n_0\ : STD_LOGIC;
  signal \result1_carry__4_i_12_n_0\ : STD_LOGIC;
  signal \result1_carry__4_i_13_n_0\ : STD_LOGIC;
  signal \result1_carry__4_i_14_n_0\ : STD_LOGIC;
  signal \result1_carry__4_i_15_n_0\ : STD_LOGIC;
  signal \result1_carry__4_i_16_n_0\ : STD_LOGIC;
  signal \result1_carry__4_i_17_n_0\ : STD_LOGIC;
  signal \result1_carry__4_i_9_n_0\ : STD_LOGIC;
  signal \result1_carry__5_i_10_n_0\ : STD_LOGIC;
  signal \result1_carry__5_i_11_n_0\ : STD_LOGIC;
  signal \result1_carry__5_i_12_n_0\ : STD_LOGIC;
  signal \result1_carry__5_i_13_n_0\ : STD_LOGIC;
  signal \result1_carry__5_i_9_n_0\ : STD_LOGIC;
  signal \result1_carry__6_i_6_n_0\ : STD_LOGIC;
  signal \result1_carry__6_i_7_n_0\ : STD_LOGIC;
  signal \result1_carry__6_i_8_n_0\ : STD_LOGIC;
  signal \result1_carry__6_i_9_n_0\ : STD_LOGIC;
  signal result1_carry_i_10_n_0 : STD_LOGIC;
  signal result1_carry_i_11_n_0 : STD_LOGIC;
  signal result1_carry_i_12_n_0 : STD_LOGIC;
  signal result1_carry_i_13_n_0 : STD_LOGIC;
  signal result1_carry_i_17_n_0 : STD_LOGIC;
  signal result1_carry_i_19_n_0 : STD_LOGIC;
  signal result1_carry_i_20_n_0 : STD_LOGIC;
  signal result1_carry_i_21_n_0 : STD_LOGIC;
  signal result1_carry_i_22_n_0 : STD_LOGIC;
  signal result2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^rf_reg_r1_0_31_0_5_i_8_0\ : STD_LOGIC;
  signal \^rf_reg_r1_0_31_0_5_i_9_0\ : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_11_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_15_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_7_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_7_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_17_n_0 : STD_LOGIC;
  signal \^rf_reg_r1_0_31_6_11_i_13_0\ : STD_LOGIC;
  signal \w_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \w_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \w_carry__0_i_9_n_0\ : STD_LOGIC;
  signal w_carry_i_10_n_0 : STD_LOGIC;
  signal w_carry_i_11_n_0 : STD_LOGIC;
  signal wd3 : STD_LOGIC_VECTOR ( 28 downto 13 );
  signal we3 : STD_LOGIC;
  signal NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult[0]_INST_0_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALUResult[10]_INST_0_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_14\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_7\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALUResult[7]_INST_0_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ALUResult[8]_INST_0_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \WriteData[31]_INST_0_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q[1]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q[31]_i_48\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \result1_carry__0_i_10\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \result1_carry__0_i_11\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \result1_carry__0_i_12\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \result1_carry__1_i_11\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \result1_carry__1_i_12\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \result1_carry__1_i_13\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \result1_carry__1_i_14\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \result1_carry__1_i_16\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \result1_carry__2_i_10\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \result1_carry__2_i_13\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \result1_carry__2_i_14\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \result1_carry__3_i_10\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \result1_carry__3_i_11\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \result1_carry__3_i_14\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \result1_carry__3_i_15\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \result1_carry__3_i_9\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \result1_carry__4_i_14\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \result1_carry__4_i_15\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \result1_carry__4_i_16\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \result1_carry__5_i_13\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \result1_carry__6_i_9\ : label is "soft_lutpair13";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_0_5 : label is "dp/rf/rf_reg_r1_0_31_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of rf_reg_r1_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of rf_reg_r1_0_31_0_5 : label is 5;
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_0_5_i_13 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_0_5_i_9 : label is "soft_lutpair27";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_12_17 : label is "dp/rf/rf_reg_r1_0_31_12_17";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_12_17 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_12_17 : label is 12;
  attribute ram_slice_end of rf_reg_r1_0_31_12_17 : label is 17;
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_19 : label is "soft_lutpair15";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_18_23 : label is "dp/rf/rf_reg_r1_0_31_18_23";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_18_23 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_18_23 : label is 18;
  attribute ram_slice_end of rf_reg_r1_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_24_29 : label is "dp/rf/rf_reg_r1_0_31_24_29";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_24_29 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_24_29 : label is 24;
  attribute ram_slice_end of rf_reg_r1_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_30_31 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_30_31 : label is "dp/rf/rf_reg_r1_0_31_30_31";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_30_31 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_30_31 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_30_31 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_30_31 : label is 30;
  attribute ram_slice_end of rf_reg_r1_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \rf_reg_r1_0_31_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \rf_reg_r1_0_31_30_31__0\ : label is 1024;
  attribute RTL_RAM_NAME of \rf_reg_r1_0_31_30_31__0\ : label is "dp/rf/rf_reg_r1_0_31_30_31";
  attribute RTL_RAM_TYPE of \rf_reg_r1_0_31_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \rf_reg_r1_0_31_30_31__0\ : label is 0;
  attribute ram_addr_end of \rf_reg_r1_0_31_30_31__0\ : label is 31;
  attribute ram_offset of \rf_reg_r1_0_31_30_31__0\ : label is 0;
  attribute ram_slice_begin of \rf_reg_r1_0_31_30_31__0\ : label is 30;
  attribute ram_slice_end of \rf_reg_r1_0_31_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_6_11 : label is "dp/rf/rf_reg_r1_0_31_6_11";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_6_11 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_6_11 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_6_11 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_6_11 : label is 6;
  attribute ram_slice_end of rf_reg_r1_0_31_6_11 : label is 11;
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_6_11_i_11 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_6_11_i_13 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_6_11_i_7 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_6_11_i_8 : label is "soft_lutpair26";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_0_5 : label is "dp/rf/rf_reg_r2_0_31_0_5";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_0_5 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_end of rf_reg_r2_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_12_17 : label is "dp/rf/rf_reg_r2_0_31_12_17";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_12_17 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_12_17 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_12_17 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_12_17 : label is 12;
  attribute ram_slice_end of rf_reg_r2_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_18_23 : label is "dp/rf/rf_reg_r2_0_31_18_23";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_18_23 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_18_23 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_18_23 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_18_23 : label is 18;
  attribute ram_slice_end of rf_reg_r2_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_24_29 : label is "dp/rf/rf_reg_r2_0_31_24_29";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_24_29 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_24_29 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_24_29 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_24_29 : label is 24;
  attribute ram_slice_end of rf_reg_r2_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_30_31 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_30_31 : label is "dp/rf/rf_reg_r2_0_31_30_31";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_30_31 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_30_31 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_30_31 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_30_31 : label is 30;
  attribute ram_slice_end of rf_reg_r2_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \rf_reg_r2_0_31_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \rf_reg_r2_0_31_30_31__0\ : label is 1024;
  attribute RTL_RAM_NAME of \rf_reg_r2_0_31_30_31__0\ : label is "dp/rf/rf_reg_r2_0_31_30_31";
  attribute RTL_RAM_TYPE of \rf_reg_r2_0_31_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \rf_reg_r2_0_31_30_31__0\ : label is 0;
  attribute ram_addr_end of \rf_reg_r2_0_31_30_31__0\ : label is 31;
  attribute ram_offset of \rf_reg_r2_0_31_30_31__0\ : label is 0;
  attribute ram_slice_begin of \rf_reg_r2_0_31_30_31__0\ : label is 30;
  attribute ram_slice_end of \rf_reg_r2_0_31_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_6_11 : label is "dp/rf/rf_reg_r2_0_31_6_11";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_6_11 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_6_11 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_6_11 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_6_11 : label is 6;
  attribute ram_slice_end of rf_reg_r2_0_31_6_11 : label is 11;
begin
  \ALUResult[19]_INST_0_i_4_0\ <= \^aluresult[19]_inst_0_i_4_0\;
  \ALUResult[19]_INST_0_i_7_0\ <= \^aluresult[19]_inst_0_i_7_0\;
  \ALUResult[21]_INST_0_i_6_0\ <= \^aluresult[21]_inst_0_i_6_0\;
  \ALUResult[23]_INST_0_i_6\ <= \^aluresult[23]_inst_0_i_6\;
  \ALUResult[30]_INST_0_i_6\ <= \^aluresult[30]_inst_0_i_6\;
  \ALUResult[31]_INST_0_i_15\ <= \^aluresult[31]_inst_0_i_15\;
  WriteData(31 downto 0) <= \^writedata\(31 downto 0);
  \WriteData[3]_INST_0_0\ <= \^writedata[3]_inst_0_0\;
  \WriteData[3]_INST_0_1\ <= \^writedata[3]_inst_0_1\;
  \WriteData[4]_INST_0_0\ <= \^writedata[4]_inst_0_0\;
  \WriteData[4]_INST_0_1\ <= \^writedata[4]_inst_0_1\;
  clk_0(30 downto 0) <= \^clk_0\(30 downto 0);
  clk_10 <= \^clk_10\;
  clk_11 <= \^clk_11\;
  clk_12 <= \^clk_12\;
  clk_13 <= \^clk_13\;
  clk_14 <= \^clk_14\;
  clk_15 <= \^clk_15\;
  clk_16 <= \^clk_16\;
  clk_17 <= \^clk_17\;
  clk_18 <= \^clk_18\;
  clk_19 <= \^clk_19\;
  clk_2 <= \^clk_2\;
  clk_20 <= \^clk_20\;
  clk_21 <= \^clk_21\;
  clk_22 <= \^clk_22\;
  clk_23 <= \^clk_23\;
  clk_24 <= \^clk_24\;
  clk_25 <= \^clk_25\;
  clk_26 <= \^clk_26\;
  clk_27 <= \^clk_27\;
  clk_28 <= \^clk_28\;
  clk_29 <= \^clk_29\;
  clk_3 <= \^clk_3\;
  clk_4 <= \^clk_4\;
  clk_5 <= \^clk_5\;
  clk_6 <= \^clk_6\;
  clk_7 <= \^clk_7\;
  clk_8 <= \^clk_8\;
  clk_9 <= \^clk_9\;
  p_0_in(2 downto 0) <= \^p_0_in\(2 downto 0);
  \q[31]_i_6\ <= \^q[31]_i_6\;
  \q_reg[0]\ <= \^q_reg[0]\;
  \q_reg[19]\(6 downto 0) <= \^q_reg[19]\(6 downto 0);
  \q_reg[1]\ <= \^q_reg[1]\;
  \q_reg[23]\ <= \^q_reg[23]\;
  \q_reg[28]\ <= \^q_reg[28]\;
  \q_reg[2]\ <= \^q_reg[2]\;
  \q_reg[30]\ <= \^q_reg[30]\;
  \q_reg[31]\ <= \^q_reg[31]\;
  \q_reg[31]_0\(25 downto 0) <= \^q_reg[31]_0\(25 downto 0);
  \q_reg[31]_4\ <= \^q_reg[31]_4\;
  \q_reg[3]\ <= \^q_reg[3]\;
  \q_reg[4]\ <= \^q_reg[4]\;
  \q_reg[5]\ <= \^q_reg[5]\;
  \q_reg[6]\ <= \^q_reg[6]\;
  \q_reg[6]_0\ <= \^q_reg[6]_0\;
  \q_reg[6]_2\ <= \^q_reg[6]_2\;
  \q_reg[7]\ <= \^q_reg[7]\;
  \q_reg[7]_0\ <= \^q_reg[7]_0\;
  \q_reg[7]_1\ <= \^q_reg[7]_1\;
  \readDataM[15]\ <= \^readdatam[15]\;
  rf_reg_r1_0_31_0_5_i_8_0 <= \^rf_reg_r1_0_31_0_5_i_8_0\;
  rf_reg_r1_0_31_0_5_i_9_0 <= \^rf_reg_r1_0_31_0_5_i_9_0\;
  rf_reg_r1_0_31_6_11_i_13_0 <= \^rf_reg_r1_0_31_6_11_i_13_0\;
\ALUResult[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE8E8888888E88"
    )
        port map (
      I0 => \addressM[1]_0\,
      I1 => \^clk_7\,
      I2 => \addressM[0]_0\,
      I3 => \^clk_0\(0),
      I4 => \addressM[0]_1\,
      I5 => Q(0),
      O => \^q_reg[0]\
    );
\ALUResult[0]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0BBBFBB4F444044"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(0),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Q(0),
      I5 => \^clk_7\,
      O => \ALUResult[0]_INST_0_i_10_n_0\
    );
\ALUResult[0]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DFFFFF00DF0000"
    )
        port map (
      I0 => \^writedata[4]_inst_0_0\,
      I1 => \^writedata[3]_inst_0_0\,
      I2 => SrcA(12),
      I3 => \ALUResult[0]_INST_0_i_18_n_0\,
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \ALUResult[0]_INST_0_i_19_n_0\,
      O => \ALUResult[0]_INST_0_i_12_n_0\
    );
\ALUResult[0]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F203F3F2F203030"
    )
        port map (
      I0 => \q[31]_i_21_2\,
      I1 => \ALUResult[0]_INST_0_i_22_n_0\,
      I2 => \^aluresult[30]_inst_0_i_6\,
      I3 => \q[31]_i_21_1\,
      I4 => \^writedata[3]_inst_0_0\,
      I5 => \ALUResult[0]_INST_0_i_24_n_0\,
      O => \ALUResult[0]_INST_0_i_15_n_0\
    );
\ALUResult[0]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4700773347004700"
    )
        port map (
      I0 => \addressM[7]\,
      I1 => \^writedata[3]_inst_0_1\,
      I2 => \ALUResult[15]_INST_0_i_2_n_0\,
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \^q_reg[31]\,
      I5 => \^writedata[4]_inst_0_0\,
      O => \ALUResult[0]_INST_0_i_18_n_0\
    );
\ALUResult[0]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA03030AFA03F3F"
    )
        port map (
      I0 => \addressM[11]\,
      I1 => SrcA(16),
      I2 => \^writedata[3]_inst_0_0\,
      I3 => \addressM[3]\,
      I4 => \^writedata[4]_inst_0_1\,
      I5 => SrcA(8),
      O => \ALUResult[0]_INST_0_i_19_n_0\
    );
\ALUResult[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \^clk_2\,
      I1 => \ALUResult[0]_INST_0_i_7_n_0\,
      I2 => \^aluresult[30]_inst_0_i_6\,
      I3 => \^clk_7\,
      I4 => \addressM[9]_1\,
      O => \q_reg[0]_1\
    );
\ALUResult[0]_INST_0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F20022"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => \addressM[6]\,
      I2 => \^writedata[4]_inst_0_0\,
      I3 => \^writedata[3]_inst_0_0\,
      I4 => SrcA(11),
      O => \ALUResult[0]_INST_0_i_22_n_0\
    );
\ALUResult[0]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFB00000BFBFFFF"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(2),
      I2 => \addressM[0]_1\,
      I3 => Q(2),
      I4 => \^writedata[4]_inst_0_1\,
      I5 => SrcA(7),
      O => \ALUResult[0]_INST_0_i_24_n_0\
    );
\ALUResult[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE00000FFFFFFFF"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_8_n_0\,
      I1 => \ALUResult[0]_INST_0_i_9_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[0]_INST_0_i_10_n_0\,
      I4 => \addressM[0]\,
      I5 => \addressM[1]_0\,
      O => \q_reg[0]_0\
    );
\ALUResult[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000088B80000"
    )
        port map (
      I0 => Q(0),
      I1 => \addressM[0]_1\,
      I2 => \^clk_0\(0),
      I3 => \addressM[0]_0\,
      I4 => \^writedata[4]_inst_0_1\,
      I5 => \^writedata[3]_inst_0_0\,
      O => \ALUResult[0]_INST_0_i_7_n_0\
    );
\ALUResult[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202A2A2A202A2"
    )
        port map (
      I0 => \^clk_7\,
      I1 => \ALUResult[0]_INST_0_i_12_n_0\,
      I2 => \^clk_2\,
      I3 => \q[31]_i_21_0\,
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => result1_carry_i_6_0,
      O => \ALUResult[0]_INST_0_i_8_n_0\
    );
\ALUResult[0]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5101010151015151"
    )
        port map (
      I0 => \^clk_7\,
      I1 => \ALUResult[0]_INST_0_i_15_n_0\,
      I2 => \^clk_2\,
      I3 => result1_carry_i_6_1,
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \ALUResult[0]_INST_0_i_3_0\,
      O => \ALUResult[0]_INST_0_i_9_n_0\
    );
\ALUResult[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A008A008AFF8A00"
    )
        port map (
      I0 => Instr(28),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => \addressM[14]\,
      I4 => rd20(10),
      I5 => \writeDataM[15]\,
      O => \^clk_23\
    );
\ALUResult[10]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_4_n_0\,
      I1 => \^clk_7\,
      I2 => \addressM[9]_1\,
      I3 => \ALUResult[11]_INST_0_i_5_n_0\,
      I4 => \addressM[10]\,
      O => \ALUResult[10]_INST_0_i_5\
    );
\ALUResult[10]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[31]_i_24_0\,
      I1 => \^clk_2\,
      I2 => \ALUResult[10]_INST_0_i_6_n_0\,
      O => \ALUResult[10]_INST_0_i_4_n_0\
    );
\ALUResult[10]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004700"
    )
        port map (
      I0 => \addressM[3]\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \addressM[7]\,
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \^writedata[3]_inst_0_0\,
      O => \ALUResult[10]_INST_0_i_6_n_0\
    );
\ALUResult[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB02F20BFB02020"
    )
        port map (
      I0 => \^clk_9\,
      I1 => \addressM[11]\,
      I2 => \addressM[1]\,
      I3 => \ALUResult[11]_INST_0_i_3_n_0\,
      I4 => \addressM[1]_0\,
      I5 => \addressM[28]\(9),
      O => \^q_reg[19]\(2)
    );
\ALUResult[11]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \addressM[11]_2\,
      I1 => \addressM[14]\,
      I2 => rd20(11),
      I3 => \writeDataM[15]\,
      O => \^clk_9\
    );
\ALUResult[11]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_5_n_0\,
      I1 => \^clk_7\,
      I2 => \addressM[9]_1\,
      I3 => \addressM[11]_0\,
      I4 => \addressM[11]_1\,
      O => \ALUResult[11]_INST_0_i_3_n_0\
    );
\ALUResult[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_6_n_0\,
      I1 => \ALUResult[17]_INST_0_i_6_n_0\,
      I2 => \^clk_2\,
      I3 => \ALUResult[11]_INST_0_i_7_n_0\,
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \ALUResult[15]_INST_0_i_6_n_0\,
      O => \ALUResult[11]_INST_0_i_5_n_0\
    );
\ALUResult[11]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000088B80000"
    )
        port map (
      I0 => Q(4),
      I1 => \addressM[0]_1\,
      I2 => \^clk_0\(4),
      I3 => \addressM[0]_0\,
      I4 => \^writedata[4]_inst_0_1\,
      I5 => \^writedata[3]_inst_0_0\,
      O => \ALUResult[11]_INST_0_i_7_n_0\
    );
\ALUResult[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF47FF470047FF"
    )
        port map (
      I0 => Instr(10),
      I1 => \^aluresult[19]_inst_0_i_4_0\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(12),
      I5 => \writeDataM[15]\,
      O => \^clk_10\
    );
\ALUResult[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB02F20BFB02020"
    )
        port map (
      I0 => \^clk_11\,
      I1 => \addressM[13]\,
      I2 => \addressM[1]\,
      I3 => \ALUResult[13]_INST_0_i_3_n_0\,
      I4 => \addressM[1]_0\,
      I5 => \addressM[28]\(10),
      O => \^q_reg[19]\(3)
    );
\ALUResult[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2FFE200"
    )
        port map (
      I0 => Instr(29),
      I1 => \^aluresult[19]_inst_0_i_4_0\,
      I2 => Instr(11),
      I3 => \addressM[14]\,
      I4 => rd20(13),
      I5 => \writeDataM[15]\,
      O => \^clk_11\
    );
\ALUResult[13]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \^q_reg[6]_0\,
      I1 => \^clk_7\,
      I2 => \addressM[9]_1\,
      I3 => \addressM[13]_0\,
      I4 => \addressM[13]_1\,
      O => \ALUResult[13]_INST_0_i_3_n_0\
    );
\ALUResult[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_6_n_0\,
      I1 => \ALUResult[19]_INST_0_i_7_n_0\,
      I2 => \^clk_2\,
      I3 => \ALUResult[13]_INST_0_i_6_n_0\,
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \ALUResult[17]_INST_0_i_6_n_0\,
      O => \^q_reg[6]_0\
    );
\ALUResult[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000088B80000"
    )
        port map (
      I0 => Q(6),
      I1 => \addressM[0]_1\,
      I2 => \^clk_0\(6),
      I3 => \addressM[0]_0\,
      I4 => \^writedata[4]_inst_0_1\,
      I5 => \^writedata[3]_inst_0_0\,
      O => \ALUResult[13]_INST_0_i_6_n_0\
    );
\ALUResult[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF47FF470047FF"
    )
        port map (
      I0 => Instr(12),
      I1 => \^aluresult[19]_inst_0_i_4_0\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(14),
      I5 => \writeDataM[15]\,
      O => \^clk_21\
    );
\ALUResult[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB02F20BFB02020"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_1_n_0\,
      I1 => \ALUResult[15]_INST_0_i_2_n_0\,
      I2 => \addressM[1]\,
      I3 => \ALUResult[15]_INST_0_i_3_n_0\,
      I4 => \addressM[1]_0\,
      I5 => \addressM[28]\(11),
      O => \^q_reg[19]\(4)
    );
\ALUResult[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800B8FFB800"
    )
        port map (
      I0 => Instr(13),
      I1 => \^aluresult[19]_inst_0_i_4_0\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(15),
      I5 => \writeDataM[15]\,
      O => \ALUResult[15]_INST_0_i_1_n_0\
    );
\ALUResult[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB0BBBFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(15),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Q(15),
      O => \ALUResult[15]_INST_0_i_2_n_0\
    );
\ALUResult[15]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \^aluresult[19]_inst_0_i_7_0\,
      I1 => \^clk_7\,
      I2 => \addressM[9]_1\,
      I3 => \addressM[15]\,
      I4 => \ALUResult[15]_INST_0_i_5_n_0\,
      O => \ALUResult[15]_INST_0_i_3_n_0\
    );
\ALUResult[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_6_n_0\,
      I1 => \^q_reg[6]_2\,
      I2 => \^clk_2\,
      I3 => \ALUResult[15]_INST_0_i_6_n_0\,
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \ALUResult[19]_INST_0_i_7_n_0\,
      O => \^aluresult[19]_inst_0_i_7_0\
    );
\ALUResult[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9000900FFFFFFFF"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_2_n_0\,
      I1 => \ALUResult[15]_INST_0_i_1_n_0\,
      I2 => ALUControl(0),
      I3 => \addressM[0]\,
      I4 => \ALUResult[30]_INST_0_i_3\(1),
      I5 => \addressM[1]_0\,
      O => \ALUResult[15]_INST_0_i_5_n_0\
    );
\ALUResult[15]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => \ALUResult[5]_INST_0_i_4_0\,
      I2 => \^writedata[3]_inst_0_0\,
      I3 => SrcA(1),
      I4 => \^writedata[4]_inst_0_0\,
      O => \ALUResult[15]_INST_0_i_6_n_0\
    );
\ALUResult[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800B8FFB800"
    )
        port map (
      I0 => Instr(14),
      I1 => \^aluresult[19]_inst_0_i_4_0\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(16),
      I5 => \writeDataM[15]\,
      O => \^clk_12\
    );
\ALUResult[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF8FEF80E080E080"
    )
        port map (
      I0 => \^clk_13\,
      I1 => SrcA(6),
      I2 => \addressM[1]\,
      I3 => \addressM[1]_0\,
      I4 => \addressM[28]\(12),
      I5 => \ALUResult[17]_INST_0_i_3_n_0\,
      O => \^q_reg[19]\(5)
    );
\ALUResult[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800B8FFB800"
    )
        port map (
      I0 => Instr(15),
      I1 => \^aluresult[19]_inst_0_i_4_0\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(17),
      I5 => \writeDataM[15]\,
      O => \^clk_13\
    );
\ALUResult[17]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \^aluresult[21]_inst_0_i_6_0\,
      I1 => \^clk_7\,
      I2 => \addressM[9]_1\,
      I3 => \addressM[17]\,
      I4 => \addressM[17]_0\,
      O => \ALUResult[17]_INST_0_i_3_n_0\
    );
\ALUResult[17]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_7_n_0\,
      I1 => \q[31]_i_42\,
      I2 => \^clk_2\,
      I3 => \ALUResult[17]_INST_0_i_6_n_0\,
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \^q_reg[6]_2\,
      O => \^aluresult[21]_inst_0_i_6_0\
    );
\ALUResult[17]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808F80"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => SrcA(0),
      I2 => \^writedata[3]_inst_0_0\,
      I3 => SrcA(2),
      I4 => \^writedata[4]_inst_0_0\,
      O => \ALUResult[17]_INST_0_i_6_n_0\
    );
\ALUResult[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \addressM[17]\,
      I1 => \^clk_7\,
      I2 => \addressM[9]_1\,
      I3 => \^aluresult[23]_inst_0_i_6\,
      I4 => \addressM[18]\,
      O => \ALUResult[18]_INST_0_i_5\
    );
\ALUResult[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800B8FFB800"
    )
        port map (
      I0 => Instr(16),
      I1 => \^aluresult[19]_inst_0_i_4_0\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(18),
      I5 => \writeDataM[15]\,
      O => \^clk_24\
    );
\ALUResult[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF8FEF80E080E080"
    )
        port map (
      I0 => \^clk_14\,
      I1 => SrcA(8),
      I2 => \addressM[1]\,
      I3 => \addressM[1]_0\,
      I4 => \addressM[28]\(13),
      I5 => \ALUResult[19]_INST_0_i_3_n_0\,
      O => \^q_reg[19]\(6)
    );
\ALUResult[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800B8FFB800"
    )
        port map (
      I0 => Instr(17),
      I1 => \^aluresult[19]_inst_0_i_4_0\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(19),
      I5 => \writeDataM[15]\,
      O => \^clk_14\
    );
\ALUResult[19]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \^aluresult[23]_inst_0_i_6\,
      I1 => \^clk_7\,
      I2 => \addressM[9]_1\,
      I3 => \ALUResult[20]_INST_0_i_4_n_0\,
      I4 => \addressM[19]\,
      O => \ALUResult[19]_INST_0_i_3_n_0\
    );
\ALUResult[19]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(4),
      I2 => Instr(0),
      O => \^aluresult[19]_inst_0_i_4_0\
    );
\ALUResult[19]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[6]_2\,
      I1 => \q[31]_i_39\,
      I2 => \^clk_2\,
      I3 => \ALUResult[19]_INST_0_i_7_n_0\,
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \q[31]_i_42\,
      O => \^aluresult[23]_inst_0_i_6\
    );
\ALUResult[19]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => \addressM[4]\,
      I2 => \^writedata[3]_inst_0_0\,
      I3 => SrcA(3),
      I4 => \^writedata[4]_inst_0_0\,
      O => \ALUResult[19]_INST_0_i_7_n_0\
    );
\ALUResult[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F701F1F7F701010"
    )
        port map (
      I0 => \addressM[1]_1\,
      I1 => \^clk_2\,
      I2 => \addressM[1]\,
      I3 => \ALUResult[1]_INST_0_i_3_n_0\,
      I4 => \addressM[1]_0\,
      I5 => \addressM[28]\(0),
      O => \^q_reg[1]\
    );
\ALUResult[1]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7747"
    )
        port map (
      I0 => immext(0),
      I1 => \addressM[14]\,
      I2 => rd20(1),
      I3 => \writeDataM[15]\,
      O => \^clk_2\
    );
\ALUResult[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF3C00AA003C00AA"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_5_n_0\,
      I1 => \addressM[1]_1\,
      I2 => \^clk_2\,
      I3 => ALUControl(0),
      I4 => \addressM[0]\,
      I5 => \ALUResult[30]_INST_0_i_3\(0),
      O => \ALUResult[1]_INST_0_i_3_n_0\
    );
\ALUResult[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000B0800000000"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_6_n_0\,
      I1 => \^clk_7\,
      I2 => \^aluresult[30]_inst_0_i_6\,
      I3 => \ALUResult[1]_INST_0_i_7_n_0\,
      I4 => \^writedata[3]_inst_0_0\,
      I5 => \^clk_2\,
      O => \ALUResult[1]_INST_0_i_5_n_0\
    );
\ALUResult[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA202020002020"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => \addressM[0]_0\,
      I2 => \^clk_0\(0),
      I3 => Instr(3),
      I4 => Instr(0),
      I5 => Q(0),
      O => \ALUResult[1]_INST_0_i_6_n_0\
    );
\ALUResult[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA202020002020"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => \addressM[0]_0\,
      I2 => \^clk_0\(1),
      I3 => Instr(3),
      I4 => Instr(0),
      I5 => Q(1),
      O => \ALUResult[1]_INST_0_i_7_n_0\
    );
\ALUResult[20]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_4_n_0\,
      I1 => \^clk_7\,
      I2 => \addressM[9]_1\,
      I3 => \addressM[20]\,
      I4 => \addressM[20]_0\,
      O => \ALUResult[20]_INST_0_i_5\
    );
\ALUResult[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF47FF470047FF"
    )
        port map (
      I0 => Instr(18),
      I1 => \addressM[4]_1\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(20),
      I5 => \writeDataM[15]\,
      O => \^clk_25\
    );
\ALUResult[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[7]_1\,
      I1 => \q[31]_i_40_0\,
      I2 => \^clk_2\,
      I3 => \q[31]_i_40_1\,
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \q[31]_i_40_2\,
      O => \ALUResult[20]_INST_0_i_4_n_0\
    );
\ALUResult[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF47FF470047FF"
    )
        port map (
      I0 => Instr(19),
      I1 => \addressM[4]_1\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(21),
      I5 => \writeDataM[15]\,
      O => \^clk_26\
    );
\ALUResult[21]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => \addressM[6]\,
      I2 => \^writedata[3]_inst_0_0\,
      I3 => SrcA(4),
      I4 => \^writedata[4]_inst_0_0\,
      O => \^q_reg[6]_2\
    );
\ALUResult[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF470047FF47FF"
    )
        port map (
      I0 => Instr(20),
      I1 => \addressM[4]_1\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => \writeDataM[15]\,
      I5 => rd20(22),
      O => \^clk_27\
    );
\ALUResult[22]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4070"
    )
        port map (
      I0 => \addressM[7]\,
      I1 => \^writedata[3]_inst_0_0\,
      I2 => \^writedata[4]_inst_0_1\,
      I3 => \ALUResult[15]_INST_0_i_2_n_0\,
      O => \^q_reg[7]_1\
    );
\ALUResult[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF47FF470047FF"
    )
        port map (
      I0 => Instr(21),
      I1 => \addressM[4]_1\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(23),
      I5 => \writeDataM[15]\,
      O => \^clk_28\
    );
\ALUResult[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF47FF470047FF"
    )
        port map (
      I0 => Instr(22),
      I1 => \addressM[4]_1\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(24),
      I5 => \writeDataM[15]\,
      O => \^clk_19\
    );
\ALUResult[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF47FF470047FF"
    )
        port map (
      I0 => Instr(23),
      I1 => \addressM[4]_1\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(25),
      I5 => \writeDataM[15]\,
      O => \^clk_18\
    );
\ALUResult[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF47FF470047FF"
    )
        port map (
      I0 => Instr(24),
      I1 => \addressM[4]_1\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(26),
      I5 => \writeDataM[15]\,
      O => \^clk_17\
    );
\ALUResult[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF47FF470047FF"
    )
        port map (
      I0 => Instr(25),
      I1 => \addressM[4]_1\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(27),
      I5 => \writeDataM[15]\,
      O => \^clk_16\
    );
\ALUResult[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FBF20B020B020"
    )
        port map (
      I0 => SrcA(17),
      I1 => \^clk_15\,
      I2 => \addressM[1]\,
      I3 => \addressM[1]_0\,
      I4 => \addressM[28]\(14),
      I5 => \ALUResult[28]_INST_0_i_3_n_0\,
      O => \^q_reg[28]\
    );
\ALUResult[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF47FF470047FF"
    )
        port map (
      I0 => Instr(26),
      I1 => \addressM[4]_1\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(28),
      I5 => \writeDataM[15]\,
      O => \^clk_15\
    );
\ALUResult[28]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_15\,
      I1 => \^clk_7\,
      I2 => \addressM[9]_1\,
      I3 => \addressM[28]_0\,
      I4 => \addressM[28]_1\,
      O => \ALUResult[28]_INST_0_i_3_n_0\
    );
\ALUResult[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[7]_0\,
      I1 => \ALUResult[31]_INST_0_i_2_0\,
      I2 => \^clk_2\,
      I3 => \ALUResult[27]_INST_0_i_3\,
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \ALUResult[27]_INST_0_i_3_0\,
      O => \^aluresult[31]_inst_0_i_15\
    );
\ALUResult[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF47FF470047FF"
    )
        port map (
      I0 => Instr(27),
      I1 => \addressM[4]_1\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => rd20(29),
      I5 => \writeDataM[15]\,
      O => \^clk_29\
    );
\ALUResult[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => \^aluresult[30]_inst_0_i_6\,
      I1 => SrcA(0),
      I2 => \addressM[1]\,
      I3 => \ALUResult[2]_INST_0_i_3_n_0\,
      I4 => \addressM[1]_0\,
      I5 => \addressM[28]\(1),
      O => \^q_reg[2]\
    );
\ALUResult[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CCF0AAAAAAAA"
    )
        port map (
      I0 => \^writedata\(2),
      I1 => Instr(7),
      I2 => Instr(20),
      I3 => \addressM[2]_0\,
      I4 => \addressM[4]_1\,
      I5 => \addressM[14]\,
      O => \^aluresult[30]_inst_0_i_6\
    );
\ALUResult[2]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8A80"
    )
        port map (
      I0 => \addressM[9]_1\,
      I1 => \ALUResult[2]_INST_0_i_4_n_0\,
      I2 => \^clk_7\,
      I3 => \ALUResult[3]_INST_0_i_5_n_0\,
      I4 => \addressM[2]\,
      O => \ALUResult[2]_INST_0_i_3_n_0\
    );
\ALUResult[2]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \^aluresult[30]_inst_0_i_6\,
      I1 => \addressM[1]_1\,
      I2 => \^writedata[4]_inst_0_1\,
      I3 => \^writedata[3]_inst_0_0\,
      I4 => \^clk_2\,
      O => \ALUResult[2]_INST_0_i_4_n_0\
    );
\ALUResult[30]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB0BBBFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(30),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Q(30),
      O => \^q_reg[30]\
    );
\ALUResult[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF470047FF47FF"
    )
        port map (
      I0 => Instr(28),
      I1 => \addressM[4]_1\,
      I2 => Instr(29),
      I3 => \addressM[14]\,
      I4 => \writeDataM[15]\,
      I5 => rd20(30),
      O => \^clk_22\
    );
\ALUResult[30]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB80000FFFFFFFF"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_3\(2),
      I1 => ALUControl(0),
      I2 => \^clk_22\,
      I3 => \^q_reg[30]\,
      I4 => \addressM[0]\,
      I5 => \addressM[1]_0\,
      O => \q_reg[30]_1\
    );
\ALUResult[30]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7400740074FF7400"
    )
        port map (
      I0 => \addressM[7]\,
      I1 => \^writedata[4]_inst_0_0\,
      I2 => SrcA(12),
      I3 => \^writedata[3]_inst_0_1\,
      I4 => \^writedata[4]_inst_0_1\,
      I5 => \ALUResult[15]_INST_0_i_2_n_0\,
      O => \^q_reg[7]_0\
    );
\ALUResult[31]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"088C"
    )
        port map (
      I0 => \addressM[1]_0\,
      I1 => \addressM[1]\,
      I2 => \^q_reg[31]\,
      I3 => \^clk_20\,
      O => \q_reg[31]_1\
    );
\ALUResult[31]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \q[31]_i_34\,
      I1 => \addressM[14]\,
      I2 => rd20(0),
      I3 => \writeDataM[15]\,
      O => \^clk_7\
    );
\ALUResult[31]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA655565"
    )
        port map (
      I0 => \^q_reg[31]\,
      I1 => \writeDataM[15]\,
      I2 => rd20(31),
      I3 => \addressM[14]\,
      I4 => Instr(29),
      O => \^q_reg[31]_4\
    );
\ALUResult[31]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F404FFFFF4040000"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(7),
      I2 => \addressM[0]_1\,
      I3 => Q(7),
      I4 => \^writedata[4]_inst_0_0\,
      I5 => SrcA(12),
      O => \ALUResult[31]_INST_0_i_18_n_0\
    );
\ALUResult[31]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800A8AA0800"
    )
        port map (
      I0 => \^writedata[4]_inst_0_0\,
      I1 => Q(15),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => \^clk_0\(15),
      I5 => \addressM[0]_0\,
      O => \ALUResult[31]_INST_0_i_19_n_0\
    );
\ALUResult[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \addressM[31]\,
      I1 => \^clk_2\,
      I2 => \ALUResult[31]_INST_0_i_9_n_0\,
      I3 => \^clk_7\,
      I4 => \addressM[31]_0\,
      I5 => \addressM[9]_1\,
      O => \ALUResult[31]_INST_0_i_12\
    );
\ALUResult[31]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB0BBBFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => rd10(31),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Q(31),
      O => \^q_reg[31]\
    );
\ALUResult[31]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7747"
    )
        port map (
      I0 => Instr(29),
      I1 => \addressM[14]\,
      I2 => rd20(31),
      I3 => \writeDataM[15]\,
      O => \^clk_20\
    );
\ALUResult[31]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_2_0\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \ALUResult[31]_INST_0_i_18_n_0\,
      I3 => \^writedata[3]_inst_0_0\,
      I4 => \result1_carry__6_i_6_n_0\,
      I5 => \ALUResult[31]_INST_0_i_19_n_0\,
      O => \ALUResult[31]_INST_0_i_9_n_0\
    );
\ALUResult[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB02F2FBFB02020"
    )
        port map (
      I0 => \^writedata[3]_inst_0_0\,
      I1 => \addressM[3]\,
      I2 => \addressM[1]\,
      I3 => \ALUResult[3]_INST_0_i_3_n_0\,
      I4 => \addressM[1]_0\,
      I5 => \addressM[28]\(2),
      O => \^q_reg[3]\
    );
\ALUResult[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00ACFFFF00AC0000"
    )
        port map (
      I0 => Instr(8),
      I1 => Instr(21),
      I2 => \addressM[2]_0\,
      I3 => \addressM[4]_1\,
      I4 => \addressM[14]\,
      I5 => \^writedata\(3),
      O => \^writedata[3]_inst_0_0\
    );
\ALUResult[3]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \ALUResult[3]_INST_0_i_5_n_0\,
      I1 => \^clk_7\,
      I2 => \addressM[9]_1\,
      I3 => \ALUResult[4]_INST_0_i_7_n_0\,
      I4 => \addressM[3]_0\,
      O => \ALUResult[3]_INST_0_i_3_n_0\
    );
\ALUResult[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000B00"
    )
        port map (
      I0 => SrcA(0),
      I1 => \^clk_2\,
      I2 => \^writedata[3]_inst_0_0\,
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \ALUResult[5]_INST_0_i_4_0\,
      I5 => \^aluresult[30]_inst_0_i_6\,
      O => \ALUResult[3]_INST_0_i_5_n_0\
    );
\ALUResult[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB02F2FBFB02020"
    )
        port map (
      I0 => \^writedata[4]_inst_0_0\,
      I1 => \addressM[4]\,
      I2 => \addressM[1]\,
      I3 => \ALUResult[4]_INST_0_i_3_n_0\,
      I4 => \addressM[1]_0\,
      I5 => \addressM[28]\(3),
      O => \^q_reg[4]\
    );
\ALUResult[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151FFFF01510000"
    )
        port map (
      I0 => \addressM[4]_1\,
      I1 => \addressM[4]_2\,
      I2 => \addressM[4]_3\,
      I3 => \addressM[4]_4\,
      I4 => \addressM[14]\,
      I5 => \^writedata\(4),
      O => \^writedata[4]_inst_0_0\
    );
\ALUResult[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000B080B08"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_7_n_0\,
      I1 => \^clk_7\,
      I2 => ALUControl(0),
      I3 => \ALUResult[5]_INST_0_i_4_n_0\,
      I4 => \addressM[4]_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[4]_INST_0_i_3_n_0\
    );
\ALUResult[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000700"
    )
        port map (
      I0 => \addressM[3]\,
      I1 => \^clk_2\,
      I2 => \^writedata[3]_inst_0_0\,
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \addressM[1]_1\,
      I5 => \^aluresult[30]_inst_0_i_6\,
      O => \ALUResult[4]_INST_0_i_7_n_0\
    );
\ALUResult[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB02F2FBFB02020"
    )
        port map (
      I0 => \^clk_3\,
      I1 => \addressM[5]\,
      I2 => \addressM[1]\,
      I3 => \ALUResult[5]_INST_0_i_3_n_0\,
      I4 => \addressM[1]_0\,
      I5 => \addressM[28]\(4),
      O => \^q_reg[5]\
    );
\ALUResult[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A008A008AFF8A00"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => \addressM[14]\,
      I4 => rd20(5),
      I5 => \writeDataM[15]\,
      O => \^clk_3\
    );
\ALUResult[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000B080B08"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_4_n_0\,
      I1 => \^clk_7\,
      I2 => ALUControl(0),
      I3 => \ALUResult[6]_INST_0_i_4_n_0\,
      I4 => \addressM[5]_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[5]_INST_0_i_3_n_0\
    );
\ALUResult[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888B888888"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_6_n_0\,
      I1 => \^clk_2\,
      I2 => \^writedata[3]_inst_0_0\,
      I3 => \^writedata[4]_inst_0_1\,
      I4 => SrcA(0),
      I5 => \^aluresult[30]_inst_0_i_6\,
      O => \ALUResult[5]_INST_0_i_4_n_0\
    );
\ALUResult[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB02F2FBFB02020"
    )
        port map (
      I0 => \^clk_4\,
      I1 => \addressM[6]\,
      I2 => \addressM[1]\,
      I3 => \ALUResult[6]_INST_0_i_3_n_0\,
      I4 => \addressM[1]_0\,
      I5 => \addressM[28]\(5),
      O => \^q_reg[6]\
    );
\ALUResult[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A008A008AFF8A00"
    )
        port map (
      I0 => Instr(24),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => \addressM[14]\,
      I4 => rd20(6),
      I5 => \writeDataM[15]\,
      O => \^clk_4\
    );
\ALUResult[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000B080B08"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_4_n_0\,
      I1 => \^clk_7\,
      I2 => ALUControl(0),
      I3 => \ALUResult[7]_INST_0_i_4_n_0\,
      I4 => \addressM[6]_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[6]_INST_0_i_3_n_0\
    );
\ALUResult[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888B88"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_7_n_0\,
      I1 => \^clk_2\,
      I2 => \^writedata[3]_inst_0_0\,
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \addressM[3]\,
      I5 => \^aluresult[30]_inst_0_i_6\,
      O => \ALUResult[6]_INST_0_i_4_n_0\
    );
\ALUResult[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB02F2FBFB02020"
    )
        port map (
      I0 => \^clk_5\,
      I1 => \addressM[7]\,
      I2 => \addressM[1]\,
      I3 => \ALUResult[7]_INST_0_i_3_n_0\,
      I4 => \addressM[1]_0\,
      I5 => \addressM[28]\(6),
      O => \^q_reg[7]\
    );
\ALUResult[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A008A008AFF8A00"
    )
        port map (
      I0 => Instr(25),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => \addressM[14]\,
      I4 => rd20(7),
      I5 => \writeDataM[15]\,
      O => \^clk_5\
    );
\ALUResult[7]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_4_n_0\,
      I1 => \^clk_7\,
      I2 => \addressM[9]_1\,
      I3 => \ALUResult[8]_INST_0_i_4_n_0\,
      I4 => \addressM[7]_0\,
      O => \ALUResult[7]_INST_0_i_3_n_0\
    );
\ALUResult[7]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_6_n_0\,
      I1 => \^clk_2\,
      I2 => \ALUResult[7]_INST_0_i_6_n_0\,
      O => \ALUResult[7]_INST_0_i_4_n_0\
    );
\ALUResult[7]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004700"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_4_0\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \addressM[4]\,
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \^writedata[3]_inst_0_0\,
      O => \ALUResult[7]_INST_0_i_6_n_0\
    );
\ALUResult[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB02F2FBFB02020"
    )
        port map (
      I0 => SrcA(1),
      I1 => \^clk_6\,
      I2 => \addressM[1]\,
      I3 => \ALUResult[8]_INST_0_i_3_n_0\,
      I4 => \addressM[1]_0\,
      I5 => \addressM[28]\(7),
      O => \^q_reg[19]\(0)
    );
\ALUResult[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75FF75FF750075FF"
    )
        port map (
      I0 => Instr(26),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => \addressM[14]\,
      I4 => rd20(8),
      I5 => \writeDataM[15]\,
      O => \^clk_6\
    );
\ALUResult[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000B080B08"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_4_n_0\,
      I1 => \^clk_7\,
      I2 => ALUControl(0),
      I3 => \ALUResult[9]_INST_0_i_4_n_0\,
      I4 => \addressM[8]\,
      I5 => \addressM[0]\,
      O => \ALUResult[8]_INST_0_i_3_n_0\
    );
\ALUResult[8]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_6_n_0\,
      I1 => \^clk_2\,
      I2 => \ALUResult[8]_INST_0_i_7_n_0\,
      O => \ALUResult[8]_INST_0_i_4_n_0\
    );
\ALUResult[8]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004700"
    )
        port map (
      I0 => \addressM[1]_1\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \addressM[5]\,
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \^writedata[3]_inst_0_0\,
      O => \ALUResult[8]_INST_0_i_7_n_0\
    );
\ALUResult[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB02F20BFB02020"
    )
        port map (
      I0 => \^clk_8\,
      I1 => \addressM[9]\,
      I2 => \addressM[1]\,
      I3 => \ALUResult[9]_INST_0_i_3_n_0\,
      I4 => \addressM[1]_0\,
      I5 => \addressM[28]\(8),
      O => \^q_reg[19]\(1)
    );
\ALUResult[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A008A008AFF8A00"
    )
        port map (
      I0 => Instr(27),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => \addressM[14]\,
      I4 => rd20(9),
      I5 => \writeDataM[15]\,
      O => \^clk_8\
    );
\ALUResult[9]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_4_n_0\,
      I1 => \^clk_7\,
      I2 => \addressM[9]_1\,
      I3 => \ALUResult[10]_INST_0_i_4_n_0\,
      I4 => \addressM[9]_0\,
      O => \ALUResult[9]_INST_0_i_3_n_0\
    );
\ALUResult[9]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_7_n_0\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \ALUResult[15]_INST_0_i_6_n_0\,
      I3 => \^clk_2\,
      I4 => \ALUResult[9]_INST_0_i_6_n_0\,
      O => \ALUResult[9]_INST_0_i_4_n_0\
    );
\ALUResult[9]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008B00"
    )
        port map (
      I0 => SrcA(0),
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \addressM[6]\,
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \^writedata[3]_inst_0_0\,
      O => \ALUResult[9]_INST_0_i_6_n_0\
    );
\WriteData[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => rd20(0),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(19),
      I4 => Instr(21),
      I5 => Instr(22),
      O => \^writedata\(0)
    );
\WriteData[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0002"
    )
        port map (
      I0 => rd20(7),
      I1 => Instr(12),
      I2 => Instr(10),
      I3 => Instr(11),
      I4 => rd20(10),
      I5 => \writeDataM[15]\,
      O => \^writedata\(10)
    );
\WriteData[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0002"
    )
        port map (
      I0 => rd20(7),
      I1 => Instr(12),
      I2 => Instr(10),
      I3 => Instr(11),
      I4 => rd20(11),
      I5 => \writeDataM[15]\,
      O => \^writedata\(11)
    );
\WriteData[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0002"
    )
        port map (
      I0 => rd20(7),
      I1 => Instr(12),
      I2 => Instr(10),
      I3 => Instr(11),
      I4 => rd20(12),
      I5 => \writeDataM[15]\,
      O => \^writedata\(12)
    );
\WriteData[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0002"
    )
        port map (
      I0 => rd20(7),
      I1 => Instr(12),
      I2 => Instr(10),
      I3 => Instr(11),
      I4 => rd20(13),
      I5 => \writeDataM[15]\,
      O => \^writedata\(13)
    );
\WriteData[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0002"
    )
        port map (
      I0 => rd20(7),
      I1 => Instr(12),
      I2 => Instr(10),
      I3 => Instr(11),
      I4 => rd20(14),
      I5 => \writeDataM[15]\,
      O => \^writedata\(14)
    );
\WriteData[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0002"
    )
        port map (
      I0 => rd20(7),
      I1 => Instr(12),
      I2 => Instr(10),
      I3 => Instr(11),
      I4 => rd20(15),
      I5 => \writeDataM[15]\,
      O => \^writedata\(15)
    );
\WriteData[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \WriteData[31]_INST_0_i_1_n_0\,
      I4 => rd20(16),
      I5 => \writeDataM[15]\,
      O => \^writedata\(16)
    );
\WriteData[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \WriteData[31]_INST_0_i_1_n_0\,
      I4 => rd20(17),
      I5 => \writeDataM[15]\,
      O => \^writedata\(17)
    );
\WriteData[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \WriteData[31]_INST_0_i_1_n_0\,
      I4 => rd20(18),
      I5 => \writeDataM[15]\,
      O => \^writedata\(18)
    );
\WriteData[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \WriteData[31]_INST_0_i_1_n_0\,
      I4 => rd20(19),
      I5 => \writeDataM[15]\,
      O => \^writedata\(19)
    );
\WriteData[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => rd20(1),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(19),
      I4 => Instr(21),
      I5 => Instr(22),
      O => \^writedata\(1)
    );
\WriteData[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \WriteData[31]_INST_0_i_1_n_0\,
      I4 => rd20(20),
      I5 => \writeDataM[15]\,
      O => \^writedata\(20)
    );
\WriteData[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \WriteData[31]_INST_0_i_1_n_0\,
      I4 => rd20(21),
      I5 => \writeDataM[15]\,
      O => \^writedata\(21)
    );
\WriteData[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B800B800FF0000"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \writeDataM[15]\,
      I4 => rd20(22),
      I5 => \WriteData[31]_INST_0_i_1_n_0\,
      O => \^writedata\(22)
    );
\WriteData[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \WriteData[31]_INST_0_i_1_n_0\,
      I4 => rd20(23),
      I5 => \writeDataM[15]\,
      O => \^writedata\(23)
    );
\WriteData[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \WriteData[31]_INST_0_i_1_n_0\,
      I4 => rd20(24),
      I5 => \writeDataM[15]\,
      O => \^writedata\(24)
    );
\WriteData[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \WriteData[31]_INST_0_i_1_n_0\,
      I4 => rd20(25),
      I5 => \writeDataM[15]\,
      O => \^writedata\(25)
    );
\WriteData[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \WriteData[31]_INST_0_i_1_n_0\,
      I4 => rd20(26),
      I5 => \writeDataM[15]\,
      O => \^writedata\(26)
    );
\WriteData[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \WriteData[31]_INST_0_i_1_n_0\,
      I4 => rd20(27),
      I5 => \writeDataM[15]\,
      O => \^writedata\(27)
    );
\WriteData[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \WriteData[31]_INST_0_i_1_n_0\,
      I4 => rd20(28),
      I5 => \writeDataM[15]\,
      O => \^writedata\(28)
    );
\WriteData[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \WriteData[31]_INST_0_i_1_n_0\,
      I4 => rd20(29),
      I5 => \writeDataM[15]\,
      O => \^writedata\(29)
    );
\WriteData[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => rd20(2),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(19),
      I4 => Instr(21),
      I5 => Instr(22),
      O => \^writedata\(2)
    );
\WriteData[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B800B800FF0000"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \writeDataM[15]\,
      I4 => rd20(30),
      I5 => \WriteData[31]_INST_0_i_1_n_0\,
      O => \^writedata\(30)
    );
\WriteData[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => rd20(15),
      I1 => Instr(10),
      I2 => rd20(7),
      I3 => \WriteData[31]_INST_0_i_1_n_0\,
      I4 => rd20(31),
      I5 => \writeDataM[15]\,
      O => \^writedata\(31)
    );
\WriteData[31]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Instr(11),
      I1 => Instr(12),
      O => \WriteData[31]_INST_0_i_1_n_0\
    );
\WriteData[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => rd20(3),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(19),
      I4 => Instr(21),
      I5 => Instr(22),
      O => \^writedata\(3)
    );
\WriteData[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => rd20(4),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(19),
      I4 => Instr(21),
      I5 => Instr(22),
      O => \^writedata\(4)
    );
\WriteData[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => rd20(5),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(19),
      I4 => Instr(21),
      I5 => Instr(22),
      O => \^writedata\(5)
    );
\WriteData[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => rd20(6),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(19),
      I4 => Instr(21),
      I5 => Instr(22),
      O => \^writedata\(6)
    );
\WriteData[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => rd20(7),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(19),
      I4 => Instr(21),
      I5 => Instr(22),
      O => \^writedata\(7)
    );
\WriteData[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0002"
    )
        port map (
      I0 => rd20(7),
      I1 => Instr(12),
      I2 => Instr(10),
      I3 => Instr(11),
      I4 => rd20(8),
      I5 => \writeDataM[15]\,
      O => \^writedata\(8)
    );
\WriteData[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0002"
    )
        port map (
      I0 => rd20(7),
      I1 => Instr(12),
      I2 => Instr(10),
      I3 => Instr(11),
      I4 => rd20(9),
      I5 => \writeDataM[15]\,
      O => \^writedata\(9)
    );
\q[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[28]_0\(9),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \^q[31]_i_6\,
      I4 => Instr(4),
      I5 => \q[11]_i_2_n_0\,
      O => D(9)
    );
\q[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[19]\(2),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(9),
      O => \q[11]_i_2_n_0\
    );
\q[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[28]_0\(10),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \^q[31]_i_6\,
      I4 => Instr(4),
      I5 => \q[13]_i_2_n_0\,
      O => D(10)
    );
\q[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[19]\(3),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(10),
      O => \q[13]_i_2_n_0\
    );
\q[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[28]_0\(11),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \^q[31]_i_6\,
      I4 => Instr(4),
      I5 => \q[15]_i_2_n_0\,
      O => D(11)
    );
\q[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[19]\(4),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(11),
      O => \q[15]_i_2_n_0\
    );
\q[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[28]_0\(12),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \^q[31]_i_6\,
      I4 => Instr(4),
      I5 => \q[17]_i_2_n_0\,
      O => D(12)
    );
\q[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[19]\(5),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(12),
      O => \q[17]_i_2_n_0\
    );
\q[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[28]_0\(13),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \^q[31]_i_6\,
      I4 => Instr(4),
      I5 => \q[19]_i_2_n_0\,
      O => D(13)
    );
\q[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[19]\(6),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(13),
      O => \q[19]_i_2_n_0\
    );
\q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[28]_0\(0),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \^q[31]_i_6\,
      I4 => Instr(4),
      I5 => \q[1]_i_2_n_0\,
      O => D(0)
    );
\q[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[1]\,
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(0),
      O => \q[1]_i_2_n_0\
    );
\q[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[28]_0\(14),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \^q[31]_i_6\,
      I4 => Instr(4),
      I5 => \q[28]_i_2_n_0\,
      O => D(14)
    );
\q[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[28]\,
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(14),
      O => \q[28]_i_2_n_0\
    );
\q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[28]_0\(1),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \^q[31]_i_6\,
      I4 => Instr(4),
      I5 => \q[2]_i_2_n_0\,
      O => D(1)
    );
\q[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[2]\,
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(1),
      O => \q[2]_i_2_n_0\
    );
\q[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \q[31]_i_14_n_0\,
      I1 => ALUResult(0),
      I2 => \^q_reg[19]\(2),
      I3 => ALUResult(1),
      I4 => \^q_reg[19]\(4),
      I5 => \q[31]_i_5_2\,
      O => \q[31]_i_10_n_0\
    );
\q[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \q[31]_i_16_n_0\,
      I1 => \q[31]_i_17_n_0\,
      I2 => ALUResult(4),
      I3 => ALUResult(3),
      I4 => \^q_reg[28]\,
      I5 => ALUResult(2),
      O => \q[31]_i_11_n_0\
    );
\q[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3FB3B3333FB3B"
    )
        port map (
      I0 => \q[31]_i_20_n_0\,
      I1 => \addressM[1]_0\,
      I2 => \addressM[0]\,
      I3 => \ALUResult[0]_INST_0_i_10_n_0\,
      I4 => ALUControl(0),
      I5 => result2(0),
      O => \q[31]_i_13_n_0\
    );
\q[31]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \q[31]_i_22_n_0\,
      I1 => \q[31]_i_23_n_0\,
      I2 => \q[31]_i_24_n_0\,
      I3 => \addressM[1]\,
      I4 => \q[31]_i_25_n_0\,
      O => \q[31]_i_14_n_0\
    );
\q[31]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \q[31]_i_11_0\,
      I1 => \q[31]_i_31_n_0\,
      I2 => \q[31]_i_11_1\,
      I3 => \q[31]_i_33_n_0\,
      O => \q[31]_i_16_n_0\
    );
\q[31]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \q[31]_i_11_2\,
      I1 => \q[31]_i_35_n_0\,
      I2 => \q[31]_i_11_3\,
      I3 => \q[31]_i_37_n_0\,
      O => \q[31]_i_17_n_0\
    );
\q[31]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \^clk_7\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \ALUResult[5]_INST_0_i_4_0\,
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \^writedata[3]_inst_0_0\,
      I5 => \^clk_2\,
      O => \q[31]_i_20_n_0\
    );
\q[31]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \q[31]_i_46_n_0\,
      I1 => \ALUResult[0]_INST_0_i_12_n_0\,
      I2 => \q[31]_i_13_0\,
      I3 => \^clk_2\,
      I4 => \ALUResult[0]_INST_0_i_15_n_0\,
      I5 => \^clk_7\,
      O => result2(0)
    );
\q[31]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF54FFFFFF540000"
    )
        port map (
      I0 => \q[31]_i_48_n_0\,
      I1 => \^clk_7\,
      I2 => \ALUResult[9]_INST_0_i_4_n_0\,
      I3 => \q[31]_i_14_0\,
      I4 => \addressM[1]_0\,
      I5 => \addressM[28]\(7),
      O => \q[31]_i_22_n_0\
    );
\q[31]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA200020FFBAAABA"
    )
        port map (
      I0 => \addressM[1]_0\,
      I1 => \addressM[0]_0\,
      I2 => \^clk_0\(8),
      I3 => \addressM[0]_1\,
      I4 => Q(8),
      I5 => \^clk_6\,
      O => \q[31]_i_23_n_0\
    );
\q[31]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FAEAAAEA"
    )
        port map (
      I0 => \addressM[9]_0\,
      I1 => \ALUResult[10]_INST_0_i_4_n_0\,
      I2 => \addressM[9]_1\,
      I3 => \^clk_7\,
      I4 => \ALUResult[9]_INST_0_i_4_n_0\,
      I5 => \q[31]_i_14_1\,
      O => \q[31]_i_24_n_0\
    );
\q[31]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE8E8888888E88"
    )
        port map (
      I0 => \addressM[1]_0\,
      I1 => \^clk_8\,
      I2 => \addressM[0]_0\,
      I3 => \^clk_0\(9),
      I4 => \addressM[0]_1\,
      I5 => Q(9),
      O => \q[31]_i_25_n_0\
    );
\q[31]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA200020FFBAAABA"
    )
        port map (
      I0 => \addressM[1]_0\,
      I1 => \addressM[0]_0\,
      I2 => \^clk_0\(12),
      I3 => \addressM[0]_1\,
      I4 => Q(12),
      I5 => \^clk_10\,
      O => \q_reg[12]\
    );
\q[31]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE8E8888888E88"
    )
        port map (
      I0 => \addressM[1]_0\,
      I1 => \^clk_11\,
      I2 => \addressM[0]_0\,
      I3 => \^clk_0\(13),
      I4 => \addressM[0]_1\,
      I5 => Q(13),
      O => \q_reg[13]\
    );
\q[31]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C08"
    )
        port map (
      I0 => \addressM[1]_0\,
      I1 => \addressM[1]\,
      I2 => \^clk_19\,
      I3 => SrcA(13),
      O => \q[31]_i_31_n_0\
    );
\q[31]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C08"
    )
        port map (
      I0 => \addressM[1]_0\,
      I1 => \addressM[1]\,
      I2 => \^clk_18\,
      I3 => SrcA(14),
      O => \q[31]_i_33_n_0\
    );
\q[31]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C08"
    )
        port map (
      I0 => \addressM[1]_0\,
      I1 => \addressM[1]\,
      I2 => \^clk_17\,
      I3 => SrcA(15),
      O => \q[31]_i_35_n_0\
    );
\q[31]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C08"
    )
        port map (
      I0 => \addressM[1]_0\,
      I1 => \addressM[1]\,
      I2 => \^clk_16\,
      I3 => SrcA(16),
      O => \q[31]_i_37_n_0\
    );
\q[31]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FAEAAAEA"
    )
        port map (
      I0 => \addressM[19]\,
      I1 => \ALUResult[20]_INST_0_i_4_n_0\,
      I2 => \addressM[9]_1\,
      I3 => \^clk_7\,
      I4 => \^aluresult[23]_inst_0_i_6\,
      I5 => \q[31]_i_18\,
      O => \q[31]_i_58\
    );
\q[31]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE8E8888888E88"
    )
        port map (
      I0 => \addressM[1]_0\,
      I1 => \^clk_12\,
      I2 => \addressM[0]_0\,
      I3 => \^clk_0\(16),
      I4 => \addressM[0]_1\,
      I5 => Q(16),
      O => \q_reg[16]\
    );
\q[31]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0BFF0B00"
    )
        port map (
      I0 => \q[31]_i_21_3\,
      I1 => \^writedata[3]_inst_0_0\,
      I2 => \q[31]_i_61_n_0\,
      I3 => \^aluresult[30]_inst_0_i_6\,
      I4 => \q[31]_i_21_0\,
      O => \q[31]_i_46_n_0\
    );
\q[31]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4700FFFF"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_6_n_0\,
      I1 => \^clk_2\,
      I2 => \ALUResult[8]_INST_0_i_7_n_0\,
      I3 => \^clk_7\,
      I4 => \addressM[9]_1\,
      O => \q[31]_i_48_n_0\
    );
\q[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \q[31]_i_7_n_0\,
      I1 => \q[31]_i_8_n_0\,
      I2 => \q[31]_i_9_n_0\,
      I3 => \q[31]_i_10_n_0\,
      I4 => \q[31]_i_11_n_0\,
      I5 => \q_reg[31]_i_2_0\,
      O => \q[31]_i_5_n_0\
    );
\q[31]_i_61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F222"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => \addressM[5]\,
      I2 => SrcA(10),
      I3 => \^writedata[4]_inst_0_0\,
      I4 => \^writedata[3]_inst_0_0\,
      O => \q[31]_i_61_n_0\
    );
\q[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q_reg[2]\,
      I1 => \^q_reg[3]\,
      O => \q[31]_i_7_n_0\
    );
\q[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF540054"
    )
        port map (
      I0 => \q[31]_i_5_0\,
      I1 => \q[31]_i_5_1\,
      I2 => \q[31]_i_13_n_0\,
      I3 => \addressM[1]\,
      I4 => \^q_reg[0]\,
      I5 => \^q_reg[1]\,
      O => \q[31]_i_8_n_0\
    );
\q[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q_reg[7]\,
      I1 => \^q_reg[6]\,
      I2 => \^q_reg[5]\,
      I3 => \^q_reg[4]\,
      O => \q[31]_i_9_n_0\
    );
\q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[28]_0\(2),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \^q[31]_i_6\,
      I4 => Instr(4),
      I5 => \q[3]_i_2_n_0\,
      O => D(2)
    );
\q[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[3]\,
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(2),
      O => \q[3]_i_2_n_0\
    );
\q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[28]_0\(3),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \^q[31]_i_6\,
      I4 => Instr(4),
      I5 => \q[4]_i_2_n_0\,
      O => D(3)
    );
\q[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[4]\,
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(3),
      O => \q[4]_i_2_n_0\
    );
\q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[28]_0\(4),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \^q[31]_i_6\,
      I4 => Instr(4),
      I5 => \q[5]_i_2_n_0\,
      O => D(4)
    );
\q[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[5]\,
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(4),
      O => \q[5]_i_2_n_0\
    );
\q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[28]_0\(5),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \^q[31]_i_6\,
      I4 => Instr(4),
      I5 => \q[6]_i_2_n_0\,
      O => D(5)
    );
\q[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[6]\,
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(5),
      O => \q[6]_i_2_n_0\
    );
\q[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[28]_0\(6),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \^q[31]_i_6\,
      I4 => Instr(4),
      I5 => \q[7]_i_2_n_0\,
      O => D(6)
    );
\q[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[7]\,
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(6),
      O => \q[7]_i_2_n_0\
    );
\q[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[28]_0\(7),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \^q[31]_i_6\,
      I4 => Instr(4),
      I5 => \q[8]_i_2_n_0\,
      O => D(7)
    );
\q[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[19]\(0),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(7),
      O => \q[8]_i_2_n_0\
    );
\q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFAAAA0220AAAA"
    )
        port map (
      I0 => \q_reg[28]_0\(8),
      I1 => Instr(0),
      I2 => Instr(10),
      I3 => \^q[31]_i_6\,
      I4 => Instr(4),
      I5 => \q[9]_i_2_n_0\,
      O => D(8)
    );
\q[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE0A22"
    )
        port map (
      I0 => \^q_reg[19]\(1),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => d1(8),
      O => \q[9]_i_2_n_0\
    );
\q_reg[31]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[31]_i_5_n_0\,
      I1 => \q_reg[28]_2\,
      O => \^q[31]_i_6\,
      S => \q_reg[28]_1\
    );
\result1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF33CC00"
    )
        port map (
      I0 => \result1_carry__1\,
      I1 => \^clk_2\,
      I2 => \result1_carry__0_i_10_n_0\,
      I3 => \result1_carry__0_i_11_n_0\,
      I4 => \result1_carry__0_i_12_n_0\,
      I5 => \^clk_7\,
      O => \^q_reg[31]_0\(5)
    );
\result1_carry__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__0_i_17_n_0\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \result1_carry__0_i_3_0\,
      O => \result1_carry__0_i_10_n_0\
    );
\result1_carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__1_i_11_0\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => result1_carry_i_19_n_0,
      O => \result1_carry__0_i_11_n_0\
    );
\result1_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__0_i_19_n_0\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => result1_carry_i_17_n_0,
      O => \result1_carry__0_i_12_n_0\
    );
\result1_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF530000FF53FFFF"
    )
        port map (
      I0 => Instr(8),
      I1 => Instr(21),
      I2 => \addressM[2]_0\,
      I3 => \addressM[4]_1\,
      I4 => \addressM[14]\,
      I5 => \^writedata\(3),
      O => \^writedata[3]_inst_0_1\
    );
\result1_carry__0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A3FFA300"
    )
        port map (
      I0 => \result1_carry__0_i_3_0\,
      I1 => \^q_reg[23]\,
      I2 => \^aluresult[30]_inst_0_i_6\,
      I3 => \^clk_2\,
      I4 => \result1_carry__1\,
      O => \result1_carry__0_i_14_n_0\
    );
\result1_carry__0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A3FFA300"
    )
        port map (
      I0 => result1_carry_i_17_n_0,
      I1 => \result1_carry__0_i_3_1\,
      I2 => \^aluresult[30]_inst_0_i_6\,
      I3 => \^clk_2\,
      I4 => \result1_carry__0_i_11_n_0\,
      O => \result1_carry__0_i_15_n_0\
    );
\result1_carry__0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B00BB338B008B00"
    )
        port map (
      I0 => SrcA(12),
      I1 => \^writedata[3]_inst_0_0\,
      I2 => \ALUResult[15]_INST_0_i_2_n_0\,
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \^q_reg[31]\,
      I5 => \^writedata[4]_inst_0_0\,
      O => \result1_carry__0_i_17_n_0\
    );
\result1_carry__0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2020"
    )
        port map (
      I0 => SrcA(11),
      I1 => \^writedata[4]_inst_0_0\,
      I2 => \^writedata[3]_inst_0_0\,
      I3 => \q[31]_i_21_2\,
      I4 => \^writedata[3]_inst_0_1\,
      O => \result1_carry__0_i_19_n_0\
    );
\result1_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FB0000"
    )
        port map (
      I0 => \^aluresult[30]_inst_0_i_6\,
      I1 => \^clk_2\,
      I2 => \^clk_7\,
      I3 => \^writedata[3]_inst_0_1\,
      I4 => \^p_0_in\(1),
      O => \^p_0_in\(0)
    );
\result1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__0_i_14_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__0_i_15_n_0\,
      O => \^q_reg[31]_0\(4)
    );
\result1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__0_i_15_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__0\,
      O => \^q_reg[31]_0\(3)
    );
\result1_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6A6A6A6A666A6A6"
    )
        port map (
      I0 => \^q_reg[31]_0\(5),
      I1 => \^p_0_in\(1),
      I2 => \^writedata[3]_inst_0_1\,
      I3 => \^clk_7\,
      I4 => \^clk_2\,
      I5 => \^aluresult[30]_inst_0_i_6\,
      O => \ALUResult[2]_INST_0_i_1_0\(3)
    );
\result1_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \result1_carry__0_i_11_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__0_i_12_n_0\,
      I3 => \result1_carry__0_i_14_n_0\,
      I4 => \^clk_7\,
      I5 => \^p_0_in\(0),
      O => \ALUResult[2]_INST_0_i_1_0\(2)
    );
\result1_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47478B47B8B8B8B8"
    )
        port map (
      I0 => \result1_carry__0_i_14_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__0_i_15_n_0\,
      I3 => \^clk_2\,
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \^p_0_in\(0),
      O => \ALUResult[2]_INST_0_i_1_0\(1)
    );
\result1_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47B88BB847B874B8"
    )
        port map (
      I0 => \result1_carry__0_i_15_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__0\,
      I3 => \^p_0_in\(0),
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \^clk_2\,
      O => \ALUResult[2]_INST_0_i_1_0\(0)
    );
\result1_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \result1_carry__2_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__1_i_10_n_0\,
      I3 => \^clk_7\,
      I4 => \result1_carry__1_i_11_n_0\,
      O => \^q_reg[31]_0\(9)
    );
\result1_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => SrcA(16),
      I1 => \^writedata[3]_inst_0_0\,
      I2 => \^writedata[4]_inst_0_1\,
      I3 => SrcA(8),
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \result1_carry__0_i_17_n_0\,
      O => \result1_carry__1_i_10_n_0\
    );
\result1_carry__1_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__1_i_13_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__2_i_13_n_0\,
      O => \result1_carry__1_i_11_n_0\
    );
\result1_carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__0_i_10_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__2_0\,
      O => \result1_carry__1_i_12_n_0\
    );
\result1_carry__1_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__1_i_17_n_0\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \result1_carry__1_i_11_0\,
      O => \result1_carry__1_i_13_n_0\
    );
\result1_carry__1_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5900FFFF"
    )
        port map (
      I0 => \^aluresult[30]_inst_0_i_6\,
      I1 => \^clk_2\,
      I2 => \^clk_7\,
      I3 => \^writedata[3]_inst_0_1\,
      I4 => \result1_carry__2_i_11_n_0\,
      O => \result1_carry__1_i_14_n_0\
    );
\result1_carry__1_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA8AAAAA"
    )
        port map (
      I0 => \result1_carry__2\,
      I1 => \^writedata[4]_inst_0_0\,
      I2 => \^writedata[3]_inst_0_1\,
      I3 => \^clk_7\,
      I4 => \^clk_2\,
      I5 => \^aluresult[30]_inst_0_i_6\,
      O => \result1_carry__1_i_15_n_0\
    );
\result1_carry__1_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FB0000"
    )
        port map (
      I0 => \^aluresult[30]_inst_0_i_6\,
      I1 => \^clk_2\,
      I2 => \^clk_7\,
      I3 => \^writedata[3]_inst_0_1\,
      I4 => \result1_carry__2_i_11_n_0\,
      O => \result1_carry__1_i_16_n_0\
    );
\result1_carry__1_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808F80"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => SrcA(13),
      I2 => \^writedata[3]_inst_0_0\,
      I3 => SrcA(5),
      I4 => \^writedata[4]_inst_0_0\,
      O => \result1_carry__1_i_17_n_0\
    );
\result1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__1_i_11_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__1_i_12_n_0\,
      O => \^q_reg[31]_0\(8)
    );
\result1_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \result1_carry__0_i_12_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__1_i_13_n_0\,
      I3 => \result1_carry__1_i_12_n_0\,
      I4 => \^clk_7\,
      O => \^q_reg[31]_0\(7)
    );
\result1_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF33CC00"
    )
        port map (
      I0 => \result1_carry__0_i_12_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__1_i_13_n_0\,
      I3 => \result1_carry__1\,
      I4 => \result1_carry__0_i_10_n_0\,
      I5 => \^clk_7\,
      O => \^q_reg[31]_0\(6)
    );
\result1_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666666666A666A6A"
    )
        port map (
      I0 => \^q_reg[31]_0\(9),
      I1 => \^p_0_in\(1),
      I2 => \^writedata[3]_inst_0_0\,
      I3 => \^clk_7\,
      I4 => \^clk_2\,
      I5 => \^aluresult[30]_inst_0_i_6\,
      O => \ALUResult[2]_INST_0_i_1_1\(3)
    );
\result1_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B847B8B8"
    )
        port map (
      I0 => \result1_carry__1_i_11_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__1_i_12_n_0\,
      I3 => \result1_carry__1_i_14_n_0\,
      I4 => \result1_carry__1_i_15_n_0\,
      O => \ALUResult[2]_INST_0_i_1_1\(2)
    );
\result1_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A55AAAAAA95AAAA"
    )
        port map (
      I0 => \^q_reg[31]_0\(7),
      I1 => \^clk_2\,
      I2 => \^clk_7\,
      I3 => \result1_carry__1_i_14_n_0\,
      I4 => \result1_carry__1_i_15_n_0\,
      I5 => \result1_carry__1_i_16_n_0\,
      O => \ALUResult[2]_INST_0_i_1_1\(1)
    );
\result1_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AA6AAAA6556AAAA"
    )
        port map (
      I0 => \^q_reg[31]_0\(6),
      I1 => \result1_carry__1_i_16_n_0\,
      I2 => \^clk_2\,
      I3 => \^clk_7\,
      I4 => \result1_carry__1_i_15_n_0\,
      I5 => \result1_carry__1_i_14_n_0\,
      O => \ALUResult[2]_INST_0_i_1_1\(0)
    );
\result1_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__2_i_9_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__2_i_10_n_0\,
      O => \^q_reg[31]_0\(12)
    );
\result1_carry__2_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__2_i_14_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__3_i_12_n_0\,
      O => \result1_carry__2_i_10_n_0\
    );
\result1_carry__2_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FB08"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => \^writedata[3]_inst_0_1\,
      I2 => \result1_carry__4_i_16_n_0\,
      I3 => \^writedata[4]_inst_0_0\,
      I4 => \^q_reg[31]\,
      O => \result1_carry__2_i_11_n_0\
    );
\result1_carry__2_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__2_i_18_n_0\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \result1_carry__0_i_19_n_0\,
      O => \result1_carry__2_i_13_n_0\
    );
\result1_carry__2_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__2_i_19_n_0\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \result1_carry__1_i_17_n_0\,
      O => \result1_carry__2_i_14_n_0\
    );
\result1_carry__2_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7040FFFF70400000"
    )
        port map (
      I0 => \^q_reg[31]\,
      I1 => \^writedata[3]_inst_0_0\,
      I2 => \^writedata[4]_inst_0_1\,
      I3 => SrcA(12),
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \result1_carry__3_i_11_0\,
      O => \result1_carry__2_i_16_n_0\
    );
\result1_carry__2_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808F80"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => SrcA(15),
      I2 => \^writedata[3]_inst_0_0\,
      I3 => SrcA(7),
      I4 => \^writedata[4]_inst_0_0\,
      O => \result1_carry__2_i_18_n_0\
    );
\result1_carry__2_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808F80"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => SrcA(17),
      I2 => \^writedata[3]_inst_0_0\,
      I3 => SrcA(9),
      I4 => \^writedata[4]_inst_0_0\,
      O => \result1_carry__2_i_19_n_0\
    );
\result1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \result1_carry__1_i_15_n_0\,
      I1 => \result1_carry__2_i_11_n_0\,
      O => \^p_0_in\(1)
    );
\result1_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF33CC00"
    )
        port map (
      I0 => \result1_carry__1_i_10_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__2_1\,
      I3 => \result1_carry__2_i_13_n_0\,
      I4 => \result1_carry__2_i_14_n_0\,
      I5 => \^clk_7\,
      O => \^q_reg[31]_0\(11)
    );
\result1_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF33CC00"
    )
        port map (
      I0 => \result1_carry__2_i_13_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__2_i_14_n_0\,
      I3 => \result1_carry__2_0\,
      I4 => \result1_carry__1_i_10_n_0\,
      I5 => \^clk_7\,
      O => \^q_reg[31]_0\(10)
    );
\result1_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B847B8B8B8B8B8"
    )
        port map (
      I0 => \result1_carry__2_i_9_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__2_i_10_n_0\,
      I3 => \^writedata[4]_inst_0_0\,
      I4 => \^q_reg[31]\,
      I5 => \result1_carry__2\,
      O => \q_reg[31]_5\(3)
    );
\result1_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \result1_carry__1_i_10_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__2_1\,
      I3 => \^clk_7\,
      I4 => \result1_carry__2_i_10_n_0\,
      I5 => \^p_0_in\(1),
      O => \q_reg[31]_5\(2)
    );
\result1_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55556555AAAAAAAA"
    )
        port map (
      I0 => \^q_reg[31]_0\(11),
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \^clk_2\,
      I3 => \^clk_7\,
      I4 => \^writedata[3]_inst_0_0\,
      I5 => \^p_0_in\(1),
      O => \q_reg[31]_5\(1)
    );
\result1_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65555565AAAAAAAA"
    )
        port map (
      I0 => \^q_reg[31]_0\(10),
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \^writedata[3]_inst_0_1\,
      I3 => \^clk_7\,
      I4 => \^clk_2\,
      I5 => \^p_0_in\(1),
      O => \q_reg[31]_5\(0)
    );
\result1_carry__2_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__2_1\,
      I1 => \^clk_2\,
      I2 => \result1_carry__2_i_16_n_0\,
      O => \result1_carry__2_i_9_n_0\
    );
\result1_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__3_i_9_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__3_i_10_n_0\,
      O => \^q_reg[31]_0\(16)
    );
\result1_carry__3_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__3_i_13_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__3_i_18_n_0\,
      O => \result1_carry__3_i_10_n_0\
    );
\result1_carry__3_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__2_i_16_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__3_i_2_0\,
      O => \result1_carry__3_i_11_n_0\
    );
\result1_carry__3_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__3_i_19_n_0\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \result1_carry__2_i_18_n_0\,
      O => \result1_carry__3_i_12_n_0\
    );
\result1_carry__3_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000B3B330008080"
    )
        port map (
      I0 => SrcA(13),
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \^writedata[4]_inst_0_1\,
      I3 => SrcA(17),
      I4 => \^writedata[3]_inst_0_0\,
      I5 => \result1_carry__3_i_20_n_0\,
      O => \result1_carry__3_i_13_n_0\
    );
\result1_carry__3_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8828BBEB"
    )
        port map (
      I0 => \result1_carry__4_i_13_n_0\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \^clk_2\,
      I3 => \^clk_7\,
      I4 => \result1_carry__2_i_11_n_0\,
      O => \result1_carry__3_i_14_n_0\
    );
\result1_carry__3_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AA8BAAB"
    )
        port map (
      I0 => \result1_carry__4_i_13_n_0\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \^clk_7\,
      I3 => \^clk_2\,
      I4 => \result1_carry__2_i_11_n_0\,
      O => \result1_carry__3_i_15_n_0\
    );
\result1_carry__3_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03BB000003880000"
    )
        port map (
      I0 => SrcA(16),
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \^q_reg[31]\,
      I3 => \^writedata[3]_inst_0_0\,
      I4 => \^writedata[4]_inst_0_1\,
      I5 => SrcA(12),
      O => \result1_carry__3_i_17_n_0\
    );
\result1_carry__3_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030B3B300308080"
    )
        port map (
      I0 => SrcA(15),
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \^writedata[4]_inst_0_1\,
      I3 => \^q_reg[30]\,
      I4 => \^writedata[3]_inst_0_0\,
      I5 => \result1_carry__3_i_21_n_0\,
      O => \result1_carry__3_i_18_n_0\
    );
\result1_carry__3_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => \^q_reg[30]\,
      I2 => \^writedata[3]_inst_0_0\,
      I3 => SrcA(11),
      I4 => \^writedata[4]_inst_0_0\,
      O => \result1_carry__3_i_19_n_0\
    );
\result1_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__3_i_10_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__3_i_11_n_0\,
      O => \^q_reg[31]_0\(15)
    );
\result1_carry__3_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004F444044"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(20),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Q(20),
      I5 => \^writedata[4]_inst_0_0\,
      O => \result1_carry__3_i_20_n_0\
    );
\result1_carry__3_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004F444044"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(22),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Q(22),
      I5 => \^writedata[4]_inst_0_0\,
      O => \result1_carry__3_i_21_n_0\
    );
\result1_carry__3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \result1_carry__3_i_12_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__3_i_13_n_0\,
      I3 => \result1_carry__3_i_11_n_0\,
      I4 => \^clk_7\,
      O => \^q_reg[31]_0\(14)
    );
\result1_carry__3_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \result1_carry__3_i_12_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__3_i_13_n_0\,
      I3 => \^clk_7\,
      I4 => \result1_carry__2_i_9_n_0\,
      O => \^q_reg[31]_0\(13)
    );
\result1_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B874B8B88B47B8B8"
    )
        port map (
      I0 => \result1_carry__3_i_9_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__3_i_10_n_0\,
      I3 => \result1_carry__3_i_14_n_0\,
      I4 => \result1_carry__1_i_15_n_0\,
      I5 => \result1_carry__3_i_15_n_0\,
      O => \result1_carry__3_i_15_0\(3)
    );
\result1_carry__3_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B847B8B8"
    )
        port map (
      I0 => \result1_carry__3_i_10_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__3_i_11_n_0\,
      I3 => \result1_carry__3_i_14_n_0\,
      I4 => \result1_carry__1_i_15_n_0\,
      O => \result1_carry__3_i_15_0\(2)
    );
\result1_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA6666A666"
    )
        port map (
      I0 => \^q_reg[31]_0\(14),
      I1 => \result1_carry__1_i_15_n_0\,
      I2 => \^clk_2\,
      I3 => \^clk_7\,
      I4 => \result1_carry__2_i_11_n_0\,
      I5 => \result1_carry__3_i_14_n_0\,
      O => \result1_carry__3_i_15_0\(1)
    );
\result1_carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAA6A6A66666A"
    )
        port map (
      I0 => \^q_reg[31]_0\(13),
      I1 => \result1_carry__1_i_15_n_0\,
      I2 => \result1_carry__2_i_11_n_0\,
      I3 => \^clk_2\,
      I4 => \^clk_7\,
      I5 => \result1_carry__3_i_14_n_0\,
      O => \result1_carry__3_i_15_0\(0)
    );
\result1_carry__3_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__3_i_2_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__3_i_17_n_0\,
      O => \result1_carry__3_i_9_n_0\
    );
\result1_carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \result1_carry__4_i_9_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__4_i_10_n_0\,
      I3 => \result1_carry__4_i_11_n_0\,
      I4 => \result1_carry__4_i_12_n_0\,
      I5 => \^clk_7\,
      O => \^q_reg[31]_0\(19)
    );
\result1_carry__4_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007400"
    )
        port map (
      I0 => \^q_reg[30]\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => SrcA(15),
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \^writedata[3]_inst_0_0\,
      O => \result1_carry__4_i_10_n_0\
    );
\result1_carry__4_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => SrcA(18),
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => SrcA(14),
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \^writedata[3]_inst_0_0\,
      O => \result1_carry__4_i_11_n_0\
    );
\result1_carry__4_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007400"
    )
        port map (
      I0 => \^q_reg[31]\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => SrcA(16),
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \^writedata[3]_inst_0_0\,
      O => \result1_carry__4_i_12_n_0\
    );
\result1_carry__4_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEBEEAAAAAAAA"
    )
        port map (
      I0 => \^q_reg[31]\,
      I1 => \^writedata[3]_inst_0_1\,
      I2 => \^clk_7\,
      I3 => \^clk_2\,
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \^writedata[4]_inst_0_1\,
      O => \result1_carry__4_i_13_n_0\
    );
\result1_carry__4_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__3_i_17_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__4_i_11_n_0\,
      O => \result1_carry__4_i_14_n_0\
    );
\result1_carry__4_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__3_i_18_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__4_i_9_n_0\,
      O => \result1_carry__4_i_15_n_0\
    );
\result1_carry__4_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^aluresult[30]_inst_0_i_6\,
      I1 => \^clk_2\,
      I2 => \^clk_7\,
      O => \result1_carry__4_i_16_n_0\
    );
\result1_carry__4_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800A8AA0800"
    )
        port map (
      I0 => \result1_carry__1_i_15_n_0\,
      I1 => Q(31),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => rd10(31),
      I5 => \addressM[0]_0\,
      O => \result1_carry__4_i_17_n_0\
    );
\result1_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result1_carry__1_i_15_n_0\,
      I1 => \result1_carry__4_i_13_n_0\,
      O => \^p_0_in\(2)
    );
\result1_carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__4_i_14_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__4_i_15_n_0\,
      O => \^q_reg[31]_0\(18)
    );
\result1_carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__4_i_15_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__3_i_9_n_0\,
      O => \^q_reg[31]_0\(17)
    );
\result1_carry__4_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9555AAAA"
    )
        port map (
      I0 => \^q_reg[31]_0\(19),
      I1 => \^writedata[4]_inst_0_1\,
      I2 => \result1_carry__4_i_16_n_0\,
      I3 => \^writedata[3]_inst_0_1\,
      I4 => \result1_carry__4_i_17_n_0\,
      O => \q_reg[31]_6\(3)
    );
\result1_carry__4_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \result1_carry__4_i_9_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__4_i_10_n_0\,
      I3 => \result1_carry__4_i_14_n_0\,
      I4 => \^clk_7\,
      I5 => \^p_0_in\(2),
      O => \q_reg[31]_6\(2)
    );
\result1_carry__4_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88BB8B87447B8B8"
    )
        port map (
      I0 => \result1_carry__4_i_14_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__4_i_15_n_0\,
      I3 => \result1_carry__4_i_13_n_0\,
      I4 => \result1_carry__1_i_15_n_0\,
      I5 => \result1_carry__3_i_15_n_0\,
      O => \q_reg[31]_6\(1)
    );
\result1_carry__4_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B847B8B8"
    )
        port map (
      I0 => \result1_carry__4_i_15_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__3_i_9_n_0\,
      I3 => \result1_carry__3_i_15_n_0\,
      I4 => \result1_carry__1_i_15_n_0\,
      O => \q_reg[31]_6\(0)
    );
\result1_carry__4_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => SrcA(17),
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => SrcA(13),
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \^writedata[3]_inst_0_0\,
      O => \result1_carry__4_i_9_n_0\
    );
\result1_carry__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__5_i_9_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__5_i_10_n_0\,
      O => \^q_reg[31]_0\(23)
    );
\result1_carry__5_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000B00"
    )
        port map (
      I0 => SrcA(17),
      I1 => \^clk_2\,
      I2 => \^writedata[3]_inst_0_0\,
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \^q_reg[30]\,
      I5 => \^aluresult[30]_inst_0_i_6\,
      O => \result1_carry__5_i_10_n_0\
    );
\result1_carry__5_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888B888888"
    )
        port map (
      I0 => \result1_carry__4_i_12_n_0\,
      I1 => \^clk_2\,
      I2 => \^writedata[3]_inst_0_0\,
      I3 => \^writedata[4]_inst_0_1\,
      I4 => SrcA(18),
      I5 => \^aluresult[30]_inst_0_i_6\,
      O => \result1_carry__5_i_11_n_0\
    );
\result1_carry__5_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888B888888"
    )
        port map (
      I0 => \result1_carry__4_i_10_n_0\,
      I1 => \^clk_2\,
      I2 => \^writedata[3]_inst_0_0\,
      I3 => \^writedata[4]_inst_0_1\,
      I4 => SrcA(17),
      I5 => \^aluresult[30]_inst_0_i_6\,
      O => \result1_carry__5_i_12_n_0\
    );
\result1_carry__5_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^clk_7\,
      I1 => \^clk_2\,
      O => \result1_carry__5_i_13_n_0\
    );
\result1_carry__5_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__5_i_10_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__5_i_11_n_0\,
      O => \^q_reg[31]_0\(22)
    );
\result1_carry__5_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__5_i_11_n_0\,
      I1 => \^clk_7\,
      I2 => \result1_carry__5_i_12_n_0\,
      O => \^q_reg[31]_0\(21)
    );
\result1_carry__5_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \result1_carry__4_i_11_n_0\,
      I1 => \^clk_2\,
      I2 => \result1_carry__4_i_12_n_0\,
      I3 => \result1_carry__5_i_12_n_0\,
      I4 => \^clk_7\,
      O => \^q_reg[31]_0\(20)
    );
\result1_carry__5_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555955AAAAAAAA"
    )
        port map (
      I0 => \^q_reg[31]_0\(23),
      I1 => \^writedata[4]_inst_0_1\,
      I2 => \^aluresult[30]_inst_0_i_6\,
      I3 => \result1_carry__5_i_13_n_0\,
      I4 => \^writedata[3]_inst_0_0\,
      I5 => \result1_carry__4_i_17_n_0\,
      O => \q_reg[31]_7\(3)
    );
\result1_carry__5_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5666565666566666"
    )
        port map (
      I0 => \^q_reg[31]_0\(22),
      I1 => \^p_0_in\(2),
      I2 => \result1_carry__4_i_17_n_0\,
      I3 => \^clk_7\,
      I4 => \^clk_2\,
      I5 => \^aluresult[30]_inst_0_i_6\,
      O => \q_reg[31]_7\(2)
    );
\result1_carry__5_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555AA9A6A6A"
    )
        port map (
      I0 => \^q_reg[31]_0\(21),
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \result1_carry__4_i_17_n_0\,
      I3 => \^clk_7\,
      I4 => \^clk_2\,
      I5 => \^p_0_in\(2),
      O => \q_reg[31]_7\(1)
    );
\result1_carry__5_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555AA9A6AAA"
    )
        port map (
      I0 => \^q_reg[31]_0\(20),
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \result1_carry__4_i_17_n_0\,
      I3 => \^clk_7\,
      I4 => \^clk_2\,
      I5 => \^p_0_in\(2),
      O => \q_reg[31]_7\(0)
    );
\result1_carry__5_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000B00"
    )
        port map (
      I0 => SrcA(18),
      I1 => \^clk_2\,
      I2 => \^writedata[3]_inst_0_0\,
      I3 => \^writedata[4]_inst_0_1\,
      I4 => \^q_reg[31]\,
      I5 => \^aluresult[30]_inst_0_i_6\,
      O => \result1_carry__5_i_9_n_0\
    );
\result1_carry__6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000B0800000000"
    )
        port map (
      I0 => \result1_carry__6_i_6_n_0\,
      I1 => \^clk_7\,
      I2 => \^aluresult[30]_inst_0_i_6\,
      I3 => \result1_carry__6_i_7_n_0\,
      I4 => \^writedata[3]_inst_0_0\,
      I5 => \^clk_2\,
      O => \^q_reg[31]_0\(25)
    );
\result1_carry__6_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => \^aluresult[30]_inst_0_i_6\,
      I1 => \result1_carry__6_i_8_n_0\,
      I2 => \^clk_2\,
      I3 => \^clk_7\,
      I4 => \result1_carry__5_i_9_n_0\,
      O => \^q_reg[31]_0\(24)
    );
\result1_carry__6_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAAAAA"
    )
        port map (
      I0 => \result1_carry__4_i_17_n_0\,
      I1 => \^clk_7\,
      I2 => \^aluresult[30]_inst_0_i_6\,
      I3 => \result1_carry__6_i_6_n_0\,
      I4 => \^writedata[3]_inst_0_0\,
      I5 => \^clk_2\,
      O => \q_reg[31]_2\(2)
    );
\result1_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65555555AAAAAAAA"
    )
        port map (
      I0 => \^q_reg[31]_0\(25),
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \^clk_2\,
      I3 => \^clk_7\,
      I4 => \result1_carry__6_i_9_n_0\,
      I5 => \result1_carry__4_i_17_n_0\,
      O => \q_reg[31]_2\(1)
    );
\result1_carry__6_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55559559AAAAAAAA"
    )
        port map (
      I0 => \^q_reg[31]_0\(24),
      I1 => \result1_carry__6_i_9_n_0\,
      I2 => \^clk_2\,
      I3 => \^clk_7\,
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \result1_carry__4_i_17_n_0\,
      O => \q_reg[31]_2\(0)
    );
\result1_carry__6_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800A8AA0800"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => Q(31),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => rd10(31),
      I5 => \addressM[0]_0\,
      O => \result1_carry__6_i_6_n_0\
    );
\result1_carry__6_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800A8AA0800"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => Q(30),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => \^clk_0\(30),
      I5 => \addressM[0]_0\,
      O => \result1_carry__6_i_7_n_0\
    );
\result1_carry__6_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4040000"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(30),
      I2 => \addressM[0]_1\,
      I3 => Q(30),
      I4 => \^writedata[4]_inst_0_1\,
      I5 => \^writedata[3]_inst_0_0\,
      O => \result1_carry__6_i_8_n_0\
    );
\result1_carry__6_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA8A0020"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \^clk_2\,
      I3 => \^clk_7\,
      I4 => \^writedata[3]_inst_0_1\,
      O => \result1_carry__6_i_9_n_0\
    );
result1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result1_carry__0\,
      I1 => \^clk_7\,
      I2 => result1_carry_i_10_n_0,
      O => \^q_reg[31]_0\(2)
    );
result1_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FF000A3A3A3A3"
    )
        port map (
      I0 => result1_carry_i_17_n_0,
      I1 => \result1_carry__0_i_3_1\,
      I2 => \^aluresult[30]_inst_0_i_6\,
      I3 => result1_carry_i_19_n_0,
      I4 => result1_carry_i_6_1,
      I5 => \^clk_2\,
      O => result1_carry_i_10_n_0
    );
result1_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFA3A3"
    )
        port map (
      I0 => result1_carry_i_6_2,
      I1 => result1_carry_i_6_0,
      I2 => \^aluresult[30]_inst_0_i_6\,
      I3 => \ALUResult[0]_INST_0_i_12_n_0\,
      I4 => \^clk_2\,
      O => result1_carry_i_11_n_0
    );
result1_carry_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFB8B8"
    )
        port map (
      I0 => result1_carry_i_19_n_0,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => result1_carry_i_6_1,
      I3 => \ALUResult[0]_INST_0_i_15_n_0\,
      I4 => \^clk_2\,
      O => result1_carry_i_12_n_0
    );
result1_carry_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => result1_carry_i_6_0,
      I1 => \^aluresult[30]_inst_0_i_6\,
      I2 => \q[31]_i_21_0\,
      I3 => \^clk_2\,
      I4 => \ALUResult[0]_INST_0_i_12_n_0\,
      O => result1_carry_i_13_n_0
    );
result1_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000DFDFDF00DF"
    )
        port map (
      I0 => \^writedata[4]_inst_0_0\,
      I1 => \^writedata[3]_inst_0_0\,
      I2 => SrcA(12),
      I3 => result1_carry_i_20_n_0,
      I4 => \^writedata[3]_inst_0_1\,
      I5 => result1_carry_i_21_n_0,
      O => \^q_reg[23]\
    );
result1_carry_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2020"
    )
        port map (
      I0 => SrcA(7),
      I1 => \^writedata[4]_inst_0_0\,
      I2 => \^writedata[3]_inst_0_0\,
      I3 => \q[31]_i_21_1\,
      I4 => \^writedata[3]_inst_0_1\,
      O => result1_carry_i_17_n_0
    );
result1_carry_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2020"
    )
        port map (
      I0 => SrcA(5),
      I1 => \^writedata[4]_inst_0_0\,
      I2 => \^writedata[3]_inst_0_0\,
      I3 => result1_carry_i_22_n_0,
      I4 => \^writedata[3]_inst_0_1\,
      O => result1_carry_i_19_n_0
    );
result1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^clk_7\,
      I2 => \^clk_2\,
      I3 => \^aluresult[30]_inst_0_i_6\,
      O => \ALUResult[2]_INST_0_i_1_2\(0)
    );
result1_carry_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_2_n_0\,
      I1 => \^writedata[4]_inst_0_1\,
      I2 => \^q_reg[31]\,
      I3 => \^writedata[4]_inst_0_0\,
      O => result1_carry_i_20_n_0
    );
result1_carry_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA202020002020"
    )
        port map (
      I0 => \^writedata[4]_inst_0_1\,
      I1 => \addressM[0]_0\,
      I2 => \^clk_0\(7),
      I3 => Instr(3),
      I4 => Instr(0),
      I5 => Q(7),
      O => result1_carry_i_21_n_0
    );
result1_carry_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFB00000BFBFFFF"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(8),
      I2 => \addressM[0]_1\,
      I3 => Q(8),
      I4 => \^writedata[4]_inst_0_1\,
      I5 => SrcA(13),
      O => result1_carry_i_22_n_0
    );
result1_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => result1_carry_i_11_n_0,
      I1 => \^clk_7\,
      I2 => result1_carry_i_12_n_0,
      O => \^q_reg[31]_0\(1)
    );
result1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => result1_carry_i_12_n_0,
      I1 => result1_carry_i_13_n_0,
      I2 => \^clk_7\,
      O => \^q_reg[31]_0\(0)
    );
result1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47B88BB847B8B8B8"
    )
        port map (
      I0 => \result1_carry__0\,
      I1 => \^clk_7\,
      I2 => result1_carry_i_10_n_0,
      I3 => \^p_0_in\(0),
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => \^clk_2\,
      O => \ALUResult[1]_INST_0_i_2_0\(3)
    );
result1_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3CA55ACCCCAAAA"
    )
        port map (
      I0 => result1_carry_i_11_n_0,
      I1 => result1_carry_i_10_n_0,
      I2 => \^aluresult[30]_inst_0_i_6\,
      I3 => \^clk_2\,
      I4 => \^clk_7\,
      I5 => \^p_0_in\(0),
      O => \ALUResult[1]_INST_0_i_2_0\(2)
    );
result1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B847B8B88BB8B8B8"
    )
        port map (
      I0 => result1_carry_i_11_n_0,
      I1 => \^clk_7\,
      I2 => result1_carry_i_12_n_0,
      I3 => \^clk_2\,
      I4 => \^p_0_in\(0),
      I5 => \^aluresult[30]_inst_0_i_6\,
      O => \ALUResult[1]_INST_0_i_2_0\(1)
    );
result1_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A353A3A3ACA3A3A3"
    )
        port map (
      I0 => result1_carry_i_12_n_0,
      I1 => result1_carry_i_13_n_0,
      I2 => \^clk_7\,
      I3 => \^clk_2\,
      I4 => \^p_0_in\(0),
      I5 => \^aluresult[30]_inst_0_i_6\,
      O => \ALUResult[1]_INST_0_i_2_0\(0)
    );
rf_reg_r1_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(17 downto 13),
      ADDRB(4 downto 0) => Instr(17 downto 13),
      ADDRC(4 downto 0) => Instr(17 downto 13),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1 downto 0) => \writeDataM[31]\(1 downto 0),
      DIB(1 downto 0) => \writeDataM[31]\(3 downto 2),
      DIC(1 downto 0) => \writeDataM[31]\(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^clk_0\(1 downto 0),
      DOB(1 downto 0) => \^clk_0\(3 downto 2),
      DOC(1 downto 0) => \^clk_0\(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_0_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => Instr(2),
      O => we3
    );
rf_reg_r1_0_31_0_5_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACAC00AC"
    )
        port map (
      I0 => Instr(8),
      I1 => Instr(21),
      I2 => \addressM[2]_0\,
      I3 => Instr(0),
      I4 => Instr(4),
      O => rf_reg_r1_0_31_6_11_i_7_0(1)
    );
rf_reg_r1_0_31_0_5_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACAC00AC"
    )
        port map (
      I0 => Instr(7),
      I1 => Instr(20),
      I2 => \addressM[2]_0\,
      I3 => Instr(0),
      I4 => Instr(4),
      O => rf_reg_r1_0_31_6_11_i_7_0(0)
    );
rf_reg_r1_0_31_0_5_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(4),
      I2 => Instr(0),
      O => rf_reg_r1_0_31_6_11_i_7_0(2)
    );
rf_reg_r1_0_31_0_5_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2B8E200B800B8"
    )
        port map (
      I0 => Instr(22),
      I1 => rf_reg_r1_0_31_0_5_i_7,
      I2 => Instr(9),
      I3 => Instr(0),
      I4 => Instr(1),
      I5 => Instr(4),
      O => y_carry_i_5
    );
rf_reg_r1_0_31_0_5_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => Instr(2),
      O => \^rf_reg_r1_0_31_0_5_i_8_0\
    );
rf_reg_r1_0_31_0_5_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"83"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => Instr(3),
      O => \^rf_reg_r1_0_31_0_5_i_9_0\
    );
rf_reg_r1_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(17 downto 13),
      ADDRB(4 downto 0) => Instr(17 downto 13),
      ADDRC(4 downto 0) => Instr(17 downto 13),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1) => wd3(13),
      DIA(0) => \writeDataM[31]\(12),
      DIB(1) => wd3(15),
      DIB(0) => \writeDataM[31]\(13),
      DIC(1) => wd3(17),
      DIC(0) => \writeDataM[31]\(14),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^clk_0\(13 downto 12),
      DOB(1 downto 0) => \^clk_0\(15 downto 14),
      DOC(1 downto 0) => \^clk_0\(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_12_17_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_12_17_i_7_n_0,
      I1 => rf_reg_r2_0_31_12_17_0,
      O => wd3(13),
      S => \^rf_reg_r1_0_31_0_5_i_8_0\
    );
rf_reg_r1_0_31_12_17_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A3A0FFFFA3A00000"
    )
        port map (
      I0 => ReadData(5),
      I1 => Instr(12),
      I2 => \^rf_reg_r1_0_31_6_11_i_13_0\,
      I3 => ReadData(0),
      I4 => \^rf_reg_r1_0_31_0_5_i_9_0\,
      I5 => \^q_reg[19]\(4),
      O => rf_reg_r1_0_31_12_17_i_11_n_0
    );
rf_reg_r1_0_31_12_17_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => \^readdatam[15]\,
      I1 => ReadData(6),
      I2 => Instr(11),
      I3 => \^rf_reg_r1_0_31_0_5_i_9_0\,
      I4 => \^q_reg[19]\(5),
      O => rf_reg_r1_0_31_12_17_i_15_n_0
    );
rf_reg_r1_0_31_12_17_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => Instr(12),
      I1 => ReadData(5),
      I2 => Instr(10),
      I3 => ReadData(0),
      I4 => Instr(11),
      O => \^readdatam[15]\
    );
rf_reg_r1_0_31_12_17_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_12_17_i_11_n_0,
      I1 => rf_reg_r2_0_31_12_17_1,
      O => wd3(15),
      S => \^rf_reg_r1_0_31_0_5_i_8_0\
    );
rf_reg_r1_0_31_12_17_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I1 => rf_reg_r2_0_31_12_17_2,
      O => wd3(17),
      S => \^rf_reg_r1_0_31_0_5_i_8_0\
    );
rf_reg_r1_0_31_12_17_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F404FFFFF4040000"
    )
        port map (
      I0 => Instr(12),
      I1 => ReadData(0),
      I2 => \^rf_reg_r1_0_31_6_11_i_13_0\,
      I3 => ReadData(4),
      I4 => \^rf_reg_r1_0_31_0_5_i_9_0\,
      I5 => \^q_reg[19]\(3),
      O => rf_reg_r1_0_31_12_17_i_7_n_0
    );
rf_reg_r1_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(17 downto 13),
      ADDRB(4 downto 0) => Instr(17 downto 13),
      ADDRC(4 downto 0) => Instr(17 downto 13),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1) => wd3(19),
      DIA(0) => \writeDataM[31]\(15),
      DIB(1 downto 0) => \writeDataM[31]\(17 downto 16),
      DIC(1 downto 0) => \writeDataM[31]\(19 downto 18),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^clk_0\(19 downto 18),
      DOB(1 downto 0) => \^clk_0\(21 downto 20),
      DOC(1 downto 0) => \^clk_0\(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_18_23_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_18_23_i_7_n_0,
      I1 => rf_reg_r2_0_31_18_23_0,
      O => wd3(19),
      S => \^rf_reg_r1_0_31_0_5_i_8_0\
    );
rf_reg_r1_0_31_18_23_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => \^readdatam[15]\,
      I1 => ReadData(7),
      I2 => Instr(11),
      I3 => \^rf_reg_r1_0_31_0_5_i_9_0\,
      I4 => \^q_reg[19]\(6),
      O => rf_reg_r1_0_31_18_23_i_7_n_0
    );
rf_reg_r1_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(17 downto 13),
      ADDRB(4 downto 0) => Instr(17 downto 13),
      ADDRC(4 downto 0) => Instr(17 downto 13),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1 downto 0) => \writeDataM[31]\(21 downto 20),
      DIB(1 downto 0) => \writeDataM[31]\(23 downto 22),
      DIC(1) => \writeDataM[31]\(24),
      DIC(0) => wd3(28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^clk_0\(25 downto 24),
      DOB(1 downto 0) => \^clk_0\(27 downto 26),
      DOC(1 downto 0) => \^clk_0\(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_24_29_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => \^readdatam[15]\,
      I1 => ReadData(8),
      I2 => Instr(11),
      I3 => \^rf_reg_r1_0_31_0_5_i_9_0\,
      I4 => \^q_reg[28]\,
      O => rf_reg_r1_0_31_24_29_i_17_n_0
    );
rf_reg_r1_0_31_24_29_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_31_24_29_i_17_n_0,
      I1 => rf_reg_r2_0_31_24_29_0,
      O => wd3(28),
      S => \^rf_reg_r1_0_31_0_5_i_8_0\
    );
rf_reg_r1_0_31_30_31: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(5),
      A1 => Instr(6),
      A2 => Instr(7),
      A3 => Instr(8),
      A4 => Instr(9),
      D => \writeDataM[31]\(25),
      DPO => \^clk_0\(30),
      DPRA0 => Instr(13),
      DPRA1 => Instr(14),
      DPRA2 => Instr(15),
      DPRA3 => Instr(16),
      DPRA4 => Instr(17),
      SPO => NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => we3
    );
\rf_reg_r1_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(5),
      A1 => Instr(6),
      A2 => Instr(7),
      A3 => Instr(8),
      A4 => Instr(9),
      D => \writeDataM[31]\(26),
      DPO => rd10(31),
      DPRA0 => Instr(13),
      DPRA1 => Instr(14),
      DPRA2 => Instr(15),
      DPRA3 => Instr(16),
      DPRA4 => Instr(17),
      SPO => \NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => we3
    );
\rf_reg_r1_0_31_30_31_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBB888B8"
    )
        port map (
      I0 => ReadData(9),
      I1 => Instr(11),
      I2 => ReadData(0),
      I3 => Instr(10),
      I4 => ReadData(5),
      I5 => Instr(12),
      O => \readDataM[31]\
    );
rf_reg_r1_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(17 downto 13),
      ADDRB(4 downto 0) => Instr(17 downto 13),
      ADDRC(4 downto 0) => Instr(17 downto 13),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1 downto 0) => \writeDataM[31]\(7 downto 6),
      DIB(1 downto 0) => \writeDataM[31]\(9 downto 8),
      DIC(1 downto 0) => \writeDataM[31]\(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^clk_0\(7 downto 6),
      DOB(1 downto 0) => \^clk_0\(9 downto 8),
      DOC(1 downto 0) => \^clk_0\(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_6_11_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F404FFFFF4040000"
    )
        port map (
      I0 => Instr(12),
      I1 => ReadData(0),
      I2 => \^rf_reg_r1_0_31_6_11_i_13_0\,
      I3 => ReadData(1),
      I4 => \^rf_reg_r1_0_31_0_5_i_9_0\,
      I5 => \^q_reg[19]\(0),
      O => \readDataM[7]\
    );
rf_reg_r1_0_31_6_11_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF40004"
    )
        port map (
      I0 => Instr(12),
      I1 => ReadData(0),
      I2 => Instr(11),
      I3 => Instr(10),
      I4 => ReadData(3),
      O => \readDataM[7]_1\
    );
rf_reg_r1_0_31_6_11_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Instr(11),
      I1 => Instr(10),
      O => \^rf_reg_r1_0_31_6_11_i_13_0\
    );
rf_reg_r1_0_31_6_11_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Instr(25),
      I1 => Instr(4),
      I2 => Instr(0),
      O => rf_reg_r1_0_31_6_11_i_7_0(4)
    );
rf_reg_r1_0_31_6_11_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Instr(24),
      I1 => Instr(4),
      I2 => Instr(0),
      O => rf_reg_r1_0_31_6_11_i_7_0(3)
    );
rf_reg_r1_0_31_6_11_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F404FFFFF4040000"
    )
        port map (
      I0 => Instr(12),
      I1 => ReadData(0),
      I2 => \^rf_reg_r1_0_31_6_11_i_13_0\,
      I3 => ReadData(2),
      I4 => \^rf_reg_r1_0_31_0_5_i_9_0\,
      I5 => \^q_reg[19]\(1),
      O => \readDataM[7]_0\
    );
rf_reg_r2_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(22 downto 18),
      ADDRB(4 downto 0) => Instr(22 downto 18),
      ADDRC(4 downto 0) => Instr(22 downto 18),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1 downto 0) => \writeDataM[31]\(1 downto 0),
      DIB(1 downto 0) => \writeDataM[31]\(3 downto 2),
      DIC(1 downto 0) => \writeDataM[31]\(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(1 downto 0),
      DOB(1 downto 0) => rd20(3 downto 2),
      DOC(1 downto 0) => rd20(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(22 downto 18),
      ADDRB(4 downto 0) => Instr(22 downto 18),
      ADDRC(4 downto 0) => Instr(22 downto 18),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1) => wd3(13),
      DIA(0) => \writeDataM[31]\(12),
      DIB(1) => wd3(15),
      DIB(0) => \writeDataM[31]\(13),
      DIC(1) => wd3(17),
      DIC(0) => \writeDataM[31]\(14),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(13 downto 12),
      DOB(1 downto 0) => rd20(15 downto 14),
      DOC(1 downto 0) => rd20(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(22 downto 18),
      ADDRB(4 downto 0) => Instr(22 downto 18),
      ADDRC(4 downto 0) => Instr(22 downto 18),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1) => wd3(19),
      DIA(0) => \writeDataM[31]\(15),
      DIB(1 downto 0) => \writeDataM[31]\(17 downto 16),
      DIC(1 downto 0) => \writeDataM[31]\(19 downto 18),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(19 downto 18),
      DOB(1 downto 0) => rd20(21 downto 20),
      DOC(1 downto 0) => rd20(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(22 downto 18),
      ADDRB(4 downto 0) => Instr(22 downto 18),
      ADDRC(4 downto 0) => Instr(22 downto 18),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1 downto 0) => \writeDataM[31]\(21 downto 20),
      DIB(1 downto 0) => \writeDataM[31]\(23 downto 22),
      DIC(1) => \writeDataM[31]\(24),
      DIC(0) => wd3(28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(25 downto 24),
      DOB(1 downto 0) => rd20(27 downto 26),
      DOC(1 downto 0) => rd20(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_30_31: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(5),
      A1 => Instr(6),
      A2 => Instr(7),
      A3 => Instr(8),
      A4 => Instr(9),
      D => \writeDataM[31]\(25),
      DPO => rd20(30),
      DPRA0 => Instr(18),
      DPRA1 => Instr(19),
      DPRA2 => Instr(20),
      DPRA3 => Instr(21),
      DPRA4 => Instr(22),
      SPO => NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => we3
    );
\rf_reg_r2_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(5),
      A1 => Instr(6),
      A2 => Instr(7),
      A3 => Instr(8),
      A4 => Instr(9),
      D => \writeDataM[31]\(26),
      DPO => rd20(31),
      DPRA0 => Instr(18),
      DPRA1 => Instr(19),
      DPRA2 => Instr(20),
      DPRA3 => Instr(21),
      DPRA4 => Instr(22),
      SPO => \NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(22 downto 18),
      ADDRB(4 downto 0) => Instr(22 downto 18),
      ADDRC(4 downto 0) => Instr(22 downto 18),
      ADDRD(4 downto 0) => Instr(9 downto 5),
      DIA(1 downto 0) => \writeDataM[31]\(7 downto 6),
      DIB(1 downto 0) => \writeDataM[31]\(9 downto 8),
      DIC(1 downto 0) => \writeDataM[31]\(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(7 downto 6),
      DOB(1 downto 0) => rd20(9 downto 8),
      DOC(1 downto 0) => rd20(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
\sum_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444044"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(7),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Q(7),
      O => \q_reg[13]_0\(6)
    );
\sum_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444044"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(6),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Q(6),
      O => \q_reg[13]_0\(5)
    );
\sum_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444044"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(5),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Q(5),
      O => \q_reg[13]_0\(4)
    );
\sum_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444044"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(4),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Q(4),
      O => \q_reg[13]_0\(3)
    );
\sum_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4040BFB0BFBF404"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(7),
      I2 => \addressM[0]_1\,
      I3 => Q(7),
      I4 => \^clk_5\,
      I5 => ALUControl(0),
      O => \q_reg[7]_2\(3)
    );
\sum_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4040BFB0BFBF404"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(6),
      I2 => \addressM[0]_1\,
      I3 => Q(6),
      I4 => \^clk_4\,
      I5 => ALUControl(0),
      O => \q_reg[7]_2\(2)
    );
\sum_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4040BFB0BFBF404"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(5),
      I2 => \addressM[0]_1\,
      I3 => Q(5),
      I4 => \^clk_3\,
      I5 => ALUControl(0),
      O => \q_reg[7]_2\(1)
    );
\sum_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(4),
      I2 => \addressM[0]_1\,
      I3 => Q(4),
      I4 => \^writedata[4]_inst_0_1\,
      I5 => ALUControl(0),
      O => \q_reg[7]_2\(0)
    );
\sum_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB80000FFB8FFFF"
    )
        port map (
      I0 => \addressM[4]_4\,
      I1 => \addressM[4]_3\,
      I2 => \addressM[4]_2\,
      I3 => \addressM[4]_1\,
      I4 => \addressM[14]\,
      I5 => \^writedata\(4),
      O => \^writedata[4]_inst_0_1\
    );
\sum_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444044"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(11),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Q(11),
      O => \q_reg[13]_0\(8)
    );
\sum_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444044"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(9),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Q(9),
      O => \q_reg[13]_0\(7)
    );
\sum_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4040BFB0BFBF404"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(11),
      I2 => \addressM[0]_1\,
      I3 => Q(11),
      I4 => \^clk_9\,
      I5 => ALUControl(0),
      O => \q_reg[11]\(3)
    );
\sum_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4040BFB0BFBF404"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(10),
      I2 => \addressM[0]_1\,
      I3 => Q(10),
      I4 => \^clk_23\,
      I5 => ALUControl(0),
      O => \q_reg[11]\(2)
    );
\sum_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4040BFB0BFBF404"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(9),
      I2 => \addressM[0]_1\,
      I3 => Q(9),
      I4 => \^clk_8\,
      I5 => ALUControl(0),
      O => \q_reg[11]\(1)
    );
\sum_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(8),
      I2 => \addressM[0]_1\,
      I3 => Q(8),
      I4 => \^clk_6\,
      I5 => ALUControl(0),
      O => \q_reg[11]\(0)
    );
\sum_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444044"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(13),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Q(13),
      O => \q_reg[13]_0\(9)
    );
\sum_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B87747774788B8"
    )
        port map (
      I0 => Q(15),
      I1 => \addressM[0]_1\,
      I2 => \^clk_0\(15),
      I3 => \addressM[0]_0\,
      I4 => \ALUResult[15]_INST_0_i_1_n_0\,
      I5 => ALUControl(0),
      O => \q_reg[15]\(3)
    );
\sum_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(14),
      I2 => \addressM[0]_1\,
      I3 => Q(14),
      I4 => \^clk_21\,
      I5 => ALUControl(0),
      O => \q_reg[15]\(2)
    );
\sum_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4040BFB0BFBF404"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(13),
      I2 => \addressM[0]_1\,
      I3 => Q(13),
      I4 => \^clk_11\,
      I5 => ALUControl(0),
      O => \q_reg[15]\(1)
    );
\sum_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(12),
      I2 => \addressM[0]_1\,
      I3 => Q(12),
      I4 => \^clk_10\,
      I5 => ALUControl(0),
      O => \q_reg[15]\(0)
    );
\sum_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4040BFB0BFBF404"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(19),
      I2 => \addressM[0]_1\,
      I3 => Q(19),
      I4 => \^clk_14\,
      I5 => ALUControl(0),
      O => \q_reg[19]_0\(3)
    );
\sum_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4040BFB0BFBF404"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(18),
      I2 => \addressM[0]_1\,
      I3 => Q(18),
      I4 => \^clk_24\,
      I5 => ALUControl(0),
      O => \q_reg[19]_0\(2)
    );
\sum_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4040BFB0BFBF404"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(17),
      I2 => \addressM[0]_1\,
      I3 => Q(17),
      I4 => \^clk_13\,
      I5 => ALUControl(0),
      O => \q_reg[19]_0\(1)
    );
\sum_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4040BFB0BFBF404"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(16),
      I2 => \addressM[0]_1\,
      I3 => Q(16),
      I4 => \^clk_12\,
      I5 => ALUControl(0),
      O => \q_reg[19]_0\(0)
    );
\sum_carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(23),
      I2 => \addressM[0]_1\,
      I3 => Q(23),
      I4 => \^clk_28\,
      I5 => ALUControl(0),
      O => \q_reg[23]_0\(3)
    );
\sum_carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(22),
      I2 => \addressM[0]_1\,
      I3 => Q(22),
      I4 => \^clk_27\,
      I5 => ALUControl(0),
      O => \q_reg[23]_0\(2)
    );
\sum_carry__4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(21),
      I2 => \addressM[0]_1\,
      I3 => Q(21),
      I4 => \^clk_26\,
      I5 => ALUControl(0),
      O => \q_reg[23]_0\(1)
    );
\sum_carry__4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(20),
      I2 => \addressM[0]_1\,
      I3 => Q(20),
      I4 => \^clk_25\,
      I5 => ALUControl(0),
      O => \q_reg[23]_0\(0)
    );
\sum_carry__5_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(27),
      I2 => \addressM[0]_1\,
      I3 => Q(27),
      I4 => \^clk_16\,
      I5 => ALUControl(0),
      O => \q_reg[27]\(3)
    );
\sum_carry__5_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(26),
      I2 => \addressM[0]_1\,
      I3 => Q(26),
      I4 => \^clk_17\,
      I5 => ALUControl(0),
      O => \q_reg[27]\(2)
    );
\sum_carry__5_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(25),
      I2 => \addressM[0]_1\,
      I3 => Q(25),
      I4 => \^clk_18\,
      I5 => ALUControl(0),
      O => \q_reg[27]\(1)
    );
\sum_carry__5_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(24),
      I2 => \addressM[0]_1\,
      I3 => Q(24),
      I4 => \^clk_19\,
      I5 => ALUControl(0),
      O => \q_reg[27]\(0)
    );
\sum_carry__6_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6A656A95959A95"
    )
        port map (
      I0 => ALUControl(0),
      I1 => Instr(29),
      I2 => \addressM[14]\,
      I3 => rd20(31),
      I4 => \writeDataM[15]\,
      I5 => \^q_reg[31]\,
      O => clk_1(3)
    );
\sum_carry__6_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"774788B888B87747"
    )
        port map (
      I0 => Q(30),
      I1 => \addressM[0]_1\,
      I2 => \^clk_0\(30),
      I3 => \addressM[0]_0\,
      I4 => \^clk_22\,
      I5 => ALUControl(0),
      O => clk_1(2)
    );
\sum_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(29),
      I2 => \addressM[0]_1\,
      I3 => Q(29),
      I4 => \^clk_29\,
      I5 => ALUControl(0),
      O => clk_1(1)
    );
\sum_carry__6_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(28),
      I2 => \addressM[0]_1\,
      I3 => Q(28),
      I4 => \^clk_15\,
      I5 => ALUControl(0),
      O => clk_1(0)
    );
sum_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ALUControl(0),
      I1 => \^clk_7\,
      O => \ALUResult[31]_INST_0_i_10_0\
    );
sum_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444044"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(3),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Q(3),
      O => \q_reg[13]_0\(2)
    );
sum_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444044"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(1),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Q(1),
      O => \q_reg[13]_0\(1)
    );
sum_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444044"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(0),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Q(0),
      O => \q_reg[13]_0\(0)
    );
sum_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4040BFB0BFBF404"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(3),
      I2 => \addressM[0]_1\,
      I3 => Q(3),
      I4 => \^writedata[3]_inst_0_0\,
      I5 => ALUControl(0),
      O => S(3)
    );
sum_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4040BFB0BFBF404"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(2),
      I2 => \addressM[0]_1\,
      I3 => Q(2),
      I4 => \^aluresult[30]_inst_0_i_6\,
      I5 => ALUControl(0),
      O => S(2)
    );
sum_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(1),
      I2 => \addressM[0]_1\,
      I3 => Q(1),
      I4 => \^clk_2\,
      I5 => ALUControl(0),
      O => S(1)
    );
sum_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0BBBFBB4F444044"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \^clk_0\(0),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Q(0),
      I5 => ALUControl(0),
      O => S(0)
    );
\w_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F110"
    )
        port map (
      I0 => \^clk_21\,
      I1 => SrcA(4),
      I2 => \ALUResult[15]_INST_0_i_1_n_0\,
      I3 => \ALUResult[15]_INST_0_i_2_n_0\,
      O => \q_reg[14]_0\(2)
    );
\w_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65AA656565556565"
    )
        port map (
      I0 => \^clk_11\,
      I1 => \addressM[0]_0\,
      I2 => \^clk_0\(13),
      I3 => Instr(3),
      I4 => Instr(0),
      I5 => Q(13),
      O => \w_carry__0_i_10_n_0\
    );
\w_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65AA656565556565"
    )
        port map (
      I0 => \^clk_9\,
      I1 => \addressM[0]_0\,
      I2 => \^clk_0\(11),
      I3 => Instr(3),
      I4 => Instr(0),
      I5 => Q(11),
      O => \w_carry__0_i_11_n_0\
    );
\w_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F110"
    )
        port map (
      I0 => \^clk_10\,
      I1 => SrcA(3),
      I2 => \^clk_11\,
      I3 => \addressM[13]\,
      O => \q_reg[14]_0\(1)
    );
\w_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F110"
    )
        port map (
      I0 => \^clk_6\,
      I1 => SrcA(1),
      I2 => \^clk_8\,
      I3 => \addressM[9]\,
      O => \q_reg[14]_0\(0)
    );
\w_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A202A80808A80"
    )
        port map (
      I0 => \w_carry__0_i_9_n_0\,
      I1 => Q(14),
      I2 => \addressM[0]_1\,
      I3 => \^clk_0\(14),
      I4 => \addressM[0]_0\,
      I5 => \^clk_21\,
      O => \q_reg[14]\(2)
    );
\w_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A202A80808A80"
    )
        port map (
      I0 => \w_carry__0_i_10_n_0\,
      I1 => Q(12),
      I2 => \addressM[0]_1\,
      I3 => \^clk_0\(12),
      I4 => \addressM[0]_0\,
      I5 => \^clk_10\,
      O => \q_reg[14]\(1)
    );
\w_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808A802A2A202A"
    )
        port map (
      I0 => \w_carry__0_i_11_n_0\,
      I1 => Q(10),
      I2 => \addressM[0]_1\,
      I3 => \^clk_0\(10),
      I4 => \addressM[0]_0\,
      I5 => \^clk_23\,
      O => \q_reg[14]\(0)
    );
\w_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59555955A9AA5955"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_1_n_0\,
      I1 => Q(15),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => \^clk_0\(15),
      I5 => \addressM[0]_0\,
      O => \w_carry__0_i_9_n_0\
    );
\w_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"011F"
    )
        port map (
      I0 => \^clk_27\,
      I1 => SrcA(11),
      I2 => \^clk_28\,
      I3 => SrcA(12),
      O => \q_reg[22]\(1)
    );
\w_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"011F"
    )
        port map (
      I0 => \^clk_25\,
      I1 => SrcA(9),
      I2 => \^clk_26\,
      I3 => SrcA(10),
      O => \q_reg[22]\(0)
    );
\w_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q_reg[31]\,
      I1 => \^clk_20\,
      I2 => \^q_reg[30]\,
      I3 => \^clk_22\,
      O => \q_reg[31]_3\(3)
    );
\w_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"011F"
    )
        port map (
      I0 => \^clk_15\,
      I1 => SrcA(17),
      I2 => \^clk_29\,
      I3 => SrcA(18),
      O => \q_reg[31]_3\(2)
    );
\w_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"011F"
    )
        port map (
      I0 => \^clk_17\,
      I1 => SrcA(15),
      I2 => \^clk_16\,
      I3 => SrcA(16),
      O => \q_reg[31]_3\(1)
    );
\w_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"011F"
    )
        port map (
      I0 => \^clk_19\,
      I1 => SrcA(13),
      I2 => \^clk_18\,
      I3 => SrcA(14),
      O => \q_reg[31]_3\(0)
    );
\w_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0045554555100010"
    )
        port map (
      I0 => \^q_reg[31]_4\,
      I1 => \addressM[0]_0\,
      I2 => \^clk_0\(30),
      I3 => \addressM[0]_1\,
      I4 => Q(30),
      I5 => \^clk_22\,
      O => \q_reg[30]_0\(0)
    );
w_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \^clk_4\,
      I1 => \addressM[6]\,
      I2 => \^clk_5\,
      I3 => \addressM[7]\,
      O => DI(0)
    );
w_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB0BFBFB04F40404"
    )
        port map (
      I0 => \writeDataM[15]\,
      I1 => rd20(7),
      I2 => \addressM[14]\,
      I3 => \addressM[4]_1\,
      I4 => Instr(25),
      I5 => \addressM[7]\,
      O => w_carry_i_10_n_0
    );
w_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04F40404FB0BFBFB"
    )
        port map (
      I0 => \writeDataM[15]\,
      I1 => rd20(5),
      I2 => \addressM[14]\,
      I3 => \addressM[4]_1\,
      I4 => Instr(23),
      I5 => \addressM[5]\,
      O => w_carry_i_11_n_0
    );
w_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808A802A2A202A"
    )
        port map (
      I0 => w_carry_i_10_n_0,
      I1 => Q(6),
      I2 => \addressM[0]_1\,
      I3 => \^clk_0\(6),
      I4 => \addressM[0]_0\,
      I5 => \^clk_4\,
      O => \q_reg[6]_1\(1)
    );
w_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515101540404540"
    )
        port map (
      I0 => w_carry_i_11_n_0,
      I1 => Q(4),
      I2 => \addressM[0]_1\,
      I3 => \^clk_0\(4),
      I4 => \addressM[0]_0\,
      I5 => \^writedata[4]_inst_0_1\,
      O => \q_reg[6]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUResult : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    Instr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ReadData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PCReady : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
  signal ALUControl : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aluresult\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SrcA : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal alu_n_100 : STD_LOGIC;
  signal alu_n_40 : STD_LOGIC;
  signal alu_n_47 : STD_LOGIC;
  signal alu_n_48 : STD_LOGIC;
  signal alu_n_49 : STD_LOGIC;
  signal alu_n_50 : STD_LOGIC;
  signal alu_n_51 : STD_LOGIC;
  signal alu_n_52 : STD_LOGIC;
  signal alu_n_53 : STD_LOGIC;
  signal alu_n_58 : STD_LOGIC;
  signal alu_n_59 : STD_LOGIC;
  signal alu_n_60 : STD_LOGIC;
  signal alu_n_61 : STD_LOGIC;
  signal alu_n_62 : STD_LOGIC;
  signal alu_n_63 : STD_LOGIC;
  signal alu_n_64 : STD_LOGIC;
  signal alu_n_65 : STD_LOGIC;
  signal alu_n_66 : STD_LOGIC;
  signal alu_n_67 : STD_LOGIC;
  signal alu_n_68 : STD_LOGIC;
  signal alu_n_69 : STD_LOGIC;
  signal alu_n_70 : STD_LOGIC;
  signal alu_n_71 : STD_LOGIC;
  signal alu_n_72 : STD_LOGIC;
  signal alu_n_73 : STD_LOGIC;
  signal alu_n_74 : STD_LOGIC;
  signal alu_n_75 : STD_LOGIC;
  signal alu_n_76 : STD_LOGIC;
  signal alu_n_77 : STD_LOGIC;
  signal alu_n_78 : STD_LOGIC;
  signal alu_n_79 : STD_LOGIC;
  signal alu_n_80 : STD_LOGIC;
  signal alu_n_81 : STD_LOGIC;
  signal alu_n_82 : STD_LOGIC;
  signal alu_n_84 : STD_LOGIC;
  signal alu_n_85 : STD_LOGIC;
  signal alu_n_86 : STD_LOGIC;
  signal alu_n_87 : STD_LOGIC;
  signal alu_n_88 : STD_LOGIC;
  signal alu_n_89 : STD_LOGIC;
  signal alu_n_90 : STD_LOGIC;
  signal alu_n_91 : STD_LOGIC;
  signal alu_n_92 : STD_LOGIC;
  signal alu_n_93 : STD_LOGIC;
  signal alu_n_94 : STD_LOGIC;
  signal alu_n_95 : STD_LOGIC;
  signal alu_n_96 : STD_LOGIC;
  signal alu_n_97 : STD_LOGIC;
  signal alu_n_98 : STD_LOGIC;
  signal alu_n_99 : STD_LOGIC;
  signal d1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal d2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal data0 : STD_LOGIC_VECTOR ( 29 downto 1 );
  signal data6 : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal \ext/immext\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 23 downto 7 );
  signal pcadd4_n_18 : STD_LOGIC;
  signal pcadd4_n_19 : STD_LOGIC;
  signal pcadd4_n_20 : STD_LOGIC;
  signal pcadd4_n_21 : STD_LOGIC;
  signal pcadd4_n_22 : STD_LOGIC;
  signal pcadd4_n_23 : STD_LOGIC;
  signal pcadd4_n_24 : STD_LOGIC;
  signal pcadd4_n_25 : STD_LOGIC;
  signal pcadd4_n_26 : STD_LOGIC;
  signal pcadd4_n_27 : STD_LOGIC;
  signal pcadd4_n_28 : STD_LOGIC;
  signal pcadd4_n_29 : STD_LOGIC;
  signal pcadd4_n_30 : STD_LOGIC;
  signal pcadd4_n_42 : STD_LOGIC;
  signal pcadd4_n_43 : STD_LOGIC;
  signal pcadd4_n_44 : STD_LOGIC;
  signal pcadd4_n_45 : STD_LOGIC;
  signal pcadd4_n_46 : STD_LOGIC;
  signal pcadd4_n_47 : STD_LOGIC;
  signal pcadd4_n_48 : STD_LOGIC;
  signal pcadd4_n_49 : STD_LOGIC;
  signal pcadd4_n_50 : STD_LOGIC;
  signal pcadd4_n_51 : STD_LOGIC;
  signal pcadd4_n_52 : STD_LOGIC;
  signal pcadd4_n_53 : STD_LOGIC;
  signal pcadd4_n_54 : STD_LOGIC;
  signal pcadd4_n_55 : STD_LOGIC;
  signal pcadd4_n_56 : STD_LOGIC;
  signal pcadd4_n_57 : STD_LOGIC;
  signal pcadd4_n_58 : STD_LOGIC;
  signal pcreg_n_0 : STD_LOGIC;
  signal pcreg_n_100 : STD_LOGIC;
  signal pcreg_n_101 : STD_LOGIC;
  signal pcreg_n_102 : STD_LOGIC;
  signal pcreg_n_103 : STD_LOGIC;
  signal pcreg_n_104 : STD_LOGIC;
  signal pcreg_n_105 : STD_LOGIC;
  signal pcreg_n_106 : STD_LOGIC;
  signal pcreg_n_107 : STD_LOGIC;
  signal pcreg_n_108 : STD_LOGIC;
  signal pcreg_n_109 : STD_LOGIC;
  signal pcreg_n_111 : STD_LOGIC;
  signal pcreg_n_112 : STD_LOGIC;
  signal pcreg_n_113 : STD_LOGIC;
  signal pcreg_n_114 : STD_LOGIC;
  signal pcreg_n_115 : STD_LOGIC;
  signal pcreg_n_116 : STD_LOGIC;
  signal pcreg_n_117 : STD_LOGIC;
  signal pcreg_n_118 : STD_LOGIC;
  signal pcreg_n_119 : STD_LOGIC;
  signal pcreg_n_120 : STD_LOGIC;
  signal pcreg_n_121 : STD_LOGIC;
  signal pcreg_n_122 : STD_LOGIC;
  signal pcreg_n_123 : STD_LOGIC;
  signal pcreg_n_124 : STD_LOGIC;
  signal pcreg_n_125 : STD_LOGIC;
  signal pcreg_n_126 : STD_LOGIC;
  signal pcreg_n_127 : STD_LOGIC;
  signal pcreg_n_128 : STD_LOGIC;
  signal pcreg_n_129 : STD_LOGIC;
  signal pcreg_n_130 : STD_LOGIC;
  signal pcreg_n_131 : STD_LOGIC;
  signal pcreg_n_132 : STD_LOGIC;
  signal pcreg_n_133 : STD_LOGIC;
  signal pcreg_n_134 : STD_LOGIC;
  signal pcreg_n_135 : STD_LOGIC;
  signal pcreg_n_136 : STD_LOGIC;
  signal pcreg_n_137 : STD_LOGIC;
  signal pcreg_n_138 : STD_LOGIC;
  signal pcreg_n_139 : STD_LOGIC;
  signal pcreg_n_140 : STD_LOGIC;
  signal pcreg_n_141 : STD_LOGIC;
  signal pcreg_n_142 : STD_LOGIC;
  signal pcreg_n_143 : STD_LOGIC;
  signal pcreg_n_144 : STD_LOGIC;
  signal pcreg_n_145 : STD_LOGIC;
  signal pcreg_n_146 : STD_LOGIC;
  signal pcreg_n_147 : STD_LOGIC;
  signal pcreg_n_148 : STD_LOGIC;
  signal pcreg_n_149 : STD_LOGIC;
  signal pcreg_n_150 : STD_LOGIC;
  signal pcreg_n_151 : STD_LOGIC;
  signal pcreg_n_152 : STD_LOGIC;
  signal pcreg_n_153 : STD_LOGIC;
  signal pcreg_n_154 : STD_LOGIC;
  signal pcreg_n_155 : STD_LOGIC;
  signal pcreg_n_156 : STD_LOGIC;
  signal pcreg_n_157 : STD_LOGIC;
  signal pcreg_n_158 : STD_LOGIC;
  signal pcreg_n_159 : STD_LOGIC;
  signal pcreg_n_160 : STD_LOGIC;
  signal pcreg_n_161 : STD_LOGIC;
  signal pcreg_n_162 : STD_LOGIC;
  signal pcreg_n_163 : STD_LOGIC;
  signal pcreg_n_164 : STD_LOGIC;
  signal pcreg_n_165 : STD_LOGIC;
  signal pcreg_n_166 : STD_LOGIC;
  signal pcreg_n_167 : STD_LOGIC;
  signal pcreg_n_168 : STD_LOGIC;
  signal pcreg_n_169 : STD_LOGIC;
  signal pcreg_n_170 : STD_LOGIC;
  signal pcreg_n_171 : STD_LOGIC;
  signal pcreg_n_172 : STD_LOGIC;
  signal pcreg_n_173 : STD_LOGIC;
  signal pcreg_n_174 : STD_LOGIC;
  signal pcreg_n_175 : STD_LOGIC;
  signal pcreg_n_176 : STD_LOGIC;
  signal pcreg_n_177 : STD_LOGIC;
  signal pcreg_n_178 : STD_LOGIC;
  signal pcreg_n_179 : STD_LOGIC;
  signal pcreg_n_180 : STD_LOGIC;
  signal pcreg_n_181 : STD_LOGIC;
  signal pcreg_n_182 : STD_LOGIC;
  signal pcreg_n_183 : STD_LOGIC;
  signal pcreg_n_184 : STD_LOGIC;
  signal pcreg_n_185 : STD_LOGIC;
  signal pcreg_n_186 : STD_LOGIC;
  signal pcreg_n_187 : STD_LOGIC;
  signal pcreg_n_188 : STD_LOGIC;
  signal pcreg_n_189 : STD_LOGIC;
  signal pcreg_n_190 : STD_LOGIC;
  signal pcreg_n_191 : STD_LOGIC;
  signal pcreg_n_192 : STD_LOGIC;
  signal pcreg_n_193 : STD_LOGIC;
  signal pcreg_n_194 : STD_LOGIC;
  signal pcreg_n_195 : STD_LOGIC;
  signal pcreg_n_196 : STD_LOGIC;
  signal pcreg_n_197 : STD_LOGIC;
  signal pcreg_n_198 : STD_LOGIC;
  signal pcreg_n_199 : STD_LOGIC;
  signal pcreg_n_200 : STD_LOGIC;
  signal pcreg_n_201 : STD_LOGIC;
  signal pcreg_n_202 : STD_LOGIC;
  signal pcreg_n_45 : STD_LOGIC;
  signal pcreg_n_47 : STD_LOGIC;
  signal pcreg_n_69 : STD_LOGIC;
  signal pcreg_n_70 : STD_LOGIC;
  signal pcreg_n_81 : STD_LOGIC;
  signal pcreg_n_82 : STD_LOGIC;
  signal pcreg_n_83 : STD_LOGIC;
  signal pcreg_n_84 : STD_LOGIC;
  signal pcreg_n_85 : STD_LOGIC;
  signal pcreg_n_86 : STD_LOGIC;
  signal pcreg_n_87 : STD_LOGIC;
  signal pcreg_n_88 : STD_LOGIC;
  signal pcreg_n_89 : STD_LOGIC;
  signal pcreg_n_90 : STD_LOGIC;
  signal pcreg_n_91 : STD_LOGIC;
  signal pcreg_n_92 : STD_LOGIC;
  signal pcreg_n_93 : STD_LOGIC;
  signal pcreg_n_94 : STD_LOGIC;
  signal pcreg_n_95 : STD_LOGIC;
  signal pcreg_n_96 : STD_LOGIC;
  signal pcreg_n_97 : STD_LOGIC;
  signal pcreg_n_98 : STD_LOGIC;
  signal pcreg_n_99 : STD_LOGIC;
  signal rd10 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal result2 : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal rf_n_104 : STD_LOGIC;
  signal rf_n_105 : STD_LOGIC;
  signal rf_n_106 : STD_LOGIC;
  signal rf_n_107 : STD_LOGIC;
  signal rf_n_108 : STD_LOGIC;
  signal rf_n_109 : STD_LOGIC;
  signal rf_n_110 : STD_LOGIC;
  signal rf_n_111 : STD_LOGIC;
  signal rf_n_112 : STD_LOGIC;
  signal rf_n_113 : STD_LOGIC;
  signal rf_n_114 : STD_LOGIC;
  signal rf_n_115 : STD_LOGIC;
  signal rf_n_116 : STD_LOGIC;
  signal rf_n_117 : STD_LOGIC;
  signal rf_n_118 : STD_LOGIC;
  signal rf_n_119 : STD_LOGIC;
  signal rf_n_120 : STD_LOGIC;
  signal rf_n_121 : STD_LOGIC;
  signal rf_n_122 : STD_LOGIC;
  signal rf_n_123 : STD_LOGIC;
  signal rf_n_124 : STD_LOGIC;
  signal rf_n_125 : STD_LOGIC;
  signal rf_n_126 : STD_LOGIC;
  signal rf_n_127 : STD_LOGIC;
  signal rf_n_128 : STD_LOGIC;
  signal rf_n_129 : STD_LOGIC;
  signal rf_n_130 : STD_LOGIC;
  signal rf_n_131 : STD_LOGIC;
  signal rf_n_132 : STD_LOGIC;
  signal rf_n_133 : STD_LOGIC;
  signal rf_n_134 : STD_LOGIC;
  signal rf_n_138 : STD_LOGIC;
  signal rf_n_139 : STD_LOGIC;
  signal rf_n_140 : STD_LOGIC;
  signal rf_n_141 : STD_LOGIC;
  signal rf_n_174 : STD_LOGIC;
  signal rf_n_175 : STD_LOGIC;
  signal rf_n_176 : STD_LOGIC;
  signal rf_n_177 : STD_LOGIC;
  signal rf_n_178 : STD_LOGIC;
  signal rf_n_179 : STD_LOGIC;
  signal rf_n_180 : STD_LOGIC;
  signal rf_n_181 : STD_LOGIC;
  signal rf_n_182 : STD_LOGIC;
  signal rf_n_183 : STD_LOGIC;
  signal rf_n_184 : STD_LOGIC;
  signal rf_n_185 : STD_LOGIC;
  signal rf_n_186 : STD_LOGIC;
  signal rf_n_187 : STD_LOGIC;
  signal rf_n_188 : STD_LOGIC;
  signal rf_n_189 : STD_LOGIC;
  signal rf_n_190 : STD_LOGIC;
  signal rf_n_191 : STD_LOGIC;
  signal rf_n_192 : STD_LOGIC;
  signal rf_n_193 : STD_LOGIC;
  signal rf_n_194 : STD_LOGIC;
  signal rf_n_195 : STD_LOGIC;
  signal rf_n_196 : STD_LOGIC;
  signal rf_n_197 : STD_LOGIC;
  signal rf_n_198 : STD_LOGIC;
  signal rf_n_199 : STD_LOGIC;
  signal rf_n_200 : STD_LOGIC;
  signal rf_n_201 : STD_LOGIC;
  signal rf_n_202 : STD_LOGIC;
  signal rf_n_203 : STD_LOGIC;
  signal rf_n_204 : STD_LOGIC;
  signal rf_n_205 : STD_LOGIC;
  signal rf_n_206 : STD_LOGIC;
  signal rf_n_207 : STD_LOGIC;
  signal rf_n_223 : STD_LOGIC;
  signal rf_n_224 : STD_LOGIC;
  signal rf_n_225 : STD_LOGIC;
  signal rf_n_226 : STD_LOGIC;
  signal rf_n_227 : STD_LOGIC;
  signal rf_n_228 : STD_LOGIC;
  signal rf_n_229 : STD_LOGIC;
  signal rf_n_230 : STD_LOGIC;
  signal rf_n_231 : STD_LOGIC;
  signal rf_n_232 : STD_LOGIC;
  signal rf_n_233 : STD_LOGIC;
  signal rf_n_234 : STD_LOGIC;
  signal rf_n_235 : STD_LOGIC;
  signal rf_n_236 : STD_LOGIC;
  signal rf_n_237 : STD_LOGIC;
  signal rf_n_238 : STD_LOGIC;
  signal rf_n_239 : STD_LOGIC;
  signal rf_n_240 : STD_LOGIC;
  signal rf_n_241 : STD_LOGIC;
  signal rf_n_242 : STD_LOGIC;
  signal rf_n_243 : STD_LOGIC;
  signal rf_n_244 : STD_LOGIC;
  signal rf_n_245 : STD_LOGIC;
  signal rf_n_246 : STD_LOGIC;
  signal rf_n_247 : STD_LOGIC;
  signal rf_n_248 : STD_LOGIC;
  signal rf_n_249 : STD_LOGIC;
  signal rf_n_250 : STD_LOGIC;
  signal rf_n_251 : STD_LOGIC;
  signal rf_n_252 : STD_LOGIC;
  signal rf_n_253 : STD_LOGIC;
  signal rf_n_254 : STD_LOGIC;
  signal rf_n_255 : STD_LOGIC;
  signal rf_n_256 : STD_LOGIC;
  signal rf_n_257 : STD_LOGIC;
  signal rf_n_258 : STD_LOGIC;
  signal rf_n_259 : STD_LOGIC;
  signal rf_n_260 : STD_LOGIC;
  signal rf_n_261 : STD_LOGIC;
  signal rf_n_262 : STD_LOGIC;
  signal rf_n_263 : STD_LOGIC;
  signal rf_n_264 : STD_LOGIC;
  signal rf_n_265 : STD_LOGIC;
  signal rf_n_266 : STD_LOGIC;
  signal rf_n_267 : STD_LOGIC;
  signal rf_n_268 : STD_LOGIC;
  signal rf_n_269 : STD_LOGIC;
  signal rf_n_270 : STD_LOGIC;
  signal rf_n_271 : STD_LOGIC;
  signal rf_n_272 : STD_LOGIC;
  signal rf_n_273 : STD_LOGIC;
  signal rf_n_274 : STD_LOGIC;
  signal rf_n_275 : STD_LOGIC;
  signal rf_n_276 : STD_LOGIC;
  signal rf_n_277 : STD_LOGIC;
  signal rf_n_278 : STD_LOGIC;
  signal rf_n_279 : STD_LOGIC;
  signal rf_n_280 : STD_LOGIC;
  signal rf_n_281 : STD_LOGIC;
  signal rf_n_282 : STD_LOGIC;
  signal rf_n_283 : STD_LOGIC;
  signal rf_n_284 : STD_LOGIC;
  signal rf_n_285 : STD_LOGIC;
  signal rf_n_286 : STD_LOGIC;
  signal rf_n_31 : STD_LOGIC;
  signal rf_n_32 : STD_LOGIC;
  signal rf_n_33 : STD_LOGIC;
  signal rf_n_34 : STD_LOGIC;
  signal rf_n_35 : STD_LOGIC;
  signal rf_n_36 : STD_LOGIC;
  signal rf_n_37 : STD_LOGIC;
  signal rf_n_38 : STD_LOGIC;
  signal rf_n_39 : STD_LOGIC;
  signal rf_n_40 : STD_LOGIC;
  signal rf_n_41 : STD_LOGIC;
  signal rf_n_42 : STD_LOGIC;
  signal rf_n_43 : STD_LOGIC;
  signal rf_n_44 : STD_LOGIC;
  signal rf_n_45 : STD_LOGIC;
  signal rf_n_46 : STD_LOGIC;
  signal rf_n_47 : STD_LOGIC;
  signal rf_n_49 : STD_LOGIC;
  signal rf_n_50 : STD_LOGIC;
  signal rf_n_51 : STD_LOGIC;
  signal rf_n_52 : STD_LOGIC;
  signal rf_n_53 : STD_LOGIC;
  signal rf_n_81 : STD_LOGIC;
  signal rf_n_84 : STD_LOGIC;
  signal rf_n_85 : STD_LOGIC;
  signal rf_n_90 : STD_LOGIC;
  signal rf_n_91 : STD_LOGIC;
  signal rf_n_92 : STD_LOGIC;
  signal rf_n_93 : STD_LOGIC;
  signal rf_n_94 : STD_LOGIC;
  signal rf_n_95 : STD_LOGIC;
  signal rf_n_96 : STD_LOGIC;
  signal wd3 : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  ALUResult(31 downto 0) <= \^aluresult\(31 downto 0);
  Q(31 downto 0) <= \^q\(31 downto 0);
alu: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu
     port map (
      ALUControl(0) => ALUControl(0),
      ALUResult(5 downto 4) => \^aluresult\(31 downto 30),
      ALUResult(3) => \^aluresult\(27),
      ALUResult(2) => \^aluresult\(20),
      ALUResult(1) => \^aluresult\(18),
      ALUResult(0) => \^aluresult\(0),
      \ALUResult[0]_INST_0_i_11_0\ => alu_n_47,
      \ALUResult[0]_INST_0_i_11_1\(3) => rf_n_192,
      \ALUResult[0]_INST_0_i_11_1\(2) => rf_n_193,
      \ALUResult[0]_INST_0_i_11_1\(1) => rf_n_194,
      \ALUResult[0]_INST_0_i_11_1\(0) => rf_n_195,
      \ALUResult[0]_INST_0_i_11_2\(3) => rf_n_197,
      \ALUResult[0]_INST_0_i_11_2\(2) => pcreg_n_163,
      \ALUResult[0]_INST_0_i_11_2\(1) => pcreg_n_164,
      \ALUResult[0]_INST_0_i_11_2\(0) => pcreg_n_165,
      \ALUResult[0]_INST_0_i_4_0\ => rf_n_134,
      \ALUResult[0]_INST_0_i_4_1\ => rf_n_53,
      \ALUResult[0]_INST_0_i_6_0\ => alu_n_91,
      \ALUResult[10]_INST_0_i_3\ => rf_n_199,
      \ALUResult[11]_INST_0_i_3\ => pcreg_n_123,
      \ALUResult[11]_INST_0_i_3_0\ => rf_n_109,
      \ALUResult[13]_INST_0_i_5\(3) => rf_n_260,
      \ALUResult[13]_INST_0_i_5\(2) => rf_n_261,
      \ALUResult[13]_INST_0_i_5\(1) => rf_n_262,
      \ALUResult[13]_INST_0_i_5\(0) => rf_n_263,
      \ALUResult[14]_INST_0_i_3\ => rf_n_178,
      \ALUResult[16]_INST_0_i_3\ => rf_n_118,
      \ALUResult[17]_INST_0_i_5\(3) => rf_n_264,
      \ALUResult[17]_INST_0_i_5\(2) => rf_n_265,
      \ALUResult[17]_INST_0_i_5\(1) => rf_n_266,
      \ALUResult[17]_INST_0_i_5\(0) => rf_n_267,
      \ALUResult[1]_INST_0_i_3\(0) => rf_n_285,
      \ALUResult[1]_INST_0_i_3_0\(3) => rf_n_248,
      \ALUResult[1]_INST_0_i_3_0\(2) => rf_n_249,
      \ALUResult[1]_INST_0_i_3_0\(1) => rf_n_250,
      \ALUResult[1]_INST_0_i_3_0\(0) => rf_n_251,
      \ALUResult[21]_INST_0_i_5\(3) => rf_n_268,
      \ALUResult[21]_INST_0_i_5\(2) => rf_n_269,
      \ALUResult[21]_INST_0_i_5\(1) => rf_n_270,
      \ALUResult[21]_INST_0_i_5\(0) => rf_n_271,
      \ALUResult[22]_INST_0_i_1\ => rf_n_205,
      \ALUResult[24]_INST_0_i_3\ => rf_n_132,
      \ALUResult[25]_INST_0_i_5\(3) => rf_n_272,
      \ALUResult[25]_INST_0_i_5\(2) => rf_n_273,
      \ALUResult[25]_INST_0_i_5\(1) => rf_n_274,
      \ALUResult[25]_INST_0_i_5\(0) => rf_n_275,
      \ALUResult[26]_INST_0_i_3\ => rf_n_130,
      \ALUResult[28]_INST_0_i_3\ => rf_n_127,
      \ALUResult[29]_INST_0_i_5\(2) => rf_n_139,
      \ALUResult[29]_INST_0_i_5\(1) => rf_n_140,
      \ALUResult[29]_INST_0_i_5\(0) => rf_n_141,
      \ALUResult[2]_INST_0_i_3\ => rf_n_84,
      \ALUResult[30]_INST_0_i_4_0\ => alu_n_92,
      \ALUResult[30]_INST_0_i_5_0\ => alu_n_87,
      \ALUResult[30]_INST_0_i_6_0\ => alu_n_82,
      \ALUResult[31]_INST_0_0\ => alu_n_51,
      \ALUResult[31]_INST_0_i_3\ => alu_n_48,
      \ALUResult[31]_INST_0_i_3_0\ => alu_n_72,
      \ALUResult[31]_INST_0_i_3_1\ => alu_n_73,
      \ALUResult[31]_INST_0_i_3_2\ => alu_n_74,
      \ALUResult[3]_INST_0_i_3\ => rf_n_85,
      \ALUResult[3]_INST_0_i_3_0\ => pcreg_n_134,
      \ALUResult[3]_INST_0_i_4_0\ => alu_n_84,
      \ALUResult[4]_INST_0_i_3\ => rf_n_186,
      \ALUResult[4]_INST_0_i_3_0\ => pcreg_n_119,
      \ALUResult[4]_INST_0_i_4_0\ => alu_n_88,
      \ALUResult[4]_INST_0_i_5_0\ => alu_n_85,
      \ALUResult[4]_INST_0_i_5_1\ => alu_n_100,
      \ALUResult[4]_INST_0_i_6_0\ => alu_n_89,
      \ALUResult[5]_INST_0_i_3\ => rf_n_91,
      \ALUResult[5]_INST_0_i_3_0\ => pcreg_n_118,
      \ALUResult[5]_INST_0_i_5_0\(3) => rf_n_252,
      \ALUResult[5]_INST_0_i_5_0\(2) => rf_n_253,
      \ALUResult[5]_INST_0_i_5_0\(1) => rf_n_254,
      \ALUResult[5]_INST_0_i_5_0\(0) => rf_n_255,
      \ALUResult[6]_INST_0_i_3\ => rf_n_92,
      \ALUResult[6]_INST_0_i_3_0\ => pcreg_n_133,
      \ALUResult[7]_INST_0_i_3\ => pcreg_n_112,
      \ALUResult[7]_INST_0_i_3_0\ => rf_n_93,
      \ALUResult[7]_INST_0_i_3_1\ => pcreg_n_153,
      \ALUResult[8]_INST_0_i_3\ => rf_n_104,
      \ALUResult[9]_INST_0_i_5\(3) => rf_n_256,
      \ALUResult[9]_INST_0_i_5\(2) => rf_n_257,
      \ALUResult[9]_INST_0_i_5\(1) => rf_n_258,
      \ALUResult[9]_INST_0_i_5\(0) => rf_n_259,
      DI(3) => rf_n_185,
      DI(2) => pcreg_n_115,
      DI(1) => pcreg_n_116,
      DI(0) => pcreg_n_117,
      Instr(22 downto 21) => Instr(29 downto 28),
      Instr(20 downto 7) => Instr(22 downto 9),
      Instr(6 downto 0) => Instr(6 downto 0),
      ReadData(3) => ReadData(30),
      ReadData(2) => ReadData(27),
      ReadData(1) => ReadData(20),
      ReadData(0) => ReadData(18),
      S(3) => rf_n_224,
      S(2) => rf_n_225,
      S(1) => rf_n_226,
      S(0) => rf_n_227,
      SrcA(30 downto 0) => SrcA(30 downto 0),
      \WriteData[31]_INST_0_i_2_0\ => alu_n_86,
      \addressM[0]\ => rf_n_47,
      \addressM[0]_0\ => pcreg_n_69,
      \addressM[0]_1\ => rf_n_284,
      \addressM[0]_2\ => rf_n_281,
      \addressM[11]\(3) => rf_n_228,
      \addressM[11]\(2) => rf_n_229,
      \addressM[11]\(1) => rf_n_230,
      \addressM[11]\(0) => rf_n_231,
      \addressM[15]\(3) => rf_n_232,
      \addressM[15]\(2) => rf_n_233,
      \addressM[15]\(1) => rf_n_234,
      \addressM[15]\(0) => rf_n_235,
      \addressM[18]\ => rf_n_122,
      \addressM[18]_0\ => rf_n_200,
      \addressM[19]\(3) => rf_n_236,
      \addressM[19]\(2) => rf_n_237,
      \addressM[19]\(1) => rf_n_238,
      \addressM[19]\(0) => rf_n_239,
      \addressM[20]\ => rf_n_126,
      \addressM[20]_0\ => rf_n_203,
      \addressM[23]\(3) => rf_n_240,
      \addressM[23]\(2) => rf_n_241,
      \addressM[23]\(1) => rf_n_242,
      \addressM[23]\(0) => rf_n_243,
      \addressM[27]\(3) => rf_n_244,
      \addressM[27]\(2) => rf_n_245,
      \addressM[27]\(1) => rf_n_246,
      \addressM[27]\(0) => rf_n_247,
      \addressM[27]_0\ => rf_n_129,
      \addressM[27]_1\ => pcreg_n_106,
      \addressM[30]\ => rf_n_191,
      \addressM[30]_0\ => rf_n_196,
      \addressM[30]_1\ => pcreg_n_108,
      \addressM[31]\(3) => rf_n_49,
      \addressM[31]\(2) => rf_n_50,
      \addressM[31]\(1) => rf_n_51,
      \addressM[31]\(0) => rf_n_52,
      \addressM[31]_0\ => rf_n_133,
      \addressM[31]_1\ => rf_n_283,
      \addressM[31]_2\ => pcreg_n_70,
      \addressM[31]_3\ => rf_n_198,
      \addressM[3]\ => rf_n_276,
      \addressM[7]\(3) => rf_n_277,
      \addressM[7]\(2) => rf_n_278,
      \addressM[7]\(1) => rf_n_279,
      \addressM[7]\(0) => rf_n_280,
      d1(5 downto 4) => d1(31 downto 30),
      d1(3) => d1(27),
      d1(2) => d1(20),
      d1(1) => d1(18),
      d1(0) => d1(0),
      immext(0) => \ext/immext\(1),
      p_0_in(2) => p_0_in(23),
      p_0_in(1) => p_0_in(15),
      p_0_in(0) => p_0_in(7),
      \q[31]_i_16\ => pcreg_n_99,
      \q[31]_i_16_0\ => pcreg_n_97,
      \q[31]_i_17\ => pcreg_n_83,
      \q[31]_i_17_0\ => rf_n_105,
      \q[31]_i_17_1\ => pcreg_n_104,
      \q[31]_i_17_2\ => pcreg_n_102,
      \q[31]_i_18\ => rf_n_123,
      \q[31]_i_18_0\ => pcreg_n_92,
      \q[31]_i_19\ => rf_n_121,
      \q[31]_i_19_0\ => pcreg_n_90,
      \q[31]_i_53_0\ => alu_n_62,
      \q[31]_i_55_0\ => alu_n_64,
      \q[31]_i_57_0\ => alu_n_59,
      \q[31]_i_59_0\ => alu_n_52,
      \q_reg[10]\ => alu_n_93,
      \q_reg[11]\ => alu_n_94,
      \q_reg[14]\ => alu_n_95,
      \q_reg[16]\ => alu_n_53,
      \q_reg[18]\ => alu_n_60,
      \q_reg[19]\ => alu_n_58,
      \q_reg[20]\ => alu_n_96,
      \q_reg[22]\ => alu_n_97,
      \q_reg[23]\ => alu_n_61,
      \q_reg[24]\ => alu_n_63,
      \q_reg[26]\ => alu_n_65,
      \q_reg[27]\ => alu_n_66,
      \q_reg[28]\ => alu_n_98,
      \q_reg[2]\ => alu_n_75,
      \q_reg[30]\(25 downto 24) => data0(29 downto 28),
      \q_reg[30]\(23 downto 18) => data0(26 downto 21),
      \q_reg[30]\(17) => data0(19),
      \q_reg[30]\(16 downto 0) => data0(17 downto 1),
      \q_reg[30]_0\ => alu_n_50,
      \q_reg[30]_1\ => alu_n_67,
      \q_reg[3]\ => alu_n_40,
      \q_reg[3]_0\ => alu_n_76,
      \q_reg[4]\ => alu_n_77,
      \q_reg[5]\ => alu_n_78,
      \q_reg[6]\ => alu_n_79,
      \q_reg[7]\ => alu_n_80,
      \q_reg[8]\ => alu_n_81,
      \result1_carry__2_i_15_0\ => alu_n_49,
      \result1_carry__6_i_5\(13 downto 12) => data6(30 downto 29),
      \result1_carry__6_i_5\(11) => data6(27),
      \result1_carry__6_i_5\(10) => data6(25),
      \result1_carry__6_i_5\(9) => data6(23),
      \result1_carry__6_i_5\(8) => data6(21),
      \result1_carry__6_i_5\(7) => data6(19),
      \result1_carry__6_i_5\(6) => data6(17),
      \result1_carry__6_i_5\(5) => data6(15),
      \result1_carry__6_i_5\(4 downto 3) => data6(13 downto 12),
      \result1_carry__6_i_5\(2 downto 1) => data6(9 downto 8),
      \result1_carry__6_i_5\(0) => data6(1),
      result2(25 downto 19) => result2(30 downto 24),
      result2(18 downto 12) => result2(22 downto 16),
      result2(11 downto 5) => result2(14 downto 8),
      result2(4 downto 2) => result2(6 downto 4),
      result2(1 downto 0) => result2(2 downto 1),
      rf_reg_r1_0_31_18_23 => pcadd4_n_48,
      rf_reg_r1_0_31_18_23_0 => pcadd4_n_50,
      rf_reg_r1_0_31_24_29 => pcadd4_n_57,
      \rf_reg_r1_0_31_30_31_i_1__0_0\ => rf_n_119,
      \rf_reg_r1_0_31_30_31_i_1__0_1\ => rf_n_96,
      rf_reg_r2_0_31_30_31 => rf_n_112,
      rf_reg_r2_0_31_30_31_0 => pcreg_n_166,
      \sum_carry__3_0\ => alu_n_70,
      \sum_carry__3_1\ => alu_n_71,
      \sum_carry__5_0\ => alu_n_68,
      \sum_carry__5_1\ => alu_n_69,
      \w_carry__0_0\(3) => rf_n_183,
      \w_carry__0_0\(2) => rf_n_184,
      \w_carry__0_0\(1) => pcreg_n_145,
      \w_carry__0_0\(0) => pcreg_n_146,
      \w_carry__1_0\(3) => rf_n_179,
      \w_carry__1_0\(2) => rf_n_180,
      \w_carry__1_0\(1) => pcreg_n_156,
      \w_carry__1_0\(0) => rf_n_181,
      \w_carry__1_1\(3) => rf_n_175,
      \w_carry__1_1\(2) => rf_n_176,
      \w_carry__1_1\(1) => rf_n_177,
      \w_carry__1_1\(0) => pcreg_n_113,
      \w_carry__2_0\(3) => rf_n_201,
      \w_carry__2_0\(2) => rf_n_202,
      \w_carry__2_0\(1) => pcreg_n_157,
      \w_carry__2_0\(0) => pcreg_n_158,
      \w_carry__2_1\(3) => pcreg_n_159,
      \w_carry__2_1\(2) => pcreg_n_160,
      \w_carry__2_1\(1) => pcreg_n_161,
      \w_carry__2_1\(0) => pcreg_n_162,
      wd3(3) => wd3(30),
      wd3(2) => wd3(27),
      wd3(1) => wd3(20),
      wd3(0) => wd3(18),
      y_carry_i_5_0 => alu_n_90,
      y_carry_i_5_1 => alu_n_99
    );
pcadd4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder
     port map (
      D(12) => pcadd4_n_18,
      D(11) => pcadd4_n_19,
      D(10) => pcadd4_n_20,
      D(9) => pcadd4_n_21,
      D(8) => pcadd4_n_22,
      D(7) => pcadd4_n_23,
      D(6) => pcadd4_n_24,
      D(5) => pcadd4_n_25,
      D(4) => pcadd4_n_26,
      D(3) => pcadd4_n_27,
      D(2) => pcadd4_n_28,
      D(1) => pcadd4_n_29,
      D(0) => pcadd4_n_30,
      Instr(21 downto 2) => Instr(29 downto 10),
      Instr(1) => Instr(4),
      Instr(0) => Instr(0),
      Q(30 downto 0) => \^q\(31 downto 1),
      ReadData(6 downto 0) => ReadData(7 downto 1),
      S(0) => pcreg_n_0,
      immext(5 downto 3) => \ext/immext\(7 downto 5),
      immext(2 downto 0) => \ext/immext\(3 downto 1),
      \q_reg[10]\ => pcreg_n_47,
      \q_reg[12]\ => pcadd4_n_42,
      \q_reg[12]_0\ => pcreg_n_81,
      \q_reg[14]\ => pcreg_n_87,
      \q_reg[16]\ => pcadd4_n_43,
      \q_reg[16]_0\ => pcadd4_n_44,
      \q_reg[16]_1\ => pcadd4_n_45,
      \q_reg[16]_2\ => pcadd4_n_46,
      \q_reg[16]_3\ => pcreg_n_88,
      \q_reg[18]\ => alu_n_58,
      \q_reg[20]\ => pcadd4_n_47,
      \q_reg[20]_0\ => pcadd4_n_48,
      \q_reg[20]_1\ => pcadd4_n_49,
      \q_reg[20]_2\ => pcadd4_n_50,
      \q_reg[20]_3\ => alu_n_61,
      \q_reg[21]\ => pcreg_n_93,
      \q_reg[22]\ => pcreg_n_95,
      \q_reg[23]\ => pcreg_n_96,
      \q_reg[24]\ => pcadd4_n_51,
      \q_reg[24]_0\ => pcadd4_n_52,
      \q_reg[24]_1\ => pcadd4_n_53,
      \q_reg[24]_2\ => pcadd4_n_54,
      \q_reg[24]_3\ => pcreg_n_98,
      \q_reg[25]\ => pcreg_n_100,
      \q_reg[26]\ => pcreg_n_103,
      \q_reg[27]\ => rf_n_46,
      \q_reg[27]_0\ => alu_n_66,
      \q_reg[28]\ => pcadd4_n_55,
      \q_reg[28]_0\ => pcadd4_n_56,
      \q_reg[28]_1\ => pcadd4_n_57,
      \q_reg[28]_2\ => pcadd4_n_58,
      \q_reg[31]\(17 downto 14) => d2(31 downto 28),
      \q_reg[31]\(13) => d2(19),
      \q_reg[31]\(12) => d2(17),
      \q_reg[31]\(11) => d2(15),
      \q_reg[31]\(10) => d2(13),
      \q_reg[31]\(9) => d2(11),
      \q_reg[31]\(8 downto 0) => d2(9 downto 1),
      rf_reg_r1_0_31_0_5 => \^aluresult\(1),
      rf_reg_r1_0_31_0_5_0 => \^aluresult\(2),
      rf_reg_r1_0_31_0_5_1 => \^aluresult\(3),
      rf_reg_r1_0_31_0_5_2 => rf_n_286,
      rf_reg_r1_0_31_0_5_3 => \^aluresult\(4),
      rf_reg_r1_0_31_0_5_4 => \^aluresult\(5),
      rf_reg_r1_0_31_18_23_i_1 => rf_n_182,
      rf_reg_r1_0_31_24_29_i_6 => rf_n_96,
      rf_reg_r1_0_31_6_11 => rf_n_112,
      rf_reg_r1_0_31_6_11_0 => \^aluresult\(6),
      rf_reg_r1_0_31_6_11_1 => \^aluresult\(7),
      rf_reg_r1_0_31_6_11_2 => alu_n_87,
      rf_reg_r1_0_31_6_11_3 => rf_n_94,
      rf_reg_r1_0_31_6_11_4 => rf_n_106,
      rf_reg_r1_0_31_6_11_5 => pcreg_n_45,
      rf_reg_r1_0_31_6_11_6 => alu_n_100,
      rf_reg_r1_0_31_6_11_7 => rf_n_174,
      rf_reg_r1_0_31_6_11_8 => \^aluresult\(11),
      wd3(10 downto 0) => wd3(11 downto 1)
    );
pcaddbranch: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0
     port map (
      Q(30 downto 0) => \^q\(30 downto 0),
      S(3) => pcreg_n_172,
      S(2) => pcreg_n_173,
      S(1) => pcreg_n_174,
      S(0) => pcreg_n_175,
      d1(31 downto 0) => d1(31 downto 0),
      \q[12]_i_2\(3) => pcreg_n_184,
      \q[12]_i_2\(2) => pcreg_n_185,
      \q[12]_i_2\(1) => pcreg_n_186,
      \q[12]_i_2\(0) => pcreg_n_187,
      \q[16]_i_2\(3) => pcreg_n_188,
      \q[16]_i_2\(2) => pcreg_n_189,
      \q[16]_i_2\(1) => pcreg_n_190,
      \q[16]_i_2\(0) => pcreg_n_191,
      \q[20]_i_2\(3) => pcreg_n_194,
      \q[20]_i_2\(2) => pcreg_n_195,
      \q[20]_i_2\(1) => pcreg_n_196,
      \q[20]_i_2\(0) => pcreg_n_197,
      \q[24]_i_2\(3) => pcreg_n_198,
      \q[24]_i_2\(2) => pcreg_n_199,
      \q[24]_i_2\(1) => pcreg_n_200,
      \q[24]_i_2\(0) => pcreg_n_201,
      \q[28]_i_2\(3) => pcreg_n_168,
      \q[28]_i_2\(2) => pcreg_n_169,
      \q[28]_i_2\(1) => pcreg_n_170,
      \q[28]_i_2\(0) => pcreg_n_171,
      \q[4]_i_2\(3) => pcreg_n_176,
      \q[4]_i_2\(2) => pcreg_n_177,
      \q[4]_i_2\(1) => pcreg_n_178,
      \q[4]_i_2\(0) => pcreg_n_179,
      \q[8]_i_2\(3) => pcreg_n_180,
      \q[8]_i_2\(2) => pcreg_n_181,
      \q[8]_i_2\(1) => pcreg_n_182,
      \q[8]_i_2\(0) => pcreg_n_183
    );
pcreg: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr
     port map (
      ALUControl(0) => ALUControl(0),
      ALUResult(2) => \^aluresult\(31),
      ALUResult(1) => \^aluresult\(20),
      ALUResult(0) => \^aluresult\(0),
      \ALUResult[0]_INST_0_i_15\ => rf_n_186,
      \ALUResult[0]_INST_0_i_15_0\ => alu_n_91,
      \ALUResult[0]_INST_0_i_16_0\ => pcreg_n_148,
      \ALUResult[12]_INST_0_i_6_0\ => pcreg_n_84,
      \ALUResult[13]_INST_0_i_3\ => rf_n_113,
      \ALUResult[14]_INST_0_i_4_0\ => rf_n_85,
      \ALUResult[14]_INST_0_i_6_0\ => pcreg_n_86,
      \ALUResult[17]_INST_0_i_4\ => rf_n_138,
      \ALUResult[1]_INST_0_i_2\ => pcreg_n_202,
      \ALUResult[20]_INST_0_i_1\ => rf_n_190,
      \ALUResult[20]_INST_0_i_6_0\ => pcreg_n_90,
      \ALUResult[22]_INST_0_i_6\ => pcreg_n_92,
      \ALUResult[25]_INST_0_i_6_0\ => pcreg_n_94,
      \ALUResult[27]_INST_0_i_5_0\ => pcreg_n_106,
      \ALUResult[28]_INST_0_i_6_0\ => pcreg_n_97,
      \ALUResult[29]_INST_0_i_1_0\(10) => data6(29),
      \ALUResult[29]_INST_0_i_1_0\(9) => data6(27),
      \ALUResult[29]_INST_0_i_1_0\(8) => data6(25),
      \ALUResult[29]_INST_0_i_1_0\(7) => data6(23),
      \ALUResult[29]_INST_0_i_1_0\(6) => data6(21),
      \ALUResult[29]_INST_0_i_1_0\(5) => data6(19),
      \ALUResult[29]_INST_0_i_1_0\(4) => data6(17),
      \ALUResult[29]_INST_0_i_1_0\(3 downto 2) => data6(13 downto 12),
      \ALUResult[29]_INST_0_i_1_0\(1 downto 0) => data6(9 downto 8),
      \ALUResult[29]_INST_0_i_6_0\ => pcreg_n_99,
      \ALUResult[30]_INST_0_i_8\ => pcreg_n_108,
      \ALUResult[30]_INST_0_i_9\ => pcreg_n_102,
      \ALUResult[31]_INST_0_i_11_0\ => rf_n_191,
      \ALUResult[31]_INST_0_i_13_0\ => pcreg_n_70,
      \ALUResult[31]_INST_0_i_13_1\ => pcreg_n_83,
      \ALUResult[31]_INST_0_i_16_0\ => pcreg_n_144,
      \ALUResult[31]_INST_0_i_20_0\ => pcreg_n_107,
      \ALUResult[31]_INST_0_i_22_0\ => pcreg_n_104,
      \ALUResult[31]_INST_0_i_23_0\ => pcreg_n_109,
      \ALUResult[31]_INST_0_i_5_0\ => pcreg_n_69,
      \ALUResult[31]_INST_0_i_9\ => rf_n_90,
      \ALUResult[8]_INST_0_i_6_0\ => pcreg_n_112,
      D(27) => rf_n_31,
      D(26) => pcadd4_n_18,
      D(25) => pcadd4_n_19,
      D(24) => pcadd4_n_20,
      D(23) => pcadd4_n_21,
      D(22) => pcadd4_n_22,
      D(21) => pcadd4_n_23,
      D(20) => pcadd4_n_24,
      D(19) => pcadd4_n_25,
      D(18) => rf_n_32,
      D(17) => pcadd4_n_26,
      D(16) => rf_n_33,
      D(15) => pcadd4_n_27,
      D(14) => rf_n_34,
      D(13) => pcadd4_n_28,
      D(12) => rf_n_35,
      D(11) => pcadd4_n_29,
      D(10) => rf_n_36,
      D(9) => pcadd4_n_30,
      D(8) => rf_n_37,
      D(7) => rf_n_38,
      D(6) => rf_n_39,
      D(5) => rf_n_40,
      D(4) => rf_n_41,
      D(3) => rf_n_42,
      D(2) => rf_n_43,
      D(1) => rf_n_44,
      D(0) => rf_n_45,
      DI(2) => pcreg_n_115,
      DI(1) => pcreg_n_116,
      DI(0) => pcreg_n_117,
      Instr(29 downto 0) => Instr(29 downto 0),
      PCReady => PCReady,
      Q(31 downto 0) => \^q\(31 downto 0),
      ReadData(12) => ReadData(29),
      ReadData(11 downto 6) => ReadData(26 downto 21),
      ReadData(5) => ReadData(16),
      ReadData(4) => ReadData(14),
      ReadData(3) => ReadData(12),
      ReadData(2) => ReadData(10),
      ReadData(1) => ReadData(7),
      ReadData(0) => ReadData(0),
      S(0) => pcreg_n_0,
      SrcA(20 downto 4) => SrcA(30 downto 14),
      SrcA(3) => SrcA(12),
      SrcA(2) => SrcA(10),
      SrcA(1) => SrcA(8),
      SrcA(0) => SrcA(2),
      \addressM[10]\ => rf_n_199,
      \addressM[10]_0\ => rf_n_108,
      \addressM[12]\ => rf_n_111,
      \addressM[12]_0\ => rf_n_114,
      \addressM[12]_1\ => rf_n_105,
      \addressM[14]\ => rf_n_178,
      \addressM[14]_0\ => rf_n_116,
      \addressM[14]_1\ => alu_n_95,
      \addressM[16]\ => rf_n_118,
      \addressM[16]_0\ => rf_n_121,
      \addressM[16]_1\ => alu_n_53,
      \addressM[21]\ => rf_n_204,
      \addressM[22]\ => rf_n_205,
      \addressM[22]_0\ => alu_n_97,
      \addressM[23]\ => rf_n_206,
      \addressM[24]\ => rf_n_132,
      \addressM[24]_0\ => alu_n_63,
      \addressM[25]\ => rf_n_131,
      \addressM[26]\ => rf_n_130,
      \addressM[26]_0\ => alu_n_65,
      \addressM[27]\ => rf_n_128,
      \addressM[29]\(10) => data0(29),
      \addressM[29]\(9 downto 4) => data0(26 downto 21),
      \addressM[29]\(3) => data0(16),
      \addressM[29]\(2) => data0(14),
      \addressM[29]\(1) => data0(12),
      \addressM[29]\(0) => data0(10),
      \addressM[29]_0\ => rf_n_207,
      \addressM[29]_1\ => alu_n_92,
      \addressM[30]\ => rf_n_282,
      clk => clk,
      d1(10) => d1(29),
      d1(9 downto 4) => d1(26 downto 21),
      d1(3) => d1(16),
      d1(2) => d1(14),
      d1(1) => d1(12),
      d1(0) => d1(10),
      \q[31]_i_10\ => rf_n_110,
      \q[31]_i_10_0\ => rf_n_115,
      \q[31]_i_12_0\ => alu_n_52,
      \q[31]_i_12_1\ => rf_n_117,
      \q[31]_i_12_2\ => alu_n_59,
      \q[31]_i_12_3\ => rf_n_125,
      \q[31]_i_15_0\ => alu_n_73,
      \q[31]_i_15_1\ => alu_n_72,
      \q[31]_i_16\ => alu_n_69,
      \q[31]_i_17\ => alu_n_68,
      \q[31]_i_19_0\ => pcreg_n_89,
      \q[31]_i_19_1\ => alu_n_71,
      \q[31]_i_34\ => rf_n_188,
      \q[31]_i_42\ => rf_n_189,
      \q[31]_i_4_0\ => pcreg_n_167,
      \q[31]_i_54\ => pcreg_n_101,
      \q[31]_i_56\ => pcreg_n_105,
      \q_reg[0]_0\ => pcreg_n_132,
      \q_reg[0]_1\ => pcreg_n_137,
      \q_reg[0]_2\ => rf_n_46,
      \q_reg[0]_3\ => alu_n_40,
      \q_reg[10]_0\ => \^aluresult\(10),
      \q_reg[10]_1\(0) => pcreg_n_156,
      \q_reg[11]_0\ => pcreg_n_47,
      \q_reg[11]_1\ => pcreg_n_123,
      \q_reg[11]_2\(3) => pcreg_n_180,
      \q_reg[11]_2\(2) => pcreg_n_181,
      \q_reg[11]_2\(1) => pcreg_n_182,
      \q_reg[11]_2\(0) => pcreg_n_183,
      \q_reg[12]_0\ => pcreg_n_82,
      \q_reg[12]_1\ => pcreg_n_150,
      \q_reg[13]_0\ => pcreg_n_85,
      \q_reg[13]_1\ => pcreg_n_125,
      \q_reg[13]_2\ => pcreg_n_138,
      \q_reg[13]_3\ => pcreg_n_139,
      \q_reg[15]_0\ => pcreg_n_81,
      \q_reg[15]_1\ => pcreg_n_87,
      \q_reg[15]_2\(3) => pcreg_n_184,
      \q_reg[15]_2\(2) => pcreg_n_185,
      \q_reg[15]_2\(1) => pcreg_n_186,
      \q_reg[15]_2\(0) => pcreg_n_187,
      \q_reg[17]_0\ => pcreg_n_91,
      \q_reg[17]_1\ => pcreg_n_121,
      \q_reg[18]_0\(1) => pcreg_n_157,
      \q_reg[18]_0\(0) => pcreg_n_158,
      \q_reg[19]_0\ => pcreg_n_88,
      \q_reg[19]_1\ => pcreg_n_122,
      \q_reg[19]_2\(3) => pcreg_n_188,
      \q_reg[19]_2\(2) => pcreg_n_189,
      \q_reg[19]_2\(1) => pcreg_n_190,
      \q_reg[19]_2\(0) => pcreg_n_191,
      \q_reg[19]_3\ => pcreg_n_193,
      \q_reg[1]_0\ => pcreg_n_126,
      \q_reg[1]_1\ => pcreg_n_129,
      \q_reg[1]_2\ => pcreg_n_136,
      \q_reg[20]_0\ => pcreg_n_142,
      \q_reg[23]_0\ => pcreg_n_93,
      \q_reg[23]_1\ => pcreg_n_95,
      \q_reg[23]_2\ => pcreg_n_96,
      \q_reg[23]_3\(3) => pcreg_n_159,
      \q_reg[23]_3\(2) => pcreg_n_160,
      \q_reg[23]_3\(1) => pcreg_n_161,
      \q_reg[23]_3\(0) => pcreg_n_162,
      \q_reg[23]_4\(3) => pcreg_n_194,
      \q_reg[23]_4\(2) => pcreg_n_195,
      \q_reg[23]_4\(1) => pcreg_n_196,
      \q_reg[23]_4\(0) => pcreg_n_197,
      \q_reg[25]_0\ => pcreg_n_124,
      \q_reg[25]_1\ => pcreg_n_152,
      \q_reg[26]_0\ => pcreg_n_143,
      \q_reg[27]_0\ => pcreg_n_98,
      \q_reg[27]_1\ => pcreg_n_100,
      \q_reg[27]_2\ => pcreg_n_103,
      \q_reg[27]_3\ => pcreg_n_155,
      \q_reg[27]_4\(3) => pcreg_n_198,
      \q_reg[27]_4\(2) => pcreg_n_199,
      \q_reg[27]_4\(1) => pcreg_n_200,
      \q_reg[27]_4\(0) => pcreg_n_201,
      \q_reg[29]_0\(9) => \^aluresult\(29),
      \q_reg[29]_0\(8 downto 3) => \^aluresult\(26 downto 21),
      \q_reg[29]_0\(2) => \^aluresult\(16),
      \q_reg[29]_0\(1) => \^aluresult\(14),
      \q_reg[29]_0\(0) => \^aluresult\(12),
      \q_reg[29]_1\ => pcreg_n_151,
      \q_reg[29]_2\(2) => pcreg_n_163,
      \q_reg[29]_2\(1) => pcreg_n_164,
      \q_reg[29]_2\(0) => pcreg_n_165,
      \q_reg[2]_0\ => pcreg_n_131,
      \q_reg[30]_0\ => pcreg_n_140,
      \q_reg[30]_1\ => pcreg_n_141,
      \q_reg[30]_2\ => alu_n_67,
      \q_reg[31]_0\ => pcreg_n_166,
      \q_reg[31]_1\(3) => pcreg_n_168,
      \q_reg[31]_1\(2) => pcreg_n_169,
      \q_reg[31]_1\(1) => pcreg_n_170,
      \q_reg[31]_1\(0) => pcreg_n_171,
      \q_reg[31]_2\(2 downto 0) => d2(31 downto 29),
      \q_reg[31]_3\ => alu_n_50,
      \q_reg[3]_0\ => pcreg_n_127,
      \q_reg[3]_1\ => pcreg_n_128,
      \q_reg[3]_2\ => pcreg_n_134,
      \q_reg[3]_3\(1) => pcreg_n_145,
      \q_reg[3]_3\(0) => pcreg_n_146,
      \q_reg[3]_4\(3) => pcreg_n_172,
      \q_reg[3]_4\(2) => pcreg_n_173,
      \q_reg[3]_4\(1) => pcreg_n_174,
      \q_reg[3]_4\(0) => pcreg_n_175,
      \q_reg[4]_0\ => pcreg_n_119,
      \q_reg[5]_0\ => pcreg_n_118,
      \q_reg[5]_1\ => pcreg_n_130,
      \q_reg[5]_2\ => pcreg_n_135,
      \q_reg[5]_3\ => pcreg_n_147,
      \q_reg[6]_0\ => pcreg_n_133,
      \q_reg[7]_0\ => pcreg_n_153,
      \q_reg[7]_1\(3) => pcreg_n_176,
      \q_reg[7]_1\(2) => pcreg_n_177,
      \q_reg[7]_1\(1) => pcreg_n_178,
      \q_reg[7]_1\(0) => pcreg_n_179,
      \q_reg[8]_0\ => pcreg_n_111,
      \q_reg[8]_1\ => pcreg_n_149,
      \q_reg[9]_0\(0) => pcreg_n_113,
      \q_reg[9]_1\ => pcreg_n_114,
      \q_reg[9]_2\ => pcreg_n_154,
      \q_reg[9]_3\ => pcreg_n_192,
      rd10(30 downto 0) => rd10(30 downto 0),
      \readDataM[7]\ => pcreg_n_45,
      reset => reset,
      \result1_carry__0_i_8\ => rf_n_84,
      \result1_carry__0_i_8_0\ => rf_n_81,
      \result1_carry__0_i_8_1\ => rf_n_187,
      result1_carry_i_14_0 => pcreg_n_120,
      rf_reg_r1_0_31_0_5 => alu_n_99,
      rf_reg_r1_0_31_12_17 => pcadd4_n_42,
      rf_reg_r1_0_31_12_17_0 => pcadd4_n_44,
      rf_reg_r1_0_31_12_17_1 => pcadd4_n_46,
      rf_reg_r1_0_31_12_17_i_4_0 => rf_n_95,
      rf_reg_r1_0_31_18_23 => pcadd4_n_51,
      rf_reg_r1_0_31_18_23_0 => pcadd4_n_52,
      rf_reg_r1_0_31_18_23_1 => pcadd4_n_53,
      rf_reg_r1_0_31_24_29 => rf_n_112,
      rf_reg_r1_0_31_24_29_0 => pcadd4_n_54,
      rf_reg_r1_0_31_24_29_1 => pcadd4_n_55,
      rf_reg_r1_0_31_24_29_2 => pcadd4_n_56,
      rf_reg_r1_0_31_24_29_i_5_0 => rf_n_119,
      \rf_reg_r1_0_31_30_31_i_1__0\ => rf_n_96,
      \rf_reg_r2_0_31_30_31__0\ => rf_n_223,
      w_carry => rf_n_91,
      \w_carry__0\ => rf_n_104,
      \w_carry__0_0\ => rf_n_107,
      \w_carry__0_1\ => rf_n_109,
      \w_carry__1\ => rf_n_124,
      \w_carry__1_0\ => rf_n_200,
      \w_carry__1_1\ => rf_n_120,
      \w_carry__1_2\ => rf_n_203,
      \w_carry__2\ => rf_n_129,
      \w_carry__2_0\ => rf_n_127,
      wd3(11) => wd3(31),
      wd3(10) => wd3(29),
      wd3(9 downto 4) => wd3(26 downto 21),
      wd3(3) => wd3(16),
      wd3(2) => wd3(14),
      wd3(1) => wd3(12),
      wd3(0) => wd3(0),
      y_carry => alu_n_84,
      \y_carry__0\ => alu_n_90,
      \y_carry__0_0\ => alu_n_85,
      \y_carry__0_1\ => alu_n_87,
      \y_carry__1\ => alu_n_100,
      \y_carry__2\ => rf_n_182
    );
rf: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile
     port map (
      ALUControl(0) => ALUControl(0),
      ALUResult(4 downto 2) => \^aluresult\(31 downto 29),
      ALUResult(1) => \^aluresult\(14),
      ALUResult(0) => \^aluresult\(10),
      \ALUResult[0]_INST_0_i_3_0\ => pcreg_n_149,
      \ALUResult[10]_INST_0_i_5\ => rf_n_108,
      \ALUResult[18]_INST_0_i_5\ => rf_n_122,
      \ALUResult[19]_INST_0_i_4_0\ => rf_n_182,
      \ALUResult[19]_INST_0_i_7_0\ => rf_n_116,
      \ALUResult[1]_INST_0_i_2_0\(3) => rf_n_248,
      \ALUResult[1]_INST_0_i_2_0\(2) => rf_n_249,
      \ALUResult[1]_INST_0_i_2_0\(1) => rf_n_250,
      \ALUResult[1]_INST_0_i_2_0\(0) => rf_n_251,
      \ALUResult[20]_INST_0_i_5\ => rf_n_126,
      \ALUResult[21]_INST_0_i_6_0\ => rf_n_121,
      \ALUResult[23]_INST_0_i_6\ => rf_n_123,
      \ALUResult[27]_INST_0_i_3\ => pcreg_n_130,
      \ALUResult[27]_INST_0_i_3_0\ => pcreg_n_126,
      \ALUResult[2]_INST_0_i_1_0\(3) => rf_n_252,
      \ALUResult[2]_INST_0_i_1_0\(2) => rf_n_253,
      \ALUResult[2]_INST_0_i_1_0\(1) => rf_n_254,
      \ALUResult[2]_INST_0_i_1_0\(0) => rf_n_255,
      \ALUResult[2]_INST_0_i_1_1\(3) => rf_n_256,
      \ALUResult[2]_INST_0_i_1_1\(2) => rf_n_257,
      \ALUResult[2]_INST_0_i_1_1\(1) => rf_n_258,
      \ALUResult[2]_INST_0_i_1_1\(0) => rf_n_259,
      \ALUResult[2]_INST_0_i_1_2\(0) => rf_n_285,
      \ALUResult[30]_INST_0_i_3\(2) => data6(30),
      \ALUResult[30]_INST_0_i_3\(1) => data6(15),
      \ALUResult[30]_INST_0_i_3\(0) => data6(1),
      \ALUResult[30]_INST_0_i_6\ => rf_n_84,
      \ALUResult[31]_INST_0_i_10_0\ => rf_n_276,
      \ALUResult[31]_INST_0_i_12\ => rf_n_283,
      \ALUResult[31]_INST_0_i_15\ => rf_n_128,
      \ALUResult[31]_INST_0_i_2_0\ => pcreg_n_127,
      \ALUResult[5]_INST_0_i_4_0\ => pcreg_n_137,
      D(14) => rf_n_31,
      D(13) => rf_n_32,
      D(12) => rf_n_33,
      D(11) => rf_n_34,
      D(10) => rf_n_35,
      D(9) => rf_n_36,
      D(8) => rf_n_37,
      D(7) => rf_n_38,
      D(6) => rf_n_39,
      D(5) => rf_n_40,
      D(4) => rf_n_41,
      D(3) => rf_n_42,
      D(2) => rf_n_43,
      D(1) => rf_n_44,
      D(0) => rf_n_45,
      DI(0) => rf_n_185,
      Instr(29 downto 0) => Instr(29 downto 0),
      Q(31 downto 0) => \^q\(31 downto 0),
      ReadData(9) => ReadData(31),
      ReadData(8) => ReadData(28),
      ReadData(7) => ReadData(19),
      ReadData(6) => ReadData(17),
      ReadData(5) => ReadData(15),
      ReadData(4) => ReadData(13),
      ReadData(3) => ReadData(11),
      ReadData(2 downto 0) => ReadData(9 downto 7),
      S(3) => rf_n_224,
      S(2) => rf_n_225,
      S(1) => rf_n_226,
      S(0) => rf_n_227,
      SrcA(18 downto 5) => SrcA(29 downto 16),
      SrcA(4) => SrcA(14),
      SrcA(3) => SrcA(12),
      SrcA(2) => SrcA(10),
      SrcA(1) => SrcA(8),
      SrcA(0) => SrcA(2),
      WriteData(31 downto 0) => WriteData(31 downto 0),
      \WriteData[3]_INST_0_0\ => rf_n_85,
      \WriteData[3]_INST_0_1\ => rf_n_138,
      \WriteData[4]_INST_0_0\ => rf_n_90,
      \WriteData[4]_INST_0_1\ => rf_n_186,
      \addressM[0]\ => pcreg_n_112,
      \addressM[0]_0\ => alu_n_92,
      \addressM[0]_1\ => alu_n_91,
      \addressM[10]\ => alu_n_93,
      \addressM[11]\ => pcreg_n_123,
      \addressM[11]_0\ => pcreg_n_84,
      \addressM[11]_1\ => alu_n_94,
      \addressM[11]_2\ => alu_n_100,
      \addressM[13]\ => pcreg_n_125,
      \addressM[13]_0\ => pcreg_n_86,
      \addressM[13]_1\ => pcreg_n_85,
      \addressM[14]\ => alu_n_82,
      \addressM[15]\ => pcreg_n_90,
      \addressM[17]\ => pcreg_n_92,
      \addressM[17]_0\ => pcreg_n_91,
      \addressM[18]\ => alu_n_60,
      \addressM[19]\ => pcreg_n_193,
      \addressM[1]\ => pcreg_n_69,
      \addressM[1]_0\ => pcreg_n_70,
      \addressM[1]_1\ => pcreg_n_136,
      \addressM[20]\ => pcreg_n_94,
      \addressM[20]_0\ => alu_n_96,
      \addressM[28]\(14) => data0(28),
      \addressM[28]\(13) => data0(19),
      \addressM[28]\(12) => data0(17),
      \addressM[28]\(11) => data0(15),
      \addressM[28]\(10) => data0(13),
      \addressM[28]\(9) => data0(11),
      \addressM[28]\(8 downto 0) => data0(9 downto 1),
      \addressM[28]_0\ => pcreg_n_107,
      \addressM[28]_1\ => alu_n_98,
      \addressM[2]\ => alu_n_75,
      \addressM[2]_0\ => alu_n_84,
      \addressM[31]\ => pcreg_n_144,
      \addressM[31]_0\ => pcreg_n_109,
      \addressM[3]\ => pcreg_n_134,
      \addressM[3]_0\ => alu_n_76,
      \addressM[4]\ => pcreg_n_119,
      \addressM[4]_0\ => alu_n_77,
      \addressM[4]_1\ => alu_n_87,
      \addressM[4]_2\ => alu_n_88,
      \addressM[4]_3\ => alu_n_85,
      \addressM[4]_4\ => alu_n_89,
      \addressM[5]\ => pcreg_n_118,
      \addressM[5]_0\ => alu_n_78,
      \addressM[6]\ => pcreg_n_133,
      \addressM[6]_0\ => alu_n_79,
      \addressM[7]\ => pcreg_n_153,
      \addressM[7]_0\ => alu_n_80,
      \addressM[8]\ => alu_n_81,
      \addressM[9]\ => pcreg_n_114,
      \addressM[9]_0\ => pcreg_n_192,
      \addressM[9]_1\ => pcreg_n_83,
      clk => clk,
      clk_0(30 downto 0) => rd10(30 downto 0),
      clk_1(3) => rf_n_49,
      clk_1(2) => rf_n_50,
      clk_1(1) => rf_n_51,
      clk_1(0) => rf_n_52,
      clk_10 => rf_n_111,
      clk_11 => rf_n_113,
      clk_12 => rf_n_118,
      clk_13 => rf_n_120,
      clk_14 => rf_n_124,
      clk_15 => rf_n_127,
      clk_16 => rf_n_129,
      clk_17 => rf_n_130,
      clk_18 => rf_n_131,
      clk_19 => rf_n_132,
      clk_2 => rf_n_81,
      clk_20 => rf_n_134,
      clk_21 => rf_n_178,
      clk_22 => rf_n_196,
      clk_23 => rf_n_199,
      clk_24 => rf_n_200,
      clk_25 => rf_n_203,
      clk_26 => rf_n_204,
      clk_27 => rf_n_205,
      clk_28 => rf_n_206,
      clk_29 => rf_n_207,
      clk_3 => rf_n_91,
      clk_4 => rf_n_92,
      clk_5 => rf_n_93,
      clk_6 => rf_n_104,
      clk_7 => rf_n_105,
      clk_8 => rf_n_107,
      clk_9 => rf_n_109,
      d1(14) => d1(28),
      d1(13) => d1(19),
      d1(12) => d1(17),
      d1(11) => d1(15),
      d1(10) => d1(13),
      d1(9) => d1(11),
      d1(8 downto 0) => d1(9 downto 1),
      immext(0) => \ext/immext\(1),
      p_0_in(2) => p_0_in(23),
      p_0_in(1) => p_0_in(15),
      p_0_in(0) => p_0_in(7),
      \q[31]_i_11_0\ => alu_n_62,
      \q[31]_i_11_1\ => pcreg_n_101,
      \q[31]_i_11_2\ => alu_n_64,
      \q[31]_i_11_3\ => pcreg_n_105,
      \q[31]_i_13_0\ => pcreg_n_148,
      \q[31]_i_14_0\ => pcreg_n_111,
      \q[31]_i_14_1\ => alu_n_74,
      \q[31]_i_18\ => alu_n_70,
      \q[31]_i_21_0\ => pcreg_n_154,
      \q[31]_i_21_1\ => pcreg_n_143,
      \q[31]_i_21_2\ => pcreg_n_141,
      \q[31]_i_21_3\ => pcreg_n_139,
      \q[31]_i_24_0\ => pcreg_n_147,
      \q[31]_i_34\ => alu_n_99,
      \q[31]_i_39\ => pcreg_n_131,
      \q[31]_i_40_0\ => pcreg_n_128,
      \q[31]_i_40_1\ => pcreg_n_135,
      \q[31]_i_40_2\ => pcreg_n_129,
      \q[31]_i_42\ => pcreg_n_132,
      \q[31]_i_58\ => rf_n_125,
      \q[31]_i_5_0\ => alu_n_48,
      \q[31]_i_5_1\ => alu_n_47,
      \q[31]_i_5_2\ => pcreg_n_82,
      \q[31]_i_6\ => rf_n_46,
      \q_reg[0]\ => rf_n_47,
      \q_reg[0]_0\ => rf_n_281,
      \q_reg[0]_1\ => rf_n_284,
      \q_reg[11]\(3) => rf_n_228,
      \q_reg[11]\(2) => rf_n_229,
      \q_reg[11]\(1) => rf_n_230,
      \q_reg[11]\(0) => rf_n_231,
      \q_reg[12]\ => rf_n_110,
      \q_reg[13]\ => rf_n_115,
      \q_reg[13]_0\(9) => SrcA(13),
      \q_reg[13]_0\(8) => SrcA(11),
      \q_reg[13]_0\(7) => SrcA(9),
      \q_reg[13]_0\(6 downto 2) => SrcA(7 downto 3),
      \q_reg[13]_0\(1 downto 0) => SrcA(1 downto 0),
      \q_reg[14]\(2) => rf_n_175,
      \q_reg[14]\(1) => rf_n_176,
      \q_reg[14]\(0) => rf_n_177,
      \q_reg[14]_0\(2) => rf_n_179,
      \q_reg[14]_0\(1) => rf_n_180,
      \q_reg[14]_0\(0) => rf_n_181,
      \q_reg[15]\(3) => rf_n_232,
      \q_reg[15]\(2) => rf_n_233,
      \q_reg[15]\(1) => rf_n_234,
      \q_reg[15]\(0) => rf_n_235,
      \q_reg[16]\ => rf_n_117,
      \q_reg[19]\(6) => \^aluresult\(19),
      \q_reg[19]\(5) => \^aluresult\(17),
      \q_reg[19]\(4) => \^aluresult\(15),
      \q_reg[19]\(3) => \^aluresult\(13),
      \q_reg[19]\(2) => \^aluresult\(11),
      \q_reg[19]\(1 downto 0) => \^aluresult\(9 downto 8),
      \q_reg[19]_0\(3) => rf_n_236,
      \q_reg[19]_0\(2) => rf_n_237,
      \q_reg[19]_0\(1) => rf_n_238,
      \q_reg[19]_0\(0) => rf_n_239,
      \q_reg[1]\ => \^aluresult\(1),
      \q_reg[22]\(1) => rf_n_201,
      \q_reg[22]\(0) => rf_n_202,
      \q_reg[23]\ => rf_n_187,
      \q_reg[23]_0\(3) => rf_n_240,
      \q_reg[23]_0\(2) => rf_n_241,
      \q_reg[23]_0\(1) => rf_n_242,
      \q_reg[23]_0\(0) => rf_n_243,
      \q_reg[27]\(3) => rf_n_244,
      \q_reg[27]\(2) => rf_n_245,
      \q_reg[27]\(1) => rf_n_246,
      \q_reg[27]\(0) => rf_n_247,
      \q_reg[28]\ => \^aluresult\(28),
      \q_reg[28]_0\(14) => d2(28),
      \q_reg[28]_0\(13) => d2(19),
      \q_reg[28]_0\(12) => d2(17),
      \q_reg[28]_0\(11) => d2(15),
      \q_reg[28]_0\(10) => d2(13),
      \q_reg[28]_0\(9) => d2(11),
      \q_reg[28]_0\(8 downto 0) => d2(9 downto 1),
      \q_reg[28]_1\ => pcreg_n_167,
      \q_reg[28]_2\ => alu_n_51,
      \q_reg[2]\ => \^aluresult\(2),
      \q_reg[30]\ => rf_n_191,
      \q_reg[30]_0\(0) => rf_n_197,
      \q_reg[30]_1\ => rf_n_282,
      \q_reg[31]\ => rf_n_53,
      \q_reg[31]_0\(25 downto 19) => result2(30 downto 24),
      \q_reg[31]_0\(18 downto 12) => result2(22 downto 16),
      \q_reg[31]_0\(11 downto 5) => result2(14 downto 8),
      \q_reg[31]_0\(4 downto 2) => result2(6 downto 4),
      \q_reg[31]_0\(1 downto 0) => result2(2 downto 1),
      \q_reg[31]_1\ => rf_n_133,
      \q_reg[31]_2\(2) => rf_n_139,
      \q_reg[31]_2\(1) => rf_n_140,
      \q_reg[31]_2\(0) => rf_n_141,
      \q_reg[31]_3\(3) => rf_n_192,
      \q_reg[31]_3\(2) => rf_n_193,
      \q_reg[31]_3\(1) => rf_n_194,
      \q_reg[31]_3\(0) => rf_n_195,
      \q_reg[31]_4\ => rf_n_198,
      \q_reg[31]_5\(3) => rf_n_260,
      \q_reg[31]_5\(2) => rf_n_261,
      \q_reg[31]_5\(1) => rf_n_262,
      \q_reg[31]_5\(0) => rf_n_263,
      \q_reg[31]_6\(3) => rf_n_268,
      \q_reg[31]_6\(2) => rf_n_269,
      \q_reg[31]_6\(1) => rf_n_270,
      \q_reg[31]_6\(0) => rf_n_271,
      \q_reg[31]_7\(3) => rf_n_272,
      \q_reg[31]_7\(2) => rf_n_273,
      \q_reg[31]_7\(1) => rf_n_274,
      \q_reg[31]_7\(0) => rf_n_275,
      \q_reg[31]_i_2_0\ => pcreg_n_89,
      \q_reg[3]\ => \^aluresult\(3),
      \q_reg[4]\ => \^aluresult\(4),
      \q_reg[5]\ => \^aluresult\(5),
      \q_reg[6]\ => \^aluresult\(6),
      \q_reg[6]_0\ => rf_n_114,
      \q_reg[6]_1\(1) => rf_n_183,
      \q_reg[6]_1\(0) => rf_n_184,
      \q_reg[6]_2\ => rf_n_190,
      \q_reg[7]\ => \^aluresult\(7),
      \q_reg[7]_0\ => rf_n_188,
      \q_reg[7]_1\ => rf_n_189,
      \q_reg[7]_2\(3) => rf_n_277,
      \q_reg[7]_2\(2) => rf_n_278,
      \q_reg[7]_2\(1) => rf_n_279,
      \q_reg[7]_2\(0) => rf_n_280,
      \readDataM[15]\ => rf_n_119,
      \readDataM[31]\ => rf_n_223,
      \readDataM[7]\ => rf_n_94,
      \readDataM[7]_0\ => rf_n_106,
      \readDataM[7]_1\ => rf_n_174,
      \result1_carry__0\ => pcreg_n_202,
      \result1_carry__0_i_3_0\ => pcreg_n_122,
      \result1_carry__0_i_3_1\ => pcreg_n_140,
      \result1_carry__1\ => pcreg_n_120,
      \result1_carry__1_i_11_0\ => pcreg_n_142,
      \result1_carry__2\ => alu_n_49,
      \result1_carry__2_0\ => pcreg_n_124,
      \result1_carry__2_1\ => pcreg_n_151,
      \result1_carry__3_i_11_0\ => pcreg_n_155,
      \result1_carry__3_i_15_0\(3) => rf_n_264,
      \result1_carry__3_i_15_0\(2) => rf_n_265,
      \result1_carry__3_i_15_0\(1) => rf_n_266,
      \result1_carry__3_i_15_0\(0) => rf_n_267,
      \result1_carry__3_i_2_0\ => pcreg_n_152,
      result1_carry_i_6_0 => pcreg_n_138,
      result1_carry_i_6_1 => pcreg_n_150,
      result1_carry_i_6_2 => pcreg_n_121,
      rf_reg_r1_0_31_0_5_i_7 => alu_n_90,
      rf_reg_r1_0_31_0_5_i_8_0 => rf_n_112,
      rf_reg_r1_0_31_0_5_i_9_0 => rf_n_96,
      rf_reg_r1_0_31_6_11_i_13_0 => rf_n_95,
      rf_reg_r1_0_31_6_11_i_7_0(4 downto 2) => \ext/immext\(7 downto 5),
      rf_reg_r1_0_31_6_11_i_7_0(1 downto 0) => \ext/immext\(3 downto 2),
      rf_reg_r2_0_31_12_17_0 => pcadd4_n_43,
      rf_reg_r2_0_31_12_17_1 => pcadd4_n_45,
      rf_reg_r2_0_31_12_17_2 => pcadd4_n_47,
      rf_reg_r2_0_31_18_23_0 => pcadd4_n_49,
      rf_reg_r2_0_31_24_29_0 => pcadd4_n_58,
      \writeDataM[15]\ => alu_n_86,
      \writeDataM[31]\(26 downto 24) => wd3(31 downto 29),
      \writeDataM[31]\(23 downto 16) => wd3(27 downto 20),
      \writeDataM[31]\(15) => wd3(18),
      \writeDataM[31]\(14) => wd3(16),
      \writeDataM[31]\(13) => wd3(14),
      \writeDataM[31]\(12 downto 0) => wd3(12 downto 0),
      y_carry_i_5 => rf_n_286
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscvsingle is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    PC : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemWrite : out STD_LOGIC;
    ALUResult : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemStrobe : out STD_LOGIC;
    PCReady : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscvsingle;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscvsingle is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of MemStrobe_INST_0 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of MemWrite_INST_0 : label is "soft_lutpair28";
begin
MemStrobe_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Instr(6),
      I1 => Instr(4),
      O => MemStrobe
    );
MemWrite_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Instr(6),
      I1 => Instr(5),
      I2 => Instr(4),
      O => MemWrite
    );
dp: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath
     port map (
      ALUResult(31 downto 0) => ALUResult(31 downto 0),
      Instr(29 downto 0) => Instr(31 downto 2),
      PCReady => PCReady,
      Q(31 downto 0) => PC(31 downto 0),
      ReadData(31 downto 0) => ReadData(31 downto 0),
      WriteData(31 downto 0) => WriteData(31 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doneM : in STD_LOGIC;
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    writeDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DRW : out STD_LOGIC;
    AXIStart : out STD_LOGIC
  );
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top : entity is "soft";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  signal Instr : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of Instr : signal is std.standard.true;
  signal MStrobe : STD_LOGIC;
  signal MemWrite : STD_LOGIC;
  signal PC : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of PC : signal is std.standard.true;
  signal PCReady : STD_LOGIC;
  attribute KEEP_HIERARCHY of memcontrol : label is "soft";
  attribute KEEP_HIERARCHY of riscvsingle : label is "soft";
  attribute mark_debug_string : string;
  attribute mark_debug_string of reset : signal is "true";
  attribute mark_debug_string of addressM : signal is "true";
  attribute mark_debug_string of readDataM : signal is "true";
  attribute mark_debug_string of writeDataM : signal is "true";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(31)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(30)
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(21)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(20)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(19)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(18)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(17)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(16)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(15)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(14)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(13)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(12)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(29)
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(11)
    );
i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(10)
    );
i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(9)
    );
i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(8)
    );
i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(7)
    );
i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(6)
    );
i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(5)
    );
i_27: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(4)
    );
i_28: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(3)
    );
i_29: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(2)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(28)
    );
i_30: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(1)
    );
i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(0)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(27)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(26)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(25)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(24)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(23)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(22)
    );
memcontrol: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl
     port map (
      AXIstart => AXIStart,
      DRW => DRW,
      Done => PCReady,
      MStrobe => MStrobe,
      MemWrite => MemWrite,
      Trigger => doneM,
      clk => clk,
      reset => reset
    );
riscvsingle: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscvsingle
     port map (
      ALUResult(31 downto 0) => addressM(31 downto 0),
      Instr(31 downto 2) => Instr(31 downto 2),
      Instr(1 downto 0) => B"00",
      MemStrobe => MStrobe,
      MemWrite => MemWrite,
      PC(31 downto 0) => PC(31 downto 0),
      PCReady => PCReady,
      ReadData(31 downto 0) => readDataM(31 downto 0),
      WriteData(31 downto 0) => writeDataM(31 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doneM : in STD_LOGIC;
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    writeDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DRW : out STD_LOGIC;
    AXIStart : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
     port map (
      AXIStart => AXIStart,
      DRW => DRW,
      addressM(31 downto 0) => addressM(31 downto 0),
      clk => clk,
      doneM => doneM,
      readDataM(31 downto 0) => readDataM(31 downto 0),
      reset => reset,
      writeDataM(31 downto 0) => writeDataM(31 downto 0)
    );
end STRUCTURE;
