-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Apr 11 17:21:14 2025
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
  attribute SOFT_HLUTNM of AXIstart_INST_0 : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of DRW_INST_0 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of Done_INST_0 : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair86";
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
    BranchTargetE : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[31]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder is
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
      O(3 downto 0) => BranchTargetE(3 downto 0),
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
      O(3 downto 0) => BranchTargetE(7 downto 4),
      S(3 downto 0) => \q_reg[7]\(3 downto 0)
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
      O(3 downto 0) => BranchTargetE(11 downto 8),
      S(3 downto 0) => \q_reg[11]\(3 downto 0)
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
      O(3 downto 0) => BranchTargetE(15 downto 12),
      S(3 downto 0) => \q_reg[15]\(3 downto 0)
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
      O(3 downto 0) => BranchTargetE(19 downto 16),
      S(3 downto 0) => \q_reg[19]\(3 downto 0)
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
      O(3 downto 0) => BranchTargetE(23 downto 20),
      S(3 downto 0) => \q_reg[23]\(3 downto 0)
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
      O(3 downto 0) => BranchTargetE(27 downto 24),
      S(3 downto 0) => \q_reg[27]\(3 downto 0)
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
      O(3 downto 0) => BranchTargetE(31 downto 28),
      S(3 downto 0) => \q_reg[31]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 is
  port (
    PCPlus4F : out STD_LOGIC_VECTOR ( 28 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 29 downto 0 )
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
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
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
      CYINIT => Q(0),
      DI(3 downto 0) => Q(4 downto 1),
      O(3 downto 0) => PCPlus4F(3 downto 0),
      S(3 downto 0) => Q(4 downto 1)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(8 downto 5),
      O(3 downto 0) => PCPlus4F(7 downto 4),
      S(3 downto 0) => Q(8 downto 5)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(12 downto 9),
      O(3 downto 0) => PCPlus4F(11 downto 8),
      S(3 downto 0) => Q(12 downto 9)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(16 downto 13),
      O(3 downto 0) => PCPlus4F(15 downto 12),
      S(3 downto 0) => Q(16 downto 13)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(20 downto 17),
      O(3 downto 0) => PCPlus4F(19 downto 16),
      S(3 downto 0) => Q(20 downto 17)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(24 downto 21),
      O(3 downto 0) => PCPlus4F(23 downto 20),
      S(3 downto 0) => Q(24 downto 21)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(28 downto 25),
      O(3 downto 0) => PCPlus4F(27 downto 24),
      S(3 downto 0) => Q(28 downto 25)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3 downto 0) => \NLW_y_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_y_carry__6_O_UNCONNECTED\(3 downto 1),
      O(0) => PCPlus4F(28),
      S(3 downto 1) => B"000",
      S(0) => Q(29)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  port (
    sum : out STD_LOGIC_VECTOR ( 30 downto 0 );
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    data8 : out STD_LOGIC_VECTOR ( 20 downto 0 );
    \i__carry__6_i_7\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \q[104]_i_3\ : in STD_LOGIC;
    SrcAE : in STD_LOGIC_VECTOR ( 19 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[108]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[112]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[116]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[120]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[124]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[128]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[128]_i_3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[132]_i_3\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q[132]_i_3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ltu_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ltu_carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ltu_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ltu_carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ltu_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ltu_carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[104]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[104]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data6 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \q_reg[104]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[108]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[112]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[116]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[120]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[127]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[131]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[134]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  signal \ltu_carry__0_n_0\ : STD_LOGIC;
  signal \ltu_carry__0_n_1\ : STD_LOGIC;
  signal \ltu_carry__0_n_2\ : STD_LOGIC;
  signal \ltu_carry__0_n_3\ : STD_LOGIC;
  signal \ltu_carry__1_n_0\ : STD_LOGIC;
  signal \ltu_carry__1_n_1\ : STD_LOGIC;
  signal \ltu_carry__1_n_2\ : STD_LOGIC;
  signal \ltu_carry__1_n_3\ : STD_LOGIC;
  signal \ltu_carry__2_n_1\ : STD_LOGIC;
  signal \ltu_carry__2_n_2\ : STD_LOGIC;
  signal \ltu_carry__2_n_3\ : STD_LOGIC;
  signal ltu_carry_n_0 : STD_LOGIC;
  signal ltu_carry_n_1 : STD_LOGIC;
  signal ltu_carry_n_2 : STD_LOGIC;
  signal ltu_carry_n_3 : STD_LOGIC;
  signal \result0_inferred__5/i__carry__0_n_0\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__0_n_1\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__0_n_2\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__0_n_3\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__1_n_0\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__1_n_1\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__1_n_2\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__1_n_3\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__2_n_0\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__2_n_1\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__2_n_2\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__2_n_3\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__3_n_0\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__3_n_1\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__3_n_2\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__3_n_3\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__4_n_0\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__4_n_1\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__4_n_2\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__4_n_3\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__5_n_0\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__5_n_1\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__5_n_2\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__5_n_3\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__6_n_1\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__6_n_2\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry__6_n_3\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry_n_0\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry_n_1\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry_n_2\ : STD_LOGIC;
  signal \result0_inferred__5/i__carry_n_3\ : STD_LOGIC;
  signal \sum__0_carry__0_n_0\ : STD_LOGIC;
  signal \sum__0_carry__0_n_1\ : STD_LOGIC;
  signal \sum__0_carry__0_n_2\ : STD_LOGIC;
  signal \sum__0_carry__0_n_3\ : STD_LOGIC;
  signal \sum__0_carry__1_n_0\ : STD_LOGIC;
  signal \sum__0_carry__1_n_1\ : STD_LOGIC;
  signal \sum__0_carry__1_n_2\ : STD_LOGIC;
  signal \sum__0_carry__1_n_3\ : STD_LOGIC;
  signal \sum__0_carry__2_n_0\ : STD_LOGIC;
  signal \sum__0_carry__2_n_1\ : STD_LOGIC;
  signal \sum__0_carry__2_n_2\ : STD_LOGIC;
  signal \sum__0_carry__2_n_3\ : STD_LOGIC;
  signal \sum__0_carry__3_n_0\ : STD_LOGIC;
  signal \sum__0_carry__3_n_1\ : STD_LOGIC;
  signal \sum__0_carry__3_n_2\ : STD_LOGIC;
  signal \sum__0_carry__3_n_3\ : STD_LOGIC;
  signal \sum__0_carry__4_n_0\ : STD_LOGIC;
  signal \sum__0_carry__4_n_1\ : STD_LOGIC;
  signal \sum__0_carry__4_n_2\ : STD_LOGIC;
  signal \sum__0_carry__4_n_3\ : STD_LOGIC;
  signal \sum__0_carry__5_n_0\ : STD_LOGIC;
  signal \sum__0_carry__5_n_1\ : STD_LOGIC;
  signal \sum__0_carry__5_n_2\ : STD_LOGIC;
  signal \sum__0_carry__5_n_3\ : STD_LOGIC;
  signal \sum__0_carry__6_n_1\ : STD_LOGIC;
  signal \sum__0_carry__6_n_2\ : STD_LOGIC;
  signal \sum__0_carry__6_n_3\ : STD_LOGIC;
  signal \sum__0_carry_n_0\ : STD_LOGIC;
  signal \sum__0_carry_n_1\ : STD_LOGIC;
  signal \sum__0_carry_n_2\ : STD_LOGIC;
  signal \sum__0_carry_n_3\ : STD_LOGIC;
  signal NLW_ltu_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltu_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltu_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltu_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result0_inferred__5/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum__0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of ltu_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \ltu_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ltu_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ltu_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \result0_inferred__5/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \result0_inferred__5/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \result0_inferred__5/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \result0_inferred__5/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \result0_inferred__5/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \result0_inferred__5/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \result0_inferred__5/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \result0_inferred__5/i__carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__6\ : label is 35;
begin
ltu_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltu_carry_n_0,
      CO(2) => ltu_carry_n_1,
      CO(1) => ltu_carry_n_2,
      CO(0) => ltu_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \ltu_carry__0_0\(3 downto 0),
      O(3 downto 0) => NLW_ltu_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \ltu_carry__0_1\(3 downto 0)
    );
\ltu_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ltu_carry_n_0,
      CO(3) => \ltu_carry__0_n_0\,
      CO(2) => \ltu_carry__0_n_1\,
      CO(1) => \ltu_carry__0_n_2\,
      CO(0) => \ltu_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ltu_carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_ltu_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ltu_carry__1_1\(3 downto 0)
    );
\ltu_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltu_carry__0_n_0\,
      CO(3) => \ltu_carry__1_n_0\,
      CO(2) => \ltu_carry__1_n_1\,
      CO(1) => \ltu_carry__1_n_2\,
      CO(0) => \ltu_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ltu_carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_ltu_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ltu_carry__2_1\(3 downto 0)
    );
\ltu_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltu_carry__1_n_0\,
      CO(3) => CO(0),
      CO(2) => \ltu_carry__2_n_1\,
      CO(1) => \ltu_carry__2_n_2\,
      CO(0) => \ltu_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \q_reg[104]\(3 downto 0),
      O(3 downto 0) => \NLW_ltu_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \q_reg[104]_0\(3 downto 0)
    );
\result0_inferred__5/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result0_inferred__5/i__carry_n_0\,
      CO(2) => \result0_inferred__5/i__carry_n_1\,
      CO(1) => \result0_inferred__5/i__carry_n_2\,
      CO(0) => \result0_inferred__5/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data6(3 downto 0),
      O(3 downto 0) => data8(3 downto 0),
      S(3 downto 0) => \q_reg[104]_1\(3 downto 0)
    );
\result0_inferred__5/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result0_inferred__5/i__carry_n_0\,
      CO(3) => \result0_inferred__5/i__carry__0_n_0\,
      CO(2) => \result0_inferred__5/i__carry__0_n_1\,
      CO(1) => \result0_inferred__5/i__carry__0_n_2\,
      CO(0) => \result0_inferred__5/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data6(7 downto 4),
      O(3 downto 0) => data8(7 downto 4),
      S(3 downto 0) => \q[108]_i_2\(3 downto 0)
    );
\result0_inferred__5/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result0_inferred__5/i__carry__0_n_0\,
      CO(3) => \result0_inferred__5/i__carry__1_n_0\,
      CO(2) => \result0_inferred__5/i__carry__1_n_1\,
      CO(1) => \result0_inferred__5/i__carry__1_n_2\,
      CO(0) => \result0_inferred__5/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data6(11 downto 8),
      O(3 downto 0) => data8(11 downto 8),
      S(3 downto 0) => \q[112]_i_2\(3 downto 0)
    );
\result0_inferred__5/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result0_inferred__5/i__carry__1_n_0\,
      CO(3) => \result0_inferred__5/i__carry__2_n_0\,
      CO(2) => \result0_inferred__5/i__carry__2_n_1\,
      CO(1) => \result0_inferred__5/i__carry__2_n_2\,
      CO(0) => \result0_inferred__5/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data6(15 downto 12),
      O(3 downto 0) => data8(15 downto 12),
      S(3 downto 0) => \q[116]_i_2\(3 downto 0)
    );
\result0_inferred__5/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result0_inferred__5/i__carry__2_n_0\,
      CO(3) => \result0_inferred__5/i__carry__3_n_0\,
      CO(2) => \result0_inferred__5/i__carry__3_n_1\,
      CO(1) => \result0_inferred__5/i__carry__3_n_2\,
      CO(0) => \result0_inferred__5/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data6(19 downto 16),
      O(3 downto 0) => data8(19 downto 16),
      S(3 downto 0) => \q[120]_i_2\(3 downto 0)
    );
\result0_inferred__5/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \result0_inferred__5/i__carry__3_n_0\,
      CO(3) => \result0_inferred__5/i__carry__4_n_0\,
      CO(2) => \result0_inferred__5/i__carry__4_n_1\,
      CO(1) => \result0_inferred__5/i__carry__4_n_2\,
      CO(0) => \result0_inferred__5/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data6(23 downto 20),
      O(3 downto 0) => \i__carry__6_i_7\(3 downto 0),
      S(3 downto 0) => \q_reg[127]\(3 downto 0)
    );
\result0_inferred__5/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \result0_inferred__5/i__carry__4_n_0\,
      CO(3) => \result0_inferred__5/i__carry__5_n_0\,
      CO(2) => \result0_inferred__5/i__carry__5_n_1\,
      CO(1) => \result0_inferred__5/i__carry__5_n_2\,
      CO(0) => \result0_inferred__5/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data6(27 downto 24),
      O(3 downto 0) => \i__carry__6_i_7\(7 downto 4),
      S(3 downto 0) => \q_reg[131]\(3 downto 0)
    );
\result0_inferred__5/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \result0_inferred__5/i__carry__5_n_0\,
      CO(3) => \NLW_result0_inferred__5/i__carry__6_CO_UNCONNECTED\(3),
      CO(2) => \result0_inferred__5/i__carry__6_n_1\,
      CO(1) => \result0_inferred__5/i__carry__6_n_2\,
      CO(0) => \result0_inferred__5/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => data6(30 downto 28),
      O(3) => data8(20),
      O(2 downto 0) => \i__carry__6_i_7\(10 downto 8),
      S(3 downto 0) => \q_reg[134]\(3 downto 0)
    );
\sum__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum__0_carry_n_0\,
      CO(2) => \sum__0_carry_n_1\,
      CO(1) => \sum__0_carry_n_2\,
      CO(0) => \sum__0_carry_n_3\,
      CYINIT => \q[104]_i_3\,
      DI(3 downto 0) => SrcAE(3 downto 0),
      O(3 downto 0) => sum(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\sum__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry_n_0\,
      CO(3) => \sum__0_carry__0_n_0\,
      CO(2) => \sum__0_carry__0_n_1\,
      CO(1) => \sum__0_carry__0_n_2\,
      CO(0) => \sum__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(7 downto 4),
      O(3 downto 0) => sum(7 downto 4),
      S(3 downto 0) => \q[108]_i_3\(3 downto 0)
    );
\sum__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__0_n_0\,
      CO(3) => \sum__0_carry__1_n_0\,
      CO(2) => \sum__0_carry__1_n_1\,
      CO(1) => \sum__0_carry__1_n_2\,
      CO(0) => \sum__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(11 downto 8),
      O(3 downto 0) => sum(11 downto 8),
      S(3 downto 0) => \q[112]_i_3\(3 downto 0)
    );
\sum__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__1_n_0\,
      CO(3) => \sum__0_carry__2_n_0\,
      CO(2) => \sum__0_carry__2_n_1\,
      CO(1) => \sum__0_carry__2_n_2\,
      CO(0) => \sum__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(15 downto 12),
      O(3 downto 0) => sum(15 downto 12),
      S(3 downto 0) => \q[116]_i_3\(3 downto 0)
    );
\sum__0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__2_n_0\,
      CO(3) => \sum__0_carry__3_n_0\,
      CO(2) => \sum__0_carry__3_n_1\,
      CO(1) => \sum__0_carry__3_n_2\,
      CO(0) => \sum__0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(19 downto 16),
      O(3 downto 0) => sum(19 downto 16),
      S(3 downto 0) => \q[120]_i_3\(3 downto 0)
    );
\sum__0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__3_n_0\,
      CO(3) => \sum__0_carry__4_n_0\,
      CO(2) => \sum__0_carry__4_n_1\,
      CO(1) => \sum__0_carry__4_n_2\,
      CO(0) => \sum__0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => sum(23 downto 20),
      S(3 downto 0) => \q[124]_i_3\(3 downto 0)
    );
\sum__0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__4_n_0\,
      CO(3) => \sum__0_carry__5_n_0\,
      CO(2) => \sum__0_carry__5_n_1\,
      CO(1) => \sum__0_carry__5_n_2\,
      CO(0) => \sum__0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \q[128]_i_3\(3 downto 0),
      O(3 downto 0) => sum(27 downto 24),
      S(3 downto 0) => \q[128]_i_3_0\(3 downto 0)
    );
\sum__0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__5_n_0\,
      CO(3) => \NLW_sum__0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \sum__0_carry__6_n_1\,
      CO(1) => \sum__0_carry__6_n_2\,
      CO(0) => \sum__0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \q[132]_i_3\(2 downto 0),
      O(3) => O(0),
      O(2 downto 0) => sum(30 downto 28),
      S(3 downto 0) => \q[132]_i_3_0\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    PCReadyM : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr is
begin
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(0),
      Q => Q(0)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(4),
      Q => Q(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr__parameterized0\ : entity is "flopenr";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr__parameterized0\ is
begin
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(0),
      Q => Q(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(10),
      Q => Q(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(11),
      Q => Q(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(12),
      Q => Q(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(13),
      Q => Q(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(14),
      Q => Q(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(15),
      Q => Q(15)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(16),
      Q => Q(16)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(17),
      Q => Q(17)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(18),
      Q => Q(18)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(19),
      Q => Q(19)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(1),
      Q => Q(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(20),
      Q => Q(20)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(21),
      Q => Q(21)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(22),
      Q => Q(22)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(23),
      Q => Q(23)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(24),
      Q => Q(24)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(25),
      Q => Q(25)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(26),
      Q => Q(26)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(27),
      Q => Q(27)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(28),
      Q => Q(28)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(29),
      Q => Q(29)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(2),
      Q => Q(2)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(30),
      Q => Q(30)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(31),
      Q => Q(31)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(7),
      Q => Q(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(8),
      Q => Q(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr__parameterized1\ is
  port (
    \q_reg[69]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 135 downto 0 );
    \sum__0_carry_i_13\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PCReadyM : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 135 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr__parameterized1\ : entity is "flopenr";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 135 downto 0 );
begin
  Q(135 downto 0) <= \^q\(135 downto 0);
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(0),
      Q => \^q\(0)
    );
\q_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(100),
      Q => \^q\(100)
    );
\q_reg[101]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(101),
      Q => \^q\(101)
    );
\q_reg[102]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(102),
      Q => \^q\(102)
    );
\q_reg[103]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(103),
      Q => \^q\(103)
    );
\q_reg[104]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(104),
      Q => \^q\(104)
    );
\q_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(105),
      Q => \^q\(105)
    );
\q_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(106),
      Q => \^q\(106)
    );
\q_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(107),
      Q => \^q\(107)
    );
\q_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(108),
      Q => \^q\(108)
    );
\q_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(109),
      Q => \^q\(109)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(10),
      Q => \^q\(10)
    );
\q_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(110),
      Q => \^q\(110)
    );
\q_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(111),
      Q => \^q\(111)
    );
\q_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(112),
      Q => \^q\(112)
    );
\q_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(113),
      Q => \^q\(113)
    );
\q_reg[114]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(114),
      Q => \^q\(114)
    );
\q_reg[115]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(115),
      Q => \^q\(115)
    );
\q_reg[116]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(116),
      Q => \^q\(116)
    );
\q_reg[117]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(117),
      Q => \^q\(117)
    );
\q_reg[118]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(118),
      Q => \^q\(118)
    );
\q_reg[119]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(119),
      Q => \^q\(119)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(11),
      Q => \^q\(11)
    );
\q_reg[120]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(120),
      Q => \^q\(120)
    );
\q_reg[121]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(121),
      Q => \^q\(121)
    );
\q_reg[122]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(122),
      Q => \^q\(122)
    );
\q_reg[123]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(123),
      Q => \^q\(123)
    );
\q_reg[124]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(124),
      Q => \^q\(124)
    );
\q_reg[125]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(125),
      Q => \^q\(125)
    );
\q_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(126),
      Q => \^q\(126)
    );
\q_reg[127]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(127),
      Q => \^q\(127)
    );
\q_reg[128]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(128),
      Q => \^q\(128)
    );
\q_reg[129]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(129),
      Q => \^q\(129)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(12),
      Q => \^q\(12)
    );
\q_reg[130]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(130),
      Q => \^q\(130)
    );
\q_reg[131]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(131),
      Q => \^q\(131)
    );
\q_reg[132]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(132),
      Q => \^q\(132)
    );
\q_reg[133]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(133),
      Q => \^q\(133)
    );
\q_reg[134]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(134),
      Q => \^q\(134)
    );
\q_reg[135]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(135),
      Q => \^q\(135)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(13),
      Q => \^q\(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(14),
      Q => \^q\(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(15),
      Q => \^q\(15)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(16),
      Q => \^q\(16)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(17),
      Q => \^q\(17)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(18),
      Q => \^q\(18)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(19),
      Q => \^q\(19)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(1),
      Q => \^q\(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(20),
      Q => \^q\(20)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(21),
      Q => \^q\(21)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(22),
      Q => \^q\(22)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(23),
      Q => \^q\(23)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(24),
      Q => \^q\(24)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(25),
      Q => \^q\(25)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(26),
      Q => \^q\(26)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(27),
      Q => \^q\(27)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(28),
      Q => \^q\(28)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(29),
      Q => \^q\(29)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(2),
      Q => \^q\(2)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(30),
      Q => \^q\(30)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(31),
      Q => \^q\(31)
    );
\q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(32),
      Q => \^q\(32)
    );
\q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(33),
      Q => \^q\(33)
    );
\q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(34),
      Q => \^q\(34)
    );
\q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(35),
      Q => \^q\(35)
    );
\q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(36),
      Q => \^q\(36)
    );
\q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(37),
      Q => \^q\(37)
    );
\q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(38),
      Q => \^q\(38)
    );
\q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(39),
      Q => \^q\(39)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(3),
      Q => \^q\(3)
    );
\q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(40),
      Q => \^q\(40)
    );
\q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(41),
      Q => \^q\(41)
    );
\q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(42),
      Q => \^q\(42)
    );
\q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(43),
      Q => \^q\(43)
    );
\q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(44),
      Q => \^q\(44)
    );
\q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(45),
      Q => \^q\(45)
    );
\q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(46),
      Q => \^q\(46)
    );
\q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(47),
      Q => \^q\(47)
    );
\q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(48),
      Q => \^q\(48)
    );
\q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(49),
      Q => \^q\(49)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(4),
      Q => \^q\(4)
    );
\q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(50),
      Q => \^q\(50)
    );
\q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(51),
      Q => \^q\(51)
    );
\q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(52),
      Q => \^q\(52)
    );
\q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(53),
      Q => \^q\(53)
    );
\q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(54),
      Q => \^q\(54)
    );
\q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(55),
      Q => \^q\(55)
    );
\q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(56),
      Q => \^q\(56)
    );
\q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(57),
      Q => \^q\(57)
    );
\q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(58),
      Q => \^q\(58)
    );
\q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(59),
      Q => \^q\(59)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(5),
      Q => \^q\(5)
    );
\q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(60),
      Q => \^q\(60)
    );
\q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(61),
      Q => \^q\(61)
    );
\q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(62),
      Q => \^q\(62)
    );
\q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(63),
      Q => \^q\(63)
    );
\q_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(64),
      Q => \^q\(64)
    );
\q_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(65),
      Q => \^q\(65)
    );
\q_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(66),
      Q => \^q\(66)
    );
\q_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(67),
      Q => \^q\(67)
    );
\q_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(68),
      Q => \^q\(68)
    );
\q_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(69),
      Q => \^q\(69)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(6),
      Q => \^q\(6)
    );
\q_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(70),
      Q => \^q\(70)
    );
\q_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(71),
      Q => \^q\(71)
    );
\q_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(72),
      Q => \^q\(72)
    );
\q_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(73),
      Q => \^q\(73)
    );
\q_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(74),
      Q => \^q\(74)
    );
\q_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(75),
      Q => \^q\(75)
    );
\q_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(76),
      Q => \^q\(76)
    );
\q_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(77),
      Q => \^q\(77)
    );
\q_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(78),
      Q => \^q\(78)
    );
\q_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(79),
      Q => \^q\(79)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(7),
      Q => \^q\(7)
    );
\q_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(80),
      Q => \^q\(80)
    );
\q_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(81),
      Q => \^q\(81)
    );
\q_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(82),
      Q => \^q\(82)
    );
\q_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(83),
      Q => \^q\(83)
    );
\q_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(84),
      Q => \^q\(84)
    );
\q_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(85),
      Q => \^q\(85)
    );
\q_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(86),
      Q => \^q\(86)
    );
\q_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(87),
      Q => \^q\(87)
    );
\q_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(88),
      Q => \^q\(88)
    );
\q_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(89),
      Q => \^q\(89)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(8),
      Q => \^q\(8)
    );
\q_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(90),
      Q => \^q\(90)
    );
\q_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(91),
      Q => \^q\(91)
    );
\q_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(92),
      Q => \^q\(92)
    );
\q_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(93),
      Q => \^q\(93)
    );
\q_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(94),
      Q => \^q\(94)
    );
\q_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(95),
      Q => \^q\(95)
    );
\q_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(96),
      Q => \^q\(96)
    );
\q_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(97),
      Q => \^q\(97)
    );
\q_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(98),
      Q => \^q\(98)
    );
\q_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(99),
      Q => \^q\(99)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(9),
      Q => \^q\(9)
    );
\sum__0_carry_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(69),
      I1 => \sum__0_carry_i_13\(0),
      I2 => \sum__0_carry_i_13\(1),
      I3 => \^q\(70),
      O => \q_reg[69]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc is
  port (
    \q_reg[6]_0\ : out STD_LOGIC;
    ALUResultE : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \q_reg[8]_0\ : out STD_LOGIC;
    \q_reg[6]_1\ : out STD_LOGIC;
    \q[31]_i_15_0\ : out STD_LOGIC;
    \v__7\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \q_reg[7]_0\ : out STD_LOGIC;
    \q_reg[6]_2\ : out STD_LOGIC;
    \q_reg[8]_1\ : out STD_LOGIC;
    \q_reg[6]_3\ : out STD_LOGIC;
    \q_reg[9]_0\ : out STD_LOGIC;
    \q_reg[5]_0\ : out STD_LOGIC;
    ltE : in STD_LOGIC;
    \q[31]_i_5\ : in STD_LOGIC;
    data8 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \q_reg[134]\ : in STD_LOGIC;
    \q_reg[134]_0\ : in STD_LOGIC;
    \q_reg[124]\ : in STD_LOGIC;
    \q_reg[124]_0\ : in STD_LOGIC;
    \q_reg[125]\ : in STD_LOGIC;
    \q_reg[125]_0\ : in STD_LOGIC;
    \q_reg[126]\ : in STD_LOGIC;
    \q_reg[126]_0\ : in STD_LOGIC;
    \q_reg[127]\ : in STD_LOGIC;
    \q_reg[127]_0\ : in STD_LOGIC;
    \q_reg[128]\ : in STD_LOGIC;
    \q_reg[128]_0\ : in STD_LOGIC;
    \q_reg[129]\ : in STD_LOGIC;
    \q_reg[129]_0\ : in STD_LOGIC;
    \q_reg[130]\ : in STD_LOGIC;
    \q_reg[130]_0\ : in STD_LOGIC;
    \q_reg[131]\ : in STD_LOGIC;
    \q_reg[131]_0\ : in STD_LOGIC;
    \q_reg[132]\ : in STD_LOGIC;
    \q_reg[132]_0\ : in STD_LOGIC;
    \q_reg[133]\ : in STD_LOGIC;
    \q_reg[133]_0\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    SrcBE : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SrcAE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[134]_1\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \q_reg[179]\ : in STD_LOGIC;
    PCReadyM : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc is
  signal \^aluresulte\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \q[124]_i_2_n_0\ : STD_LOGIC;
  signal \q[125]_i_2_n_0\ : STD_LOGIC;
  signal \q[126]_i_2_n_0\ : STD_LOGIC;
  signal \q[127]_i_2_n_0\ : STD_LOGIC;
  signal \q[128]_i_2_n_0\ : STD_LOGIC;
  signal \q[129]_i_2_n_0\ : STD_LOGIC;
  signal \q[130]_i_2_n_0\ : STD_LOGIC;
  signal \q[131]_i_2_n_0\ : STD_LOGIC;
  signal \q[132]_i_2_n_0\ : STD_LOGIC;
  signal \q[133]_i_2_n_0\ : STD_LOGIC;
  signal \q[134]_i_2_n_0\ : STD_LOGIC;
  signal \q[31]_i_15_n_0\ : STD_LOGIC;
  signal \q[31]_i_16_n_0\ : STD_LOGIC;
  signal \^q_reg[6]_1\ : STD_LOGIC;
  signal \^q_reg[8]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[134]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[135]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[135]_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q[135]_i_7\ : label is "soft_lutpair1";
begin
  ALUResultE(10 downto 0) <= \^aluresulte\(10 downto 0);
  Q(11 downto 0) <= \^q\(11 downto 0);
  \q_reg[6]_1\ <= \^q_reg[6]_1\;
  \q_reg[8]_0\ <= \^q_reg[8]_0\;
\q[104]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => \q_reg[6]_3\
    );
\q[104]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005010050000010"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => O(0),
      I3 => SrcBE(12),
      I4 => \^q\(2),
      I5 => SrcAE(0),
      O => \v__7\
    );
\q[124]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAEAEAEAEA"
    )
        port map (
      I0 => \q[124]_i_2_n_0\,
      I1 => \^q_reg[8]_0\,
      I2 => data8(0),
      I3 => \q_reg[124]\,
      I4 => \q_reg[124]_0\,
      I5 => \^q_reg[6]_1\,
      O => \^aluresulte\(0)
    );
\q[124]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100100010000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \q_reg[134]_1\(0),
      I5 => SrcBE(1),
      O => \q[124]_i_2_n_0\
    );
\q[125]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAEAEAEAEA"
    )
        port map (
      I0 => \q[125]_i_2_n_0\,
      I1 => \^q_reg[8]_0\,
      I2 => data8(1),
      I3 => \q_reg[125]\,
      I4 => \q_reg[125]_0\,
      I5 => \^q_reg[6]_1\,
      O => \^aluresulte\(1)
    );
\q[125]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100100010000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \q_reg[134]_1\(1),
      I5 => SrcBE(2),
      O => \q[125]_i_2_n_0\
    );
\q[126]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAEAEAEAEA"
    )
        port map (
      I0 => \q[126]_i_2_n_0\,
      I1 => \^q_reg[8]_0\,
      I2 => data8(2),
      I3 => \q_reg[126]\,
      I4 => \q_reg[126]_0\,
      I5 => \^q_reg[6]_1\,
      O => \^aluresulte\(2)
    );
\q[126]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100100010000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \q_reg[134]_1\(2),
      I5 => SrcBE(3),
      O => \q[126]_i_2_n_0\
    );
\q[127]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAEAEAEAEA"
    )
        port map (
      I0 => \q[127]_i_2_n_0\,
      I1 => \^q_reg[8]_0\,
      I2 => data8(3),
      I3 => \q_reg[127]\,
      I4 => \q_reg[127]_0\,
      I5 => \^q_reg[6]_1\,
      O => \^aluresulte\(3)
    );
\q[127]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100100010000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \q_reg[134]_1\(3),
      I5 => SrcBE(4),
      O => \q[127]_i_2_n_0\
    );
\q[128]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAEAEAEAEA"
    )
        port map (
      I0 => \q[128]_i_2_n_0\,
      I1 => \^q_reg[8]_0\,
      I2 => data8(4),
      I3 => \q_reg[128]\,
      I4 => \q_reg[128]_0\,
      I5 => \^q_reg[6]_1\,
      O => \^aluresulte\(4)
    );
\q[128]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100100010000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \q_reg[134]_1\(4),
      I5 => SrcBE(5),
      O => \q[128]_i_2_n_0\
    );
\q[129]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAEAEAEAEA"
    )
        port map (
      I0 => \q[129]_i_2_n_0\,
      I1 => \^q_reg[8]_0\,
      I2 => data8(5),
      I3 => \q_reg[129]\,
      I4 => \q_reg[129]_0\,
      I5 => \^q_reg[6]_1\,
      O => \^aluresulte\(5)
    );
\q[129]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100100010000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \q_reg[134]_1\(5),
      I5 => SrcBE(6),
      O => \q[129]_i_2_n_0\
    );
\q[130]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAEAEAEAEA"
    )
        port map (
      I0 => \q[130]_i_2_n_0\,
      I1 => \^q_reg[8]_0\,
      I2 => data8(6),
      I3 => \q_reg[130]\,
      I4 => \q_reg[130]_0\,
      I5 => \^q_reg[6]_1\,
      O => \^aluresulte\(6)
    );
\q[130]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100100010000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \q_reg[134]_1\(6),
      I5 => SrcBE(7),
      O => \q[130]_i_2_n_0\
    );
\q[131]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAEAEAEAEA"
    )
        port map (
      I0 => \q[131]_i_2_n_0\,
      I1 => \^q_reg[8]_0\,
      I2 => data8(7),
      I3 => \q_reg[131]\,
      I4 => \q_reg[131]_0\,
      I5 => \^q_reg[6]_1\,
      O => \^aluresulte\(7)
    );
\q[131]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100100010000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \q_reg[134]_1\(7),
      I5 => SrcBE(8),
      O => \q[131]_i_2_n_0\
    );
\q[132]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAEAEAEAEA"
    )
        port map (
      I0 => \q[132]_i_2_n_0\,
      I1 => \^q_reg[8]_0\,
      I2 => data8(8),
      I3 => \q_reg[132]\,
      I4 => \q_reg[132]_0\,
      I5 => \^q_reg[6]_1\,
      O => \^aluresulte\(8)
    );
\q[132]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100100010000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \q_reg[134]_1\(8),
      I5 => SrcBE(9),
      O => \q[132]_i_2_n_0\
    );
\q[133]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAEAEAEAEA"
    )
        port map (
      I0 => \q[133]_i_2_n_0\,
      I1 => \^q_reg[8]_0\,
      I2 => data8(9),
      I3 => \q_reg[133]\,
      I4 => \q_reg[133]_0\,
      I5 => \^q_reg[6]_1\,
      O => \^aluresulte\(9)
    );
\q[133]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100100010000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \q_reg[134]_1\(9),
      I5 => SrcBE(10),
      O => \q[133]_i_2_n_0\
    );
\q[134]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAEAEAEAEA"
    )
        port map (
      I0 => \q[134]_i_2_n_0\,
      I1 => \^q_reg[8]_0\,
      I2 => data8(10),
      I3 => \q_reg[134]\,
      I4 => \q_reg[134]_0\,
      I5 => \^q_reg[6]_1\,
      O => \^aluresulte\(10)
    );
\q[134]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100100010000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \q_reg[134]_1\(10),
      I5 => SrcBE(11),
      O => \q[134]_i_2_n_0\
    );
\q[134]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      O => \^q_reg[8]_0\
    );
\q[134]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      O => \q_reg[7]_0\
    );
\q[135]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(4),
      O => \q_reg[6]_2\
    );
\q[135]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(5),
      O => \^q_reg[6]_1\
    );
\q[135]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(4),
      O => \q_reg[8]_1\
    );
\q[179]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \q_reg[179]\,
      O => \q_reg[9]_0\
    );
\q[31]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => ltE,
      I1 => \^aluresulte\(10),
      I2 => \q[31]_i_15_n_0\,
      I3 => \q[31]_i_16_n_0\,
      I4 => \q[31]_i_5\,
      O => \q_reg[6]_0\
    );
\q[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^aluresulte\(6),
      I1 => \^aluresulte\(7),
      I2 => \^aluresulte\(4),
      I3 => \^aluresulte\(5),
      I4 => \^aluresulte\(9),
      I5 => \^aluresulte\(8),
      O => \q[31]_i_15_n_0\
    );
\q[31]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^aluresulte\(1),
      I1 => \^aluresulte\(0),
      I2 => \^aluresulte\(3),
      I3 => \^aluresulte\(2),
      O => \q[31]_i_16_n_0\
    );
\q[95]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \q[31]_i_5\,
      I1 => \^aluresulte\(1),
      I2 => \^aluresulte\(0),
      I3 => \^aluresulte\(3),
      I4 => \^aluresulte\(2),
      I5 => \q[31]_i_15_n_0\,
      O => \q[31]_i_15_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(0),
      Q => \^q\(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(7),
      Q => \^q\(7)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(8),
      Q => \^q\(8)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(9),
      Q => \^q\(9)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(10),
      Q => \^q\(10)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(11),
      Q => \^q\(11)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(1),
      Q => \^q\(1)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(2),
      Q => \^q\(2)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(3),
      Q => \^q\(3)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(4),
      Q => \^q\(4)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(5),
      Q => \^q\(5)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => D(6),
      Q => \^q\(6)
    );
\sum__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => SrcBE(0),
      O => \q_reg[5]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[70]_0\ : out STD_LOGIC;
    ALUOpD : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[66]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 89 downto 0 );
    \q_reg[94]_0\ : out STD_LOGIC_VECTOR ( 18 downto 0 );
    \q_reg[79]_0\ : out STD_LOGIC;
    \q_reg[84]_0\ : out STD_LOGIC;
    \rd11__3\ : out STD_LOGIC;
    \rd21__3\ : out STD_LOGIC;
    \q_reg[84]_1\ : out STD_LOGIC;
    \q_reg[85]_0\ : out STD_LOGIC;
    \q_reg[86]_0\ : out STD_LOGIC;
    \q_reg[87]_0\ : out STD_LOGIC;
    \q_reg[88]_0\ : out STD_LOGIC;
    \q_reg[95]_0\ : out STD_LOGIC;
    \controls__21\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[66]_1\ : out STD_LOGIC;
    \q_reg[66]_2\ : out STD_LOGIC;
    \q_reg[77]_0\ : out STD_LOGIC;
    \q_reg[78]_0\ : out STD_LOGIC;
    \q_reg[70]_1\ : out STD_LOGIC;
    \q_reg[68]_0\ : out STD_LOGIC;
    \q_reg[5]_0\ : in STD_LOGIC;
    \q_reg[5]_1\ : in STD_LOGIC;
    \q_reg[5]_2\ : in STD_LOGIC;
    \q[31]_i_3\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[95]_1\ : in STD_LOGIC_VECTOR ( 92 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc__parameterized0\ : entity is "flopenrc";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc__parameterized0\ is
  signal \^aluopd\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ImmSrcD : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 89 downto 0 );
  signal opD : STD_LOGIC_VECTOR ( 6 downto 3 );
  signal \q[12]_i_2_n_0\ : STD_LOGIC;
  signal \q[41]_i_3_n_0\ : STD_LOGIC;
  signal \q[49]_i_2_n_0\ : STD_LOGIC;
  signal \q[50]_i_2_n_0\ : STD_LOGIC;
  signal \q[51]_i_2_n_0\ : STD_LOGIC;
  signal \q[52]_i_2_n_0\ : STD_LOGIC;
  signal \q[53]_i_2_n_0\ : STD_LOGIC;
  signal \q[54]_i_2_n_0\ : STD_LOGIC;
  signal \q[55]_i_2_n_0\ : STD_LOGIC;
  signal \q[56]_i_2_n_0\ : STD_LOGIC;
  signal \q[5]_i_2_n_0\ : STD_LOGIC;
  signal \q[6]_i_2_n_0\ : STD_LOGIC;
  signal \q[6]_i_3_n_0\ : STD_LOGIC;
  signal \^q_reg[66]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^q_reg[70]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[10]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q[11]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q[12]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q[14]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q[38]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q[39]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q[40]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q[41]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q[41]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q[48]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q[53]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q[54]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q[55]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q[56]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q[67]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q[6]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q[7]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q[8]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q[8]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q[9]_i_2\ : label is "soft_lutpair7";
begin
  ALUOpD(0) <= \^aluopd\(0);
  Q(89 downto 0) <= \^q\(89 downto 0);
  \q_reg[66]_0\(1 downto 0) <= \^q_reg[66]_0\(1 downto 0);
  \q_reg[70]_0\ <= \^q_reg[70]_0\;
\q[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => opD(4),
      I1 => opD(6),
      O => \q_reg[68]_0\
    );
\q[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(63),
      I1 => opD(6),
      O => \q_reg[66]_2\
    );
\q[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => opD(6),
      I1 => \^q\(64),
      I2 => opD(4),
      O => \controls__21\(0)
    );
\q[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C000000080"
    )
        port map (
      I0 => \^q_reg[66]_0\(1),
      I1 => \^q\(62),
      I2 => \q_reg[5]_2\,
      I3 => \q_reg[5]_1\,
      I4 => \q_reg[5]_0\,
      I5 => \q[12]_i_2_n_0\,
      O => D(2)
    );
\q[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(64),
      I1 => opD(4),
      I2 => \^q\(63),
      O => \q[12]_i_2_n_0\
    );
\q[147]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(82),
      I1 => \^q\(78),
      I2 => \^q\(79),
      I3 => \^q\(80),
      I4 => \^q\(81),
      O => \rd21__3\
    );
\q[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^q\(63),
      I1 => opD(4),
      I2 => \^q\(64),
      O => \q_reg[66]_1\
    );
\q[179]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(77),
      I1 => \^q\(73),
      I2 => \^q\(74),
      I3 => \^q\(75),
      I4 => \^q\(76),
      O => \rd11__3\
    );
\q[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(73),
      I1 => \q[31]_i_3\(0),
      I2 => \^q\(74),
      I3 => \q[31]_i_3\(1),
      O => \q_reg[79]_0\
    );
\q[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(78),
      I1 => \q[31]_i_3\(0),
      I2 => \^q\(79),
      I3 => \q[31]_i_3\(1),
      O => \q_reg[84]_0\
    );
\q[37]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E2E2E200E2"
    )
        port map (
      I0 => \^q\(78),
      I1 => ImmSrcD(0),
      I2 => \^q\(65),
      I3 => opD(6),
      I4 => \^q\(63),
      I5 => opD(3),
      O => \q_reg[84]_1\
    );
\q[38]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(79),
      I1 => \q[41]_i_3_n_0\,
      I2 => \^q\(66),
      O => \q_reg[85]_0\
    );
\q[39]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(80),
      I1 => \q[41]_i_3_n_0\,
      I2 => \^q\(67),
      O => \q_reg[86]_0\
    );
\q[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => opD(3),
      I1 => \^q\(63),
      I2 => opD(6),
      O => \^q_reg[66]_0\(0)
    );
\q[40]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(81),
      I1 => \q[41]_i_3_n_0\,
      I2 => \^q\(68),
      O => \q_reg[87]_0\
    );
\q[41]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(82),
      I1 => \q[41]_i_3_n_0\,
      I2 => \^q\(69),
      O => \q_reg[88]_0\
    );
\q[41]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEBB8B"
    )
        port map (
      I0 => \^q\(63),
      I1 => opD(6),
      I2 => \^q\(64),
      I3 => opD(4),
      I4 => opD(3),
      O => \q[41]_i_3_n_0\
    );
\q[48]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => \^q\(89),
      I1 => \^q\(65),
      I2 => \^q_reg[66]_0\(0),
      I3 => ImmSrcD(0),
      I4 => \^q\(78),
      O => \q_reg[95]_0\
    );
\q[48]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => opD(3),
      I1 => opD(4),
      I2 => \^q\(64),
      I3 => opD(6),
      O => ImmSrcD(0)
    );
\q[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(70),
      I1 => \q[49]_i_2_n_0\,
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(0)
    );
\q[49]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1FE000"
    )
        port map (
      I0 => \^q\(63),
      I1 => opD(6),
      I2 => opD(3),
      I3 => \^q\(70),
      I4 => \^q\(89),
      O => \q[49]_i_2_n_0\
    );
\q[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000D1D00000000"
    )
        port map (
      I0 => opD(6),
      I1 => \^q\(63),
      I2 => opD(4),
      I3 => \^q\(64),
      I4 => opD(3),
      I5 => \^q\(62),
      O => \q_reg[70]_1\
    );
\q[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(71),
      I1 => \q[50]_i_2_n_0\,
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(1)
    );
\q[50]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1FE000"
    )
        port map (
      I0 => \^q\(63),
      I1 => opD(6),
      I2 => opD(3),
      I3 => \^q\(71),
      I4 => \^q\(89),
      O => \q[50]_i_2_n_0\
    );
\q[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(72),
      I1 => \q[51]_i_2_n_0\,
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(2)
    );
\q[51]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1FE000"
    )
        port map (
      I0 => \^q\(63),
      I1 => opD(6),
      I2 => opD(3),
      I3 => \^q\(72),
      I4 => \^q\(89),
      O => \q[51]_i_2_n_0\
    );
\q[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(73),
      I1 => \q[52]_i_2_n_0\,
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(3)
    );
\q[52]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1FE000"
    )
        port map (
      I0 => \^q\(63),
      I1 => opD(6),
      I2 => opD(3),
      I3 => \^q\(73),
      I4 => \^q\(89),
      O => \q[52]_i_2_n_0\
    );
\q[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(74),
      I1 => \q[53]_i_2_n_0\,
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(4)
    );
\q[53]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1FE000"
    )
        port map (
      I0 => \^q\(63),
      I1 => opD(6),
      I2 => opD(3),
      I3 => \^q\(74),
      I4 => \^q\(89),
      O => \q[53]_i_2_n_0\
    );
\q[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(75),
      I1 => \q[54]_i_2_n_0\,
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(5)
    );
\q[54]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1FE000"
    )
        port map (
      I0 => \^q\(63),
      I1 => opD(6),
      I2 => opD(3),
      I3 => \^q\(75),
      I4 => \^q\(89),
      O => \q[54]_i_2_n_0\
    );
\q[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(76),
      I1 => \q[55]_i_2_n_0\,
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(6)
    );
\q[55]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1FE000"
    )
        port map (
      I0 => \^q\(63),
      I1 => opD(6),
      I2 => opD(3),
      I3 => \^q\(76),
      I4 => \^q\(89),
      O => \q[55]_i_2_n_0\
    );
\q[56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(77),
      I1 => \q[56]_i_2_n_0\,
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(7)
    );
\q[56]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1FE000"
    )
        port map (
      I0 => \^q\(63),
      I1 => opD(6),
      I2 => opD(3),
      I3 => \^q\(77),
      I4 => \^q\(89),
      O => \q[56]_i_2_n_0\
    );
\q[57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(78),
      I1 => \^q\(89),
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(8)
    );
\q[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(79),
      I1 => \^q\(89),
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(9)
    );
\q[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(80),
      I1 => \^q\(89),
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(10)
    );
\q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200020003000000"
    )
        port map (
      I0 => \q[5]_i_2_n_0\,
      I1 => \q_reg[5]_0\,
      I2 => \q_reg[5]_1\,
      I3 => \q_reg[5]_2\,
      I4 => \^q_reg[70]_0\,
      I5 => \^aluopd\(0),
      O => D(0)
    );
\q[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF008"
    )
        port map (
      I0 => \^q\(88),
      I1 => \^q\(64),
      I2 => \^q\(70),
      I3 => \^q\(72),
      I4 => \^q\(71),
      O => \q[5]_i_2_n_0\
    );
\q[60]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(81),
      I1 => \^q\(89),
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(11)
    );
\q[61]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(82),
      I1 => \^q\(89),
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(12)
    );
\q[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(83),
      I1 => \^q\(89),
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(13)
    );
\q[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(84),
      I1 => \^q\(89),
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(14)
    );
\q[64]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(85),
      I1 => \^q\(89),
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(15)
    );
\q[65]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(86),
      I1 => \^q\(89),
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(16)
    );
\q[66]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(87),
      I1 => \^q\(89),
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(17)
    );
\q[67]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^q\(88),
      I1 => \^q\(89),
      I2 => \^q_reg[66]_0\(1),
      I3 => \q_reg[5]_2\,
      I4 => \q_reg[5]_1\,
      I5 => \q_reg[5]_0\,
      O => \q_reg[94]_0\(18)
    );
\q[67]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(63),
      I1 => opD(6),
      O => \^q_reg[66]_0\(1)
    );
\q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C000000080"
    )
        port map (
      I0 => \q[6]_i_2_n_0\,
      I1 => \^aluopd\(0),
      I2 => \q_reg[5]_2\,
      I3 => \q_reg[5]_1\,
      I4 => \q_reg[5]_0\,
      I5 => \q[6]_i_3_n_0\,
      O => D(1)
    );
\q[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(71),
      I1 => \^q\(72),
      O => \q[6]_i_2_n_0\
    );
\q[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(70),
      I1 => \^q\(71),
      O => \q[6]_i_3_n_0\
    );
\q[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \^q\(72),
      I1 => \^q\(70),
      I2 => \^q\(71),
      O => \q_reg[78]_0\
    );
\q[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6200"
    )
        port map (
      I0 => \^q\(71),
      I1 => \^q\(72),
      I2 => \^q\(88),
      I3 => \^q\(70),
      O => \q_reg[77]_0\
    );
\q[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => opD(4),
      I1 => \^q\(63),
      O => \^aluopd\(0)
    );
\q[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => opD(6),
      I1 => \^q\(63),
      O => \^q_reg[70]_0\
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(8),
      Q => \^q\(8)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(9),
      Q => \^q\(9)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(10),
      Q => \^q\(10)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(11),
      Q => \^q\(11)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(12),
      Q => \^q\(12)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(13),
      Q => \^q\(13)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(14),
      Q => \^q\(14)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(15),
      Q => \^q\(15)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(16),
      Q => \^q\(16)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(17),
      Q => \^q\(17)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(18),
      Q => \^q\(18)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(19),
      Q => \^q\(19)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(20),
      Q => \^q\(20)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(21),
      Q => \^q\(21)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(22),
      Q => \^q\(22)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(23),
      Q => \^q\(23)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(24),
      Q => \^q\(24)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(25),
      Q => \^q\(25)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(26),
      Q => \^q\(26)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(27),
      Q => \^q\(27)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(0),
      Q => \^q\(0)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(28),
      Q => \^q\(28)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(29),
      Q => \^q\(29)
    );
\q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(30),
      Q => \^q\(30)
    );
\q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(31),
      Q => \^q\(31)
    );
\q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(32),
      Q => \^q\(32)
    );
\q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(33),
      Q => \^q\(33)
    );
\q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(34),
      Q => \^q\(34)
    );
\q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(35),
      Q => \^q\(35)
    );
\q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(36),
      Q => \^q\(36)
    );
\q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(37),
      Q => \^q\(37)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(1),
      Q => \^q\(1)
    );
\q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(38),
      Q => \^q\(38)
    );
\q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(39),
      Q => \^q\(39)
    );
\q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(40),
      Q => \^q\(40)
    );
\q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(41),
      Q => \^q\(41)
    );
\q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(42),
      Q => \^q\(42)
    );
\q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(43),
      Q => \^q\(43)
    );
\q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(44),
      Q => \^q\(44)
    );
\q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(45),
      Q => \^q\(45)
    );
\q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(46),
      Q => \^q\(46)
    );
\q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(47),
      Q => \^q\(47)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(2),
      Q => \^q\(2)
    );
\q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(48),
      Q => \^q\(48)
    );
\q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(49),
      Q => \^q\(49)
    );
\q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(50),
      Q => \^q\(50)
    );
\q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(51),
      Q => \^q\(51)
    );
\q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(52),
      Q => \^q\(52)
    );
\q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(53),
      Q => \^q\(53)
    );
\q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(54),
      Q => \^q\(54)
    );
\q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(55),
      Q => \^q\(55)
    );
\q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(56),
      Q => \^q\(56)
    );
\q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(57),
      Q => \^q\(57)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(3),
      Q => \^q\(3)
    );
\q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(58),
      Q => \^q\(58)
    );
\q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(59),
      Q => \^q\(59)
    );
\q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(60),
      Q => \^q\(60)
    );
\q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(61),
      Q => \^q\(61)
    );
\q_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(62),
      Q => \^q\(62)
    );
\q_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(63),
      Q => \^q\(63)
    );
\q_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(64),
      Q => opD(3)
    );
\q_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(65),
      Q => opD(4)
    );
\q_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(66),
      Q => \^q\(64)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(4),
      Q => \^q\(4)
    );
\q_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(67),
      Q => opD(6)
    );
\q_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(68),
      Q => \^q\(65)
    );
\q_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(69),
      Q => \^q\(66)
    );
\q_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(70),
      Q => \^q\(67)
    );
\q_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(71),
      Q => \^q\(68)
    );
\q_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(72),
      Q => \^q\(69)
    );
\q_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(73),
      Q => \^q\(70)
    );
\q_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(74),
      Q => \^q\(71)
    );
\q_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(75),
      Q => \^q\(72)
    );
\q_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(76),
      Q => \^q\(73)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(5),
      Q => \^q\(5)
    );
\q_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(77),
      Q => \^q\(74)
    );
\q_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(78),
      Q => \^q\(75)
    );
\q_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(79),
      Q => \^q\(76)
    );
\q_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(80),
      Q => \^q\(77)
    );
\q_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(81),
      Q => \^q\(78)
    );
\q_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(82),
      Q => \^q\(79)
    );
\q_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(83),
      Q => \^q\(80)
    );
\q_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(84),
      Q => \^q\(81)
    );
\q_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(85),
      Q => \^q\(82)
    );
\q_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(86),
      Q => \^q\(83)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(6),
      Q => \^q\(6)
    );
\q_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(87),
      Q => \^q\(84)
    );
\q_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(88),
      Q => \^q\(85)
    );
\q_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(89),
      Q => \^q\(86)
    );
\q_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(90),
      Q => \^q\(87)
    );
\q_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(91),
      Q => \^q\(88)
    );
\q_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(92),
      Q => \^q\(89)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_1\(7),
      Q => \^q\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 124 downto 0 );
    \q_reg[68]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \q_reg[65]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \q_reg[12]_0\ : out STD_LOGIC;
    \q_reg[10]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[37]_0\ : out STD_LOGIC;
    \q_reg[179]_0\ : out STD_LOGIC;
    \q_reg[3]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[0]_0\ : out STD_LOGIC;
    \q_reg[0]_1\ : out STD_LOGIC_VECTOR ( 92 downto 0 );
    data6 : out STD_LOGIC_VECTOR ( 30 downto 0 );
    SrcAE : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \q_reg[5]\ : out STD_LOGIC;
    \q_reg[178]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[5]_0\ : out STD_LOGIC;
    \q_reg[5]_1\ : out STD_LOGIC;
    \q_reg[5]_2\ : out STD_LOGIC;
    \q_reg[5]_3\ : out STD_LOGIC;
    \q_reg[6]\ : out STD_LOGIC;
    \q_reg[5]_4\ : out STD_LOGIC;
    \q_reg[5]_5\ : out STD_LOGIC;
    \q_reg[5]_6\ : out STD_LOGIC;
    \q_reg[5]_7\ : out STD_LOGIC;
    \q_reg[5]_8\ : out STD_LOGIC;
    \q_reg[5]_9\ : out STD_LOGIC;
    \q_reg[43]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[68]_1\ : out STD_LOGIC;
    \q_reg[179]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[67]_0\ : out STD_LOGIC;
    \q_reg[67]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[5]_10\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[175]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[51]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[59]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[6]_0\ : out STD_LOGIC;
    \q_reg[57]_0\ : out STD_LOGIC;
    \q_reg[58]_0\ : out STD_LOGIC;
    \q_reg[6]_1\ : out STD_LOGIC;
    \q_reg[59]_1\ : out STD_LOGIC;
    \q_reg[60]_0\ : out STD_LOGIC;
    \q_reg[6]_2\ : out STD_LOGIC;
    \q_reg[61]_0\ : out STD_LOGIC;
    \q_reg[62]_0\ : out STD_LOGIC;
    \q_reg[6]_3\ : out STD_LOGIC;
    \q_reg[63]_0\ : out STD_LOGIC;
    \q_reg[64]_0\ : out STD_LOGIC;
    \q_reg[6]_4\ : out STD_LOGIC;
    \q_reg[65]_1\ : out STD_LOGIC;
    \q_reg[66]_0\ : out STD_LOGIC;
    \q_reg[6]_5\ : out STD_LOGIC;
    \q_reg[179]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[44]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[48]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[52]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[56]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[60]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[64]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[5]_11\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[5]_12\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[5]_13\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[5]_14\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[5]_15\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[5]_16\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[5]_17\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[37]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[37]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[37]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[37]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[37]_5\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \i__carry_i_15_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \i__carry_i_15_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[44]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[52]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[60]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[6]_6\ : out STD_LOGIC;
    \q_reg[6]_7\ : out STD_LOGIC;
    \q_reg[6]_8\ : out STD_LOGIC;
    \q_reg[6]_9\ : out STD_LOGIC;
    \q_reg[6]_10\ : out STD_LOGIC;
    PCReadyM : in STD_LOGIC;
    \q_reg[67]_2\ : in STD_LOGIC_VECTOR ( 18 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \q_reg[4]_0\ : in STD_LOGIC;
    \q_reg[4]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_reg[179]_3\ : in STD_LOGIC;
    ALUOpD : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[7]_0\ : in STD_LOGIC;
    \q_reg[8]_0\ : in STD_LOGIC;
    \q_reg[9]_0\ : in STD_LOGIC;
    \q_reg[10]_1\ : in STD_LOGIC;
    \controls__21\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[68]_2\ : in STD_LOGIC_VECTOR ( 89 downto 0 );
    \q_reg[0]_2\ : in STD_LOGIC;
    \q_reg[14]_0\ : in STD_LOGIC;
    \q_reg[37]_6\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[37]_7\ : in STD_LOGIC;
    \q_reg[38]_0\ : in STD_LOGIC;
    \q_reg[39]_0\ : in STD_LOGIC;
    \q_reg[40]_0\ : in STD_LOGIC;
    \q_reg[41]_0\ : in STD_LOGIC;
    \q_reg[48]_1\ : in STD_LOGIC;
    \rd21__3\ : in STD_LOGIC;
    rd20 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rd11__3\ : in STD_LOGIC;
    rd10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[4]_2\ : in STD_LOGIC;
    \q_reg[4]_3\ : in STD_LOGIC;
    \q_reg[63]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BranchTargetE : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PCPlus4F : in STD_LOGIC_VECTOR ( 28 downto 0 );
    \q_reg[30]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    InstrF : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \q_reg[2]_0\ : in STD_LOGIC;
    \q_reg[95]_0\ : in STD_LOGIC;
    \q_reg[135]_0\ : in STD_LOGIC;
    \q_reg[135]_1\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    data8 : in STD_LOGIC_VECTOR ( 20 downto 0 );
    sum : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \q_reg[133]_0\ : in STD_LOGIC;
    \v__7\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    ResultW : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[103]_0\ : in STD_LOGIC_VECTOR ( 36 downto 0 );
    \q_reg[123]_0\ : in STD_LOGIC;
    \q_reg[123]_1\ : in STD_LOGIC;
    \sum__0_carry_i_11_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \q_reg[76]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[76]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sum__0_carry_i_4_0\ : in STD_LOGIC;
    \sum__0_carry_i_4_1\ : in STD_LOGIC;
    \q_reg[104]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc__parameterized1\ : entity is "flopenrc";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc__parameterized1\ is
  signal \^d\ : STD_LOGIC_VECTOR ( 124 downto 0 );
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ForwardAE : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ForwardBE : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ImmExtE : STD_LOGIC_VECTOR ( 31 to 31 );
  signal ImmSrcb1E : STD_LOGIC;
  signal PCE : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \^q\ : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal RD1E : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RD2E : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Rs1E : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Rs2E : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^srcae\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal SrcBE : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \alu/result00_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \c/PCSrcE2__5\ : STD_LOGIC;
  signal \^data6\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \hu/ForwardAE11_out\ : STD_LOGIC;
  signal \hu/ForwardBE10_out\ : STD_LOGIC;
  signal \i__carry__0_i_10_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_12_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_13_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_14_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_15_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_16_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_10_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_12_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_13_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_14_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_15_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_16_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_17_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_18_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_9_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_10_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_12_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_13_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_14_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_15_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_16_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_17_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_18_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_9_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_10_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_12_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_13_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_14_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_15_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_16_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_17_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_18_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_19_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_20_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_21_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_22_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_23_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_24_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_25_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_9_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_10_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_12_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_13_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_14_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_9_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_10_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_12_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_13_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_14_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_15_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_9_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_10_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_12_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_13_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_9_n_0\ : STD_LOGIC;
  signal \i__carry_i_10_n_0\ : STD_LOGIC;
  signal \i__carry_i_11_n_0\ : STD_LOGIC;
  signal \i__carry_i_12_n_0\ : STD_LOGIC;
  signal \i__carry_i_13_n_0\ : STD_LOGIC;
  signal \i__carry_i_14_n_0\ : STD_LOGIC;
  signal \i__carry_i_15_n_0\ : STD_LOGIC;
  signal \i__carry_i_16_n_0\ : STD_LOGIC;
  signal \i__carry_i_17_n_0\ : STD_LOGIC;
  signal \i__carry_i_18_n_0\ : STD_LOGIC;
  signal \i__carry_i_19_n_0\ : STD_LOGIC;
  signal \i__carry_i_20_n_0\ : STD_LOGIC;
  signal \i__carry_i_21_n_0\ : STD_LOGIC;
  signal \i__carry_i_22_n_0\ : STD_LOGIC;
  signal \i__carry_i_23_n_0\ : STD_LOGIC;
  signal \i__carry_i_24_n_0\ : STD_LOGIC;
  signal \i__carry_i_25_n_0\ : STD_LOGIC;
  signal \i__carry_i_26_n_0\ : STD_LOGIC;
  signal \i__carry_i_27_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal opb5E : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 179 downto 0 );
  signal \q[104]_i_2_n_0\ : STD_LOGIC;
  signal \q[104]_i_3_n_0\ : STD_LOGIC;
  signal \q[104]_i_5_n_0\ : STD_LOGIC;
  signal \q[104]_i_6_n_0\ : STD_LOGIC;
  signal \q[105]_i_2_n_0\ : STD_LOGIC;
  signal \q[105]_i_3_n_0\ : STD_LOGIC;
  signal \q[105]_i_4_n_0\ : STD_LOGIC;
  signal \q[105]_i_5_n_0\ : STD_LOGIC;
  signal \q[106]_i_2_n_0\ : STD_LOGIC;
  signal \q[106]_i_3_n_0\ : STD_LOGIC;
  signal \q[106]_i_4_n_0\ : STD_LOGIC;
  signal \q[106]_i_5_n_0\ : STD_LOGIC;
  signal \q[107]_i_2_n_0\ : STD_LOGIC;
  signal \q[107]_i_3_n_0\ : STD_LOGIC;
  signal \q[107]_i_4_n_0\ : STD_LOGIC;
  signal \q[107]_i_5_n_0\ : STD_LOGIC;
  signal \q[108]_i_2_n_0\ : STD_LOGIC;
  signal \q[108]_i_3_n_0\ : STD_LOGIC;
  signal \q[108]_i_4_n_0\ : STD_LOGIC;
  signal \q[108]_i_5_n_0\ : STD_LOGIC;
  signal \q[109]_i_2_n_0\ : STD_LOGIC;
  signal \q[109]_i_3_n_0\ : STD_LOGIC;
  signal \q[109]_i_4_n_0\ : STD_LOGIC;
  signal \q[109]_i_5_n_0\ : STD_LOGIC;
  signal \q[110]_i_2_n_0\ : STD_LOGIC;
  signal \q[110]_i_3_n_0\ : STD_LOGIC;
  signal \q[110]_i_4_n_0\ : STD_LOGIC;
  signal \q[110]_i_5_n_0\ : STD_LOGIC;
  signal \q[111]_i_2_n_0\ : STD_LOGIC;
  signal \q[111]_i_3_n_0\ : STD_LOGIC;
  signal \q[111]_i_4_n_0\ : STD_LOGIC;
  signal \q[111]_i_5_n_0\ : STD_LOGIC;
  signal \q[111]_i_6_n_0\ : STD_LOGIC;
  signal \q[111]_i_7_n_0\ : STD_LOGIC;
  signal \q[112]_i_2_n_0\ : STD_LOGIC;
  signal \q[112]_i_3_n_0\ : STD_LOGIC;
  signal \q[112]_i_4_n_0\ : STD_LOGIC;
  signal \q[112]_i_5_n_0\ : STD_LOGIC;
  signal \q[112]_i_6_n_0\ : STD_LOGIC;
  signal \q[113]_i_2_n_0\ : STD_LOGIC;
  signal \q[113]_i_3_n_0\ : STD_LOGIC;
  signal \q[113]_i_4_n_0\ : STD_LOGIC;
  signal \q[113]_i_5_n_0\ : STD_LOGIC;
  signal \q[114]_i_2_n_0\ : STD_LOGIC;
  signal \q[114]_i_3_n_0\ : STD_LOGIC;
  signal \q[114]_i_4_n_0\ : STD_LOGIC;
  signal \q[114]_i_5_n_0\ : STD_LOGIC;
  signal \q[114]_i_6_n_0\ : STD_LOGIC;
  signal \q[115]_i_2_n_0\ : STD_LOGIC;
  signal \q[115]_i_3_n_0\ : STD_LOGIC;
  signal \q[115]_i_4_n_0\ : STD_LOGIC;
  signal \q[115]_i_5_n_0\ : STD_LOGIC;
  signal \q[115]_i_6_n_0\ : STD_LOGIC;
  signal \q[116]_i_2_n_0\ : STD_LOGIC;
  signal \q[116]_i_3_n_0\ : STD_LOGIC;
  signal \q[116]_i_4_n_0\ : STD_LOGIC;
  signal \q[116]_i_5_n_0\ : STD_LOGIC;
  signal \q[116]_i_6_n_0\ : STD_LOGIC;
  signal \q[117]_i_2_n_0\ : STD_LOGIC;
  signal \q[117]_i_3_n_0\ : STD_LOGIC;
  signal \q[117]_i_4_n_0\ : STD_LOGIC;
  signal \q[117]_i_5_n_0\ : STD_LOGIC;
  signal \q[117]_i_6_n_0\ : STD_LOGIC;
  signal \q[118]_i_2_n_0\ : STD_LOGIC;
  signal \q[118]_i_3_n_0\ : STD_LOGIC;
  signal \q[118]_i_4_n_0\ : STD_LOGIC;
  signal \q[118]_i_5_n_0\ : STD_LOGIC;
  signal \q[118]_i_6_n_0\ : STD_LOGIC;
  signal \q[119]_i_2_n_0\ : STD_LOGIC;
  signal \q[119]_i_3_n_0\ : STD_LOGIC;
  signal \q[119]_i_4_n_0\ : STD_LOGIC;
  signal \q[119]_i_5_n_0\ : STD_LOGIC;
  signal \q[119]_i_6_n_0\ : STD_LOGIC;
  signal \q[120]_i_2_n_0\ : STD_LOGIC;
  signal \q[120]_i_3_n_0\ : STD_LOGIC;
  signal \q[120]_i_4_n_0\ : STD_LOGIC;
  signal \q[120]_i_5_n_0\ : STD_LOGIC;
  signal \q[120]_i_6_n_0\ : STD_LOGIC;
  signal \q[121]_i_2_n_0\ : STD_LOGIC;
  signal \q[121]_i_3_n_0\ : STD_LOGIC;
  signal \q[121]_i_4_n_0\ : STD_LOGIC;
  signal \q[121]_i_5_n_0\ : STD_LOGIC;
  signal \q[121]_i_6_n_0\ : STD_LOGIC;
  signal \q[122]_i_2_n_0\ : STD_LOGIC;
  signal \q[122]_i_3_n_0\ : STD_LOGIC;
  signal \q[122]_i_4_n_0\ : STD_LOGIC;
  signal \q[122]_i_5_n_0\ : STD_LOGIC;
  signal \q[122]_i_6_n_0\ : STD_LOGIC;
  signal \q[123]_i_2_n_0\ : STD_LOGIC;
  signal \q[123]_i_3_n_0\ : STD_LOGIC;
  signal \q[123]_i_4_n_0\ : STD_LOGIC;
  signal \q[123]_i_5_n_0\ : STD_LOGIC;
  signal \q[123]_i_6_n_0\ : STD_LOGIC;
  signal \q[124]_i_5_n_0\ : STD_LOGIC;
  signal \q[124]_i_6_n_0\ : STD_LOGIC;
  signal \q[125]_i_5_n_0\ : STD_LOGIC;
  signal \q[125]_i_6_n_0\ : STD_LOGIC;
  signal \q[126]_i_5_n_0\ : STD_LOGIC;
  signal \q[126]_i_6_n_0\ : STD_LOGIC;
  signal \q[127]_i_5_n_0\ : STD_LOGIC;
  signal \q[127]_i_6_n_0\ : STD_LOGIC;
  signal \q[128]_i_5_n_0\ : STD_LOGIC;
  signal \q[128]_i_6_n_0\ : STD_LOGIC;
  signal \q[129]_i_5_n_0\ : STD_LOGIC;
  signal \q[129]_i_6_n_0\ : STD_LOGIC;
  signal \q[130]_i_5_n_0\ : STD_LOGIC;
  signal \q[130]_i_6_n_0\ : STD_LOGIC;
  signal \q[131]_i_5_n_0\ : STD_LOGIC;
  signal \q[131]_i_6_n_0\ : STD_LOGIC;
  signal \q[132]_i_5_n_0\ : STD_LOGIC;
  signal \q[132]_i_6_n_0\ : STD_LOGIC;
  signal \q[133]_i_5_n_0\ : STD_LOGIC;
  signal \q[133]_i_6_n_0\ : STD_LOGIC;
  signal \q[134]_i_7_n_0\ : STD_LOGIC;
  signal \q[134]_i_8_n_0\ : STD_LOGIC;
  signal \q[135]_i_10_n_0\ : STD_LOGIC;
  signal \q[135]_i_11_n_0\ : STD_LOGIC;
  signal \q[135]_i_12_n_0\ : STD_LOGIC;
  signal \q[135]_i_13_n_0\ : STD_LOGIC;
  signal \q[135]_i_14_n_0\ : STD_LOGIC;
  signal \q[135]_i_15_n_0\ : STD_LOGIC;
  signal \q[135]_i_16_n_0\ : STD_LOGIC;
  signal \q[135]_i_17_n_0\ : STD_LOGIC;
  signal \q[135]_i_2_n_0\ : STD_LOGIC;
  signal \q[135]_i_3_n_0\ : STD_LOGIC;
  signal \q[135]_i_4_n_0\ : STD_LOGIC;
  signal \q[135]_i_8_n_0\ : STD_LOGIC;
  signal \q[135]_i_9_n_0\ : STD_LOGIC;
  signal \q[31]_i_10_n_0\ : STD_LOGIC;
  signal \q[31]_i_11_n_0\ : STD_LOGIC;
  signal \q[31]_i_13_n_0\ : STD_LOGIC;
  signal \q[31]_i_14_n_0\ : STD_LOGIC;
  signal \q[31]_i_18_n_0\ : STD_LOGIC;
  signal \q[31]_i_19_n_0\ : STD_LOGIC;
  signal \q[31]_i_20_n_0\ : STD_LOGIC;
  signal \q[31]_i_21_n_0\ : STD_LOGIC;
  signal \q[31]_i_6_n_0\ : STD_LOGIC;
  signal \q[31]_i_8_n_0\ : STD_LOGIC;
  signal \q[76]_i_2_n_0\ : STD_LOGIC;
  signal \q[76]_i_3_n_0\ : STD_LOGIC;
  signal \q[76]_i_5_n_0\ : STD_LOGIC;
  signal \q[76]_i_6_n_0\ : STD_LOGIC;
  signal \q[76]_i_7_n_0\ : STD_LOGIC;
  signal \q[76]_i_8_n_0\ : STD_LOGIC;
  signal \q[79]_i_2_n_0\ : STD_LOGIC;
  signal \q[79]_i_3_n_0\ : STD_LOGIC;
  signal \q[79]_i_5_n_0\ : STD_LOGIC;
  signal \q[95]_i_4_n_0\ : STD_LOGIC;
  signal \^q_reg[0]_0\ : STD_LOGIC;
  signal \^q_reg[10]_0\ : STD_LOGIC;
  signal \^q_reg[12]_0\ : STD_LOGIC;
  signal \^q_reg[175]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[178]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^q_reg[179]_0\ : STD_LOGIC;
  signal \^q_reg[37]_0\ : STD_LOGIC;
  signal \^q_reg[57]_0\ : STD_LOGIC;
  signal \^q_reg[58]_0\ : STD_LOGIC;
  signal \^q_reg[59]_1\ : STD_LOGIC;
  signal \^q_reg[60]_0\ : STD_LOGIC;
  signal \^q_reg[61]_0\ : STD_LOGIC;
  signal \^q_reg[62]_0\ : STD_LOGIC;
  signal \^q_reg[63]_0\ : STD_LOGIC;
  signal \^q_reg[64]_0\ : STD_LOGIC;
  signal \^q_reg[65]_1\ : STD_LOGIC;
  signal \^q_reg[66]_0\ : STD_LOGIC;
  signal \^q_reg[67]_0\ : STD_LOGIC;
  signal \^q_reg[68]_1\ : STD_LOGIC;
  signal \sum__0_carry_i_11_n_0\ : STD_LOGIC;
  signal \sum__0_carry_i_12_n_0\ : STD_LOGIC;
  signal \sum__0_carry_i_14_n_0\ : STD_LOGIC;
  signal \sum__0_carry_i_15_n_0\ : STD_LOGIC;
  signal \sum__0_carry_i_20_n_0\ : STD_LOGIC;
  signal \sum__0_carry_i_22_n_0\ : STD_LOGIC;
  signal \sum__0_carry_i_24_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i__carry__0_i_13\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i__carry__0_i_14\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \i__carry__0_i_15\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \i__carry__0_i_16\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \i__carry__1_i_13\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i__carry__1_i_14\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i__carry__1_i_15\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \i__carry__1_i_16\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i__carry__1_i_17\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \i__carry__1_i_18\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i__carry__2_i_14\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i__carry__2_i_15\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i__carry__2_i_16\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \i__carry__2_i_17\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \i__carry__2_i_18\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \i__carry__3_i_17\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \i__carry__3_i_21\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \i__carry__3_i_25\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i__carry__5_i_10\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \i__carry__5_i_14\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i__carry__5_i_15\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i__carry__5_i_9\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \i__carry__6_i_10\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \i__carry__6_i_11\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \i__carry__6_i_12\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \i__carry__6_i_13\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i__carry__6_i_8\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i__carry__6_i_9\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \i__carry_i_14\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \i__carry_i_16\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i__carry_i_17\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \i__carry_i_19\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i__carry_i_21\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q[104]_i_7\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \q[106]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \q[108]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \q[10]_i_1__3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \q[111]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q[111]_i_7\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \q[112]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q[112]_i_6\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \q[114]_i_5\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \q[114]_i_6\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \q[115]_i_5\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \q[116]_i_5\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \q[119]_i_6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \q[11]_i_1__3\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \q[120]_i_6\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q[121]_i_6\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q[122]_i_6\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \q[123]_i_6\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \q[124]_i_6\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q[125]_i_6\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \q[126]_i_6\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q[127]_i_6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \q[128]_i_6\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q[129]_i_6\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q[12]_i_1__3\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \q[130]_i_6\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \q[131]_i_6\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \q[132]_i_6\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q[133]_i_6\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \q[134]_i_8\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q[13]_i_1__3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \q[14]_i_1__3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \q[15]_i_1__2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \q[16]_i_1__2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \q[17]_i_1__2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \q[18]_i_1__2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \q[19]_i_1__2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \q[20]_i_1__2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \q[21]_i_1__2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \q[22]_i_1__2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \q[23]_i_1__2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \q[24]_i_1__2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \q[25]_i_1__2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \q[26]_i_1__2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \q[27]_i_1__2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \q[28]_i_1__2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \q[29]_i_1__2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \q[2]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q[30]_i_1__2\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \q[31]_i_11\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \q[31]_i_14\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q[31]_i_1__2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \q[32]_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \q[33]_i_1__1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \q[34]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q[34]_i_1__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \q[3]_i_1__1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q[4]_i_1__3\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \q[5]_i_1__2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \q[6]_i_1__2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \q[76]_i_6\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \q[79]_i_5\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \q[7]_i_1__3\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \q[8]_i_1__3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \q[95]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \q[9]_i_1__3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \sum__0_carry__0_i_10\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \sum__0_carry__0_i_11\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \sum__0_carry__0_i_9\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \sum__0_carry__1_i_10\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \sum__0_carry__1_i_11\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \sum__0_carry__1_i_12\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \sum__0_carry__1_i_9\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \sum__0_carry__2_i_10\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \sum__0_carry__2_i_11\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \sum__0_carry__2_i_12\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \sum__0_carry__2_i_9\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \sum__0_carry__3_i_10\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \sum__0_carry__3_i_11\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \sum__0_carry__3_i_12\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \sum__0_carry__3_i_9\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \sum__0_carry__4_i_10\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \sum__0_carry__4_i_11\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \sum__0_carry__4_i_12\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \sum__0_carry__4_i_9\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \sum__0_carry__5_i_10\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \sum__0_carry__5_i_11\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \sum__0_carry__5_i_12\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \sum__0_carry__5_i_9\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \sum__0_carry__6_i_10\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \sum__0_carry__6_i_11\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \sum__0_carry__6_i_12\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \sum__0_carry__6_i_9\ : label is "soft_lutpair45";
begin
  D(124 downto 0) <= \^d\(124 downto 0);
  DI(3 downto 0) <= \^di\(3 downto 0);
  Q(32 downto 0) <= \^q\(32 downto 0);
  SrcAE(19 downto 0) <= \^srcae\(19 downto 0);
  data6(30 downto 0) <= \^data6\(30 downto 0);
  \q_reg[0]_0\ <= \^q_reg[0]_0\;
  \q_reg[10]_0\ <= \^q_reg[10]_0\;
  \q_reg[12]_0\ <= \^q_reg[12]_0\;
  \q_reg[175]_0\(3 downto 0) <= \^q_reg[175]_0\(3 downto 0);
  \q_reg[178]_0\(2 downto 0) <= \^q_reg[178]_0\(2 downto 0);
  \q_reg[179]_0\ <= \^q_reg[179]_0\;
  \q_reg[37]_0\ <= \^q_reg[37]_0\;
  \q_reg[57]_0\ <= \^q_reg[57]_0\;
  \q_reg[58]_0\ <= \^q_reg[58]_0\;
  \q_reg[59]_1\ <= \^q_reg[59]_1\;
  \q_reg[60]_0\ <= \^q_reg[60]_0\;
  \q_reg[61]_0\ <= \^q_reg[61]_0\;
  \q_reg[62]_0\ <= \^q_reg[62]_0\;
  \q_reg[63]_0\ <= \^q_reg[63]_0\;
  \q_reg[64]_0\ <= \^q_reg[64]_0\;
  \q_reg[65]_1\ <= \^q_reg[65]_1\;
  \q_reg[66]_0\ <= \^q_reg[66]_0\;
  \q_reg[67]_0\ <= \^q_reg[67]_0\;
  \q_reg[68]_1\ <= \^q_reg[68]_1\;
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__0_i_9_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__0_i_10_n_0\,
      O => \^data6\(7)
    );
\i__carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__0_i_15_n_0\,
      I1 => \i__carry_i_21_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry__0_i_16_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry_i_23_n_0\,
      O => \i__carry__0_i_10_n_0\
    );
\i__carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__0_i_14_n_0\,
      I1 => \i__carry_i_19_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry_i_17_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry_i_18_n_0\,
      O => \i__carry__0_i_11_n_0\
    );
\i__carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__0_i_16_n_0\,
      I1 => \i__carry_i_23_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry_i_21_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry_i_22_n_0\,
      O => \i__carry__0_i_12_n_0\
    );
\i__carry__0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^di\(2),
      I1 => SrcBE(3),
      I2 => \^q_reg[178]_0\(2),
      I3 => SrcBE(4),
      I4 => \^srcae\(14),
      O => \i__carry__0_i_13_n_0\
    );
\i__carry__0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^di\(0),
      I1 => SrcBE(3),
      I2 => \^q_reg[178]_0\(0),
      I3 => SrcBE(4),
      I4 => \^srcae\(12),
      O => \i__carry__0_i_14_n_0\
    );
\i__carry__0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^di\(1),
      I1 => SrcBE(3),
      I2 => \^q_reg[178]_0\(1),
      I3 => SrcBE(4),
      I4 => \^srcae\(13),
      O => \i__carry__0_i_15_n_0\
    );
\i__carry__0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srcae\(19),
      I1 => SrcBE(3),
      I2 => \^q_reg[175]_0\(3),
      I3 => SrcBE(4),
      I4 => \^srcae\(11),
      O => \i__carry__0_i_16_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__0_i_10_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__0_i_11_n_0\,
      O => \^data6\(6)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__0_i_11_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__0_i_12_n_0\,
      O => \^data6\(5)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__0_i_12_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry_i_9_n_0\,
      O => \^data6\(4)
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B8B8B8"
    )
        port map (
      I0 => \i__carry__0_i_9_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__0_i_10_n_0\,
      I3 => \i__carry_i_16_n_0\,
      I4 => \i__carry_i_15_n_0\,
      O => \q_reg[37]_2\(3)
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AAA5AAA5AAA9AAA"
    )
        port map (
      I0 => \^data6\(6),
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry_i_15_n_0\,
      I3 => \i__carry_i_16_n_0\,
      I4 => SrcBE(1),
      I5 => SrcBE(2),
      O => \q_reg[37]_2\(2)
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5665AAAAAAAAAAAA"
    )
        port map (
      I0 => \^data6\(5),
      I1 => SrcBE(2),
      I2 => SrcBE(1),
      I3 => \^q_reg[37]_0\,
      I4 => \i__carry_i_16_n_0\,
      I5 => \i__carry_i_15_n_0\,
      O => \q_reg[37]_2\(1)
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6A6A6AAAAAAA6A"
    )
        port map (
      I0 => \^data6\(4),
      I1 => \i__carry_i_15_n_0\,
      I2 => \i__carry_i_16_n_0\,
      I3 => \^q_reg[37]_0\,
      I4 => SrcBE(1),
      I5 => SrcBE(2),
      O => \q_reg[37]_2\(0)
    );
\i__carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__0_i_13_n_0\,
      I1 => \i__carry_i_17_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry__0_i_14_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry_i_19_n_0\,
      O => \i__carry__0_i_9_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__1_i_9_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__1_i_10_n_0\,
      O => \^data6\(11)
    );
\i__carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__1_i_17_n_0\,
      I1 => \i__carry__0_i_15_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry__1_i_18_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry__0_i_16_n_0\,
      O => \i__carry__1_i_10_n_0\
    );
\i__carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__1_i_16_n_0\,
      I1 => \i__carry__0_i_14_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry__0_i_13_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry_i_17_n_0\,
      O => \i__carry__1_i_11_n_0\
    );
\i__carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__1_i_18_n_0\,
      I1 => \i__carry__0_i_16_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry__0_i_15_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry_i_21_n_0\,
      O => \i__carry__1_i_12_n_0\
    );
\i__carry__1_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAB0000"
    )
        port map (
      I0 => SrcBE(3),
      I1 => \^q_reg[37]_0\,
      I2 => SrcBE(1),
      I3 => SrcBE(2),
      I4 => \i__carry__2_i_13_n_0\,
      O => \i__carry__1_i_13_n_0\
    );
\i__carry__1_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F10000"
    )
        port map (
      I0 => SrcBE(1),
      I1 => \^q_reg[37]_0\,
      I2 => SrcBE(3),
      I3 => SrcBE(2),
      I4 => \i__carry__2_i_13_n_0\,
      O => \i__carry__1_i_14_n_0\
    );
\i__carry__1_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^q_reg[175]_0\(2),
      I1 => \^srcae\(18),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \i__carry__1_i_15_n_0\
    );
\i__carry__1_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^q_reg[175]_0\(0),
      I1 => \^srcae\(16),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \i__carry__1_i_16_n_0\
    );
\i__carry__1_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^q_reg[175]_0\(1),
      I1 => \^srcae\(17),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \i__carry__1_i_17_n_0\
    );
\i__carry__1_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^di\(3),
      I1 => SrcBE(3),
      I2 => \^q_reg[179]_0\,
      I3 => SrcBE(4),
      I4 => \^srcae\(15),
      O => \i__carry__1_i_18_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__1_i_10_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__1_i_11_n_0\,
      O => \^data6\(10)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__1_i_11_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__1_i_12_n_0\,
      O => \^data6\(9)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__1_i_12_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__0_i_9_n_0\,
      O => \^data6\(8)
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B8B8B8"
    )
        port map (
      I0 => \i__carry__1_i_9_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__1_i_10_n_0\,
      I3 => \i__carry__1_i_13_n_0\,
      I4 => \i__carry_i_15_n_0\,
      O => \q_reg[37]_3\(3)
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AAA5A6A5AAA9AAA"
    )
        port map (
      I0 => \^data6\(10),
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry_i_15_n_0\,
      I3 => \i__carry__1_i_13_n_0\,
      I4 => SrcBE(1),
      I5 => \i__carry_i_16_n_0\,
      O => \q_reg[37]_3\(2)
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B8B8B8"
    )
        port map (
      I0 => \i__carry__1_i_11_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__1_i_12_n_0\,
      I3 => \i__carry__1_i_14_n_0\,
      I4 => \i__carry_i_15_n_0\,
      O => \q_reg[37]_3\(1)
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666AAAAAAA6A"
    )
        port map (
      I0 => \^data6\(8),
      I1 => \i__carry_i_15_n_0\,
      I2 => \i__carry__1_i_13_n_0\,
      I3 => \^q_reg[37]_0\,
      I4 => SrcBE(1),
      I5 => \i__carry_i_16_n_0\,
      O => \q_reg[37]_3\(0)
    );
\i__carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__1_i_15_n_0\,
      I1 => \i__carry__0_i_13_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry__1_i_16_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry__0_i_14_n_0\,
      O => \i__carry__1_i_9_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__2_i_9_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__2_i_10_n_0\,
      O => \^data6\(15)
    );
\i__carry__2_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__2_i_17_n_0\,
      I1 => \i__carry__1_i_17_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry__2_i_18_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry__1_i_18_n_0\,
      O => \i__carry__2_i_10_n_0\
    );
\i__carry__2_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__2_i_16_n_0\,
      I1 => \i__carry__1_i_16_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry__1_i_15_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry__0_i_13_n_0\,
      O => \i__carry__2_i_11_n_0\
    );
\i__carry__2_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__2_i_18_n_0\,
      I1 => \i__carry__1_i_18_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry__1_i_17_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry__0_i_15_n_0\,
      O => \i__carry__2_i_12_n_0\
    );
\i__carry__2_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000010000"
    )
        port map (
      I0 => SrcBE(2),
      I1 => SrcBE(1),
      I2 => \^q_reg[37]_0\,
      I3 => SrcBE(3),
      I4 => \^q_reg[179]_0\,
      I5 => SrcBE(4),
      O => \i__carry__2_i_13_n_0\
    );
\i__carry__2_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEF0000"
    )
        port map (
      I0 => SrcBE(3),
      I1 => SrcBE(2),
      I2 => SrcBE(1),
      I3 => \^q_reg[37]_0\,
      I4 => \i__carry__2_i_13_n_0\,
      O => \i__carry__2_i_14_n_0\
    );
\i__carry__2_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^q_reg[178]_0\(2),
      I1 => \^di\(2),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \i__carry__2_i_15_n_0\
    );
\i__carry__2_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^q_reg[178]_0\(0),
      I1 => \^di\(0),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \i__carry__2_i_16_n_0\
    );
\i__carry__2_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^q_reg[178]_0\(1),
      I1 => \^di\(1),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \i__carry__2_i_17_n_0\
    );
\i__carry__2_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^q_reg[175]_0\(3),
      I1 => \^srcae\(19),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \i__carry__2_i_18_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__2_i_10_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__2_i_11_n_0\,
      O => \^data6\(14)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__2_i_11_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__2_i_12_n_0\,
      O => \^data6\(13)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__2_i_12_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__1_i_9_n_0\,
      O => \^data6\(12)
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B8B8B8"
    )
        port map (
      I0 => \i__carry__2_i_9_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__2_i_10_n_0\,
      I3 => \i__carry__2_i_13_n_0\,
      I4 => \i__carry_i_15_n_0\,
      O => \q_reg[37]_4\(3)
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AAA5A6A5AAA9AAA"
    )
        port map (
      I0 => \^data6\(14),
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry_i_15_n_0\,
      I3 => \i__carry__2_i_13_n_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__1_i_13_n_0\,
      O => \q_reg[37]_4\(2)
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B8B8B8"
    )
        port map (
      I0 => \i__carry__2_i_11_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__2_i_12_n_0\,
      I3 => \i__carry__2_i_14_n_0\,
      I4 => \i__carry_i_15_n_0\,
      O => \q_reg[37]_4\(1)
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666AAAAAAA6A"
    )
        port map (
      I0 => \^data6\(12),
      I1 => \i__carry_i_15_n_0\,
      I2 => \i__carry__2_i_13_n_0\,
      I3 => \^q_reg[37]_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__1_i_13_n_0\,
      O => \q_reg[37]_4\(0)
    );
\i__carry__2_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__2_i_15_n_0\,
      I1 => \i__carry__1_i_15_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry__2_i_16_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry__1_i_16_n_0\,
      O => \i__carry__2_i_9_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__3_i_9_n_0\,
      I1 => \i__carry__3_i_10_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \i__carry__3_i_11_n_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__3_i_12_n_0\,
      O => \^data6\(19)
    );
\i__carry__3_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^q_reg[175]_0\(0),
      I1 => SrcBE(2),
      I2 => \^q_reg[178]_0\(0),
      I3 => \^di\(0),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \i__carry__3_i_10_n_0\
    );
\i__carry__3_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^q_reg[175]_0\(1),
      I1 => SrcBE(2),
      I2 => \^q_reg[178]_0\(1),
      I3 => \^di\(1),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \i__carry__3_i_11_n_0\
    );
\i__carry__3_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFCFCFEFE0C0C0"
    )
        port map (
      I0 => \^q_reg[179]_0\,
      I1 => \i__carry__3_i_20_n_0\,
      I2 => SrcBE(2),
      I3 => \^q_reg[175]_0\(3),
      I4 => \i__carry__3_i_21_n_0\,
      I5 => \i__carry__3_i_22_n_0\,
      O => \i__carry__3_i_12_n_0\
    );
\i__carry__3_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFCFCFEFE0C0C0"
    )
        port map (
      I0 => \^q_reg[178]_0\(2),
      I1 => \i__carry__3_i_23_n_0\,
      I2 => SrcBE(2),
      I3 => \^q_reg[175]_0\(2),
      I4 => \i__carry__3_i_21_n_0\,
      I5 => \i__carry__3_i_24_n_0\,
      O => \i__carry__3_i_13_n_0\
    );
\i__carry__3_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \i__carry__3_i_10_n_0\,
      I1 => SrcBE(1),
      I2 => \i__carry__2_i_15_n_0\,
      I3 => SrcBE(2),
      I4 => \i__carry__1_i_15_n_0\,
      O => \i__carry__3_i_14_n_0\
    );
\i__carry__3_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__3_i_25_n_0\,
      I1 => \i__carry__2_i_18_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry__2_i_17_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry__1_i_17_n_0\,
      O => \i__carry__3_i_15_n_0\
    );
\i__carry__3_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \i__carry__3_i_11_n_0\,
      I1 => SrcBE(1),
      I2 => \i__carry__3_i_25_n_0\,
      I3 => SrcBE(2),
      I4 => \i__carry__2_i_18_n_0\,
      O => \i__carry__3_i_16_n_0\
    );
\i__carry__3_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__3_i_9_n_0\,
      I1 => SrcBE(1),
      I2 => \i__carry__3_i_10_n_0\,
      O => \i__carry__3_i_17_n_0\
    );
\i__carry__3_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0FF0100000000"
    )
        port map (
      I0 => \^q_reg[37]_0\,
      I1 => SrcBE(1),
      I2 => SrcBE(2),
      I3 => SrcBE(4),
      I4 => SrcBE(3),
      I5 => \^q_reg[179]_0\,
      O => \i__carry__3_i_18_n_0\
    );
\i__carry__3_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80FF0100000000"
    )
        port map (
      I0 => SrcBE(1),
      I1 => \^q_reg[37]_0\,
      I2 => SrcBE(2),
      I3 => SrcBE(4),
      I4 => SrcBE(3),
      I5 => \^q_reg[179]_0\,
      O => \i__carry__3_i_19_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__3_i_11_n_0\,
      I1 => \i__carry__3_i_12_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \i__carry__3_i_10_n_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__3_i_13_n_0\,
      O => \^data6\(18)
    );
\i__carry__3_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044034700000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(76),
      I3 => \^q\(3),
      I4 => \^d\(75),
      I5 => \^di\(3),
      O => \i__carry__3_i_20_n_0\
    );
\i__carry__3_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => \^d\(75),
      I1 => \^q\(3),
      I2 => \^d\(76),
      I3 => \q_reg[4]_1\(0),
      I4 => \^q\(4),
      O => \i__carry__3_i_21_n_0\
    );
\i__carry__3_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044034700000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(76),
      I3 => \^q\(3),
      I4 => \^d\(75),
      I5 => \^srcae\(19),
      O => \i__carry__3_i_22_n_0\
    );
\i__carry__3_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044034700000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(76),
      I3 => \^q\(3),
      I4 => \^d\(75),
      I5 => \^di\(2),
      O => \i__carry__3_i_23_n_0\
    );
\i__carry__3_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044034700000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(76),
      I3 => \^q\(3),
      I4 => \^d\(75),
      I5 => \^srcae\(18),
      O => \i__carry__3_i_24_n_0\
    );
\i__carry__3_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^q_reg[179]_0\,
      I1 => \^di\(3),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \i__carry__3_i_25_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__3_i_14_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__3_i_15_n_0\,
      O => \^data6\(17)
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__3_i_15_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__2_i_9_n_0\,
      O => \^data6\(16)
    );
\i__carry__3_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DE2E2E2"
    )
        port map (
      I0 => \i__carry__3_i_16_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__3_i_17_n_0\,
      I3 => \i__carry__3_i_18_n_0\,
      I4 => \i__carry_i_15_n_0\,
      O => \q_reg[37]_5\(3)
    );
\i__carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35CA3ACAC5CACACA"
    )
        port map (
      I0 => \i__carry__3_i_14_n_0\,
      I1 => \i__carry__3_i_16_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \i__carry_i_15_n_0\,
      I4 => \i__carry__3_i_18_n_0\,
      I5 => \i__carry__3_i_19_n_0\,
      O => \q_reg[37]_5\(2)
    );
\i__carry__3_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B8B8B8"
    )
        port map (
      I0 => \i__carry__3_i_14_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__3_i_15_n_0\,
      I3 => \i__carry__3_i_19_n_0\,
      I4 => \i__carry_i_15_n_0\,
      O => \q_reg[37]_5\(1)
    );
\i__carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666AAAAAAA6A"
    )
        port map (
      I0 => \^data6\(16),
      I1 => \i__carry_i_15_n_0\,
      I2 => \i__carry__3_i_18_n_0\,
      I3 => \^q_reg[37]_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__2_i_13_n_0\,
      O => \q_reg[37]_5\(0)
    );
\i__carry__3_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^q_reg[175]_0\(2),
      I1 => SrcBE(2),
      I2 => \^q_reg[178]_0\(2),
      I3 => \^di\(2),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \i__carry__3_i_9_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__4_i_9_n_0\,
      I1 => \i__carry__4_i_10_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \i__carry__4_i_11_n_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__4_i_12_n_0\,
      O => \^data6\(23)
    );
\i__carry__4_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^q_reg[178]_0\(0),
      I1 => SrcBE(2),
      I2 => \i__carry__6_i_9_n_0\,
      I3 => \^q_reg[175]_0\(0),
      O => \i__carry__4_i_10_n_0\
    );
\i__carry__4_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^q_reg[178]_0\(1),
      I1 => SrcBE(2),
      I2 => \i__carry__6_i_9_n_0\,
      I3 => \^q_reg[175]_0\(1),
      O => \i__carry__4_i_11_n_0\
    );
\i__carry__4_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^q_reg[175]_0\(3),
      I1 => SrcBE(2),
      I2 => \^q_reg[179]_0\,
      I3 => \^di\(3),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \i__carry__4_i_12_n_0\
    );
\i__carry__4_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAB00000000"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(2),
      I2 => SrcBE(1),
      I3 => \^q_reg[37]_0\,
      I4 => SrcBE(3),
      I5 => \^q_reg[179]_0\,
      O => \i__carry__4_i_13_n_0\
    );
\i__carry__4_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F0F100000000"
    )
        port map (
      I0 => SrcBE(1),
      I1 => \^q_reg[37]_0\,
      I2 => SrcBE(4),
      I3 => SrcBE(2),
      I4 => SrcBE(3),
      I5 => \^q_reg[179]_0\,
      O => \i__carry__4_i_14_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__4_i_11_n_0\,
      I1 => \i__carry__4_i_12_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \i__carry__4_i_10_n_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__3_i_9_n_0\,
      O => \^data6\(22)
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__4_i_10_n_0\,
      I1 => \i__carry__3_i_9_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \i__carry__4_i_12_n_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__3_i_11_n_0\,
      O => \^data6\(21)
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__4_i_12_n_0\,
      I1 => \i__carry__3_i_11_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \i__carry__3_i_9_n_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__3_i_10_n_0\,
      O => \^data6\(20)
    );
\i__carry__4_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^data6\(23),
      I1 => \i__carry__4_i_13_n_0\,
      I2 => \i__carry_i_15_n_0\,
      O => \i__carry_i_15_0\(3)
    );
\i__carry__4_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AAA5A6A5AAA9AAA"
    )
        port map (
      I0 => \^data6\(22),
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry_i_15_n_0\,
      I3 => \i__carry__4_i_13_n_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__3_i_18_n_0\,
      O => \i__carry_i_15_0\(2)
    );
\i__carry__4_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^data6\(21),
      I1 => \i__carry__4_i_14_n_0\,
      I2 => \i__carry_i_15_n_0\,
      O => \i__carry_i_15_0\(1)
    );
\i__carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666AAAAAAA6A"
    )
        port map (
      I0 => \^data6\(20),
      I1 => \i__carry_i_15_n_0\,
      I2 => \i__carry__4_i_13_n_0\,
      I3 => \^q_reg[37]_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__3_i_18_n_0\,
      O => \i__carry_i_15_0\(0)
    );
\i__carry__4_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^q_reg[178]_0\(2),
      I1 => SrcBE(2),
      I2 => \i__carry__6_i_9_n_0\,
      I3 => \^q_reg[175]_0\(2),
      O => \i__carry__4_i_9_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00ACFFFF00AC0000"
    )
        port map (
      I0 => \i__carry__5_i_9_n_0\,
      I1 => \i__carry__5_i_10_n_0\,
      I2 => SrcBE(1),
      I3 => SrcBE(2),
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__5_i_11_n_0\,
      O => \^data6\(27)
    );
\i__carry__5_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i__carry__6_i_9_n_0\,
      I1 => \^q_reg[178]_0\(0),
      O => \i__carry__5_i_10_n_0\
    );
\i__carry__5_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => \^q_reg[178]_0\(1),
      I1 => SrcBE(1),
      I2 => \^q_reg[179]_0\,
      I3 => SrcBE(2),
      I4 => \i__carry__6_i_9_n_0\,
      I5 => \^q_reg[175]_0\(3),
      O => \i__carry__5_i_11_n_0\
    );
\i__carry__5_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => \^q_reg[178]_0\(0),
      I1 => SrcBE(1),
      I2 => \^q_reg[178]_0\(2),
      I3 => SrcBE(2),
      I4 => \i__carry__6_i_9_n_0\,
      I5 => \^q_reg[175]_0\(2),
      O => \i__carry__5_i_12_n_0\
    );
\i__carry__5_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^q_reg[179]_0\,
      I1 => SrcBE(2),
      I2 => \i__carry__6_i_9_n_0\,
      I3 => \^q_reg[175]_0\(3),
      O => \i__carry__5_i_13_n_0\
    );
\i__carry__5_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAB02A8"
    )
        port map (
      I0 => \i__carry__4_i_13_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => SrcBE(1),
      I3 => SrcBE(2),
      I4 => \^q_reg[179]_0\,
      O => \i__carry__5_i_14_n_0\
    );
\i__carry__5_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F170E0"
    )
        port map (
      I0 => SrcBE(1),
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__4_i_13_n_0\,
      I3 => SrcBE(2),
      I4 => \^q_reg[179]_0\,
      O => \i__carry__5_i_15_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__5_i_11_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__5_i_12_n_0\,
      O => \^data6\(26)
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \i__carry__5_i_12_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__5_i_13_n_0\,
      I3 => SrcBE(1),
      I4 => \i__carry__4_i_11_n_0\,
      O => \^data6\(25)
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry__5_i_13_n_0\,
      I1 => \i__carry__4_i_11_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \i__carry__4_i_9_n_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__4_i_10_n_0\,
      O => \^data6\(24)
    );
\i__carry__5_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^data6\(27),
      I1 => \i__carry__5_i_14_n_0\,
      I2 => \i__carry_i_15_n_0\,
      O => \i__carry_i_15_1\(3)
    );
\i__carry__5_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AAA5A6A5AAA9AAA"
    )
        port map (
      I0 => \^data6\(26),
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry_i_15_n_0\,
      I3 => \i__carry__5_i_14_n_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__4_i_13_n_0\,
      O => \i__carry_i_15_1\(2)
    );
\i__carry__5_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^data6\(25),
      I1 => \i__carry__5_i_15_n_0\,
      I2 => \i__carry_i_15_n_0\,
      O => \i__carry_i_15_1\(1)
    );
\i__carry__5_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666AAAAAAA6A"
    )
        port map (
      I0 => \^data6\(24),
      I1 => \i__carry_i_15_n_0\,
      I2 => \i__carry__5_i_14_n_0\,
      I3 => \^q_reg[37]_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__4_i_13_n_0\,
      O => \i__carry_i_15_1\(0)
    );
\i__carry__5_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i__carry__6_i_9_n_0\,
      I1 => \^q_reg[178]_0\(2),
      O => \i__carry__5_i_9_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0800000"
    )
        port map (
      I0 => \^q_reg[179]_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__6_i_8_n_0\,
      I3 => \^q_reg[178]_0\(2),
      I4 => \i__carry__6_i_9_n_0\,
      O => \^data6\(30)
    );
\i__carry__6_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i__carry__6_i_9_n_0\,
      I1 => \^q_reg[179]_0\,
      O => \i__carry__6_i_10_n_0\
    );
\i__carry__6_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i__carry__6_i_9_n_0\,
      I1 => \^q_reg[178]_0\(1),
      O => \i__carry__6_i_11_n_0\
    );
\i__carry__6_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000088C0"
    )
        port map (
      I0 => \^q_reg[179]_0\,
      I1 => \i__carry__6_i_9_n_0\,
      I2 => \^q_reg[178]_0\(1),
      I3 => SrcBE(1),
      I4 => SrcBE(2),
      O => \i__carry__6_i_12_n_0\
    );
\i__carry__6_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEF0220"
    )
        port map (
      I0 => \i__carry__4_i_13_n_0\,
      I1 => SrcBE(2),
      I2 => SrcBE(1),
      I3 => \^q_reg[37]_0\,
      I4 => \^q_reg[179]_0\,
      O => \i__carry__6_i_13_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \i__carry__5_i_9_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__6_i_10_n_0\,
      I3 => \i__carry__6_i_11_n_0\,
      I4 => SrcBE(1),
      I5 => SrcBE(2),
      O => \^data6\(29)
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8B8BB88"
    )
        port map (
      I0 => \i__carry__6_i_12_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry__5_i_9_n_0\,
      I3 => \i__carry__5_i_10_n_0\,
      I4 => SrcBE(1),
      I5 => SrcBE(2),
      O => \^data6\(28)
    );
\i__carry__6_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[179]_0\,
      O => \q_reg[179]_2\(3)
    );
\i__carry__6_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AAA5A6A5AAA9AAA"
    )
        port map (
      I0 => \^data6\(30),
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry_i_15_n_0\,
      I3 => \^q_reg[179]_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__5_i_14_n_0\,
      O => \q_reg[179]_2\(2)
    );
\i__carry__6_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^data6\(29),
      I1 => \i__carry__6_i_13_n_0\,
      I2 => \i__carry_i_15_n_0\,
      O => \q_reg[179]_2\(1)
    );
\i__carry__6_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666AAAAAAA6A"
    )
        port map (
      I0 => \^data6\(28),
      I1 => \i__carry_i_15_n_0\,
      I2 => \^q_reg[179]_0\,
      I3 => \^q_reg[37]_0\,
      I4 => SrcBE(1),
      I5 => \i__carry__5_i_14_n_0\,
      O => \q_reg[179]_2\(0)
    );
\i__carry__6_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SrcBE(1),
      I1 => SrcBE(2),
      O => \i__carry__6_i_8_n_0\
    );
\i__carry__6_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \^d\(75),
      I1 => \^q\(3),
      I2 => \^d\(76),
      I3 => \q_reg[4]_1\(0),
      I4 => \^q\(4),
      O => \i__carry__6_i_9_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry_i_10_n_0\,
      O => \^data6\(3)
    );
\i__carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry_i_21_n_0\,
      I1 => \i__carry_i_22_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry_i_23_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry_i_24_n_0\,
      O => \i__carry_i_10_n_0\
    );
\i__carry_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry_i_19_n_0\,
      I1 => \i__carry_i_20_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry_i_18_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry_i_25_n_0\,
      O => \i__carry_i_11_n_0\
    );
\i__carry_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \i__carry_i_26_n_0\,
      I1 => \i__carry_i_22_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry_i_23_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry_i_24_n_0\,
      O => \i__carry_i_12_n_0\
    );
\i__carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFCC3300"
    )
        port map (
      I0 => \i__carry_i_18_n_0\,
      I1 => SrcBE(2),
      I2 => \i__carry_i_25_n_0\,
      I3 => \i__carry_i_27_n_0\,
      I4 => \i__carry_i_20_n_0\,
      I5 => SrcBE(1),
      O => \i__carry_i_13_n_0\
    );
\i__carry_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8882"
    )
        port map (
      I0 => \i__carry_i_16_n_0\,
      I1 => SrcBE(2),
      I2 => SrcBE(1),
      I3 => \^q_reg[37]_0\,
      O => \i__carry_i_14_n_0\
    );
\i__carry_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => \^q_reg[37]_0\,
      I3 => SrcBE(1),
      I4 => SrcBE(2),
      O => \i__carry_i_15_n_0\
    );
\i__carry_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888882"
    )
        port map (
      I0 => \i__carry__2_i_13_n_0\,
      I1 => SrcBE(3),
      I2 => \^q_reg[37]_0\,
      I3 => SrcBE(1),
      I4 => SrcBE(2),
      O => \i__carry_i_16_n_0\
    );
\i__carry_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srcae\(18),
      I1 => SrcBE(3),
      I2 => \^q_reg[175]_0\(2),
      I3 => SrcBE(4),
      I4 => \^srcae\(10),
      O => \i__carry_i_17_n_0\
    );
\i__carry_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srcae\(6),
      I1 => \^di\(2),
      I2 => SrcBE(3),
      I3 => \^q_reg[178]_0\(2),
      I4 => SrcBE(4),
      I5 => \^srcae\(14),
      O => \i__carry_i_18_n_0\
    );
\i__carry_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srcae\(16),
      I1 => SrcBE(3),
      I2 => \^q_reg[175]_0\(0),
      I3 => SrcBE(4),
      I4 => \^srcae\(8),
      O => \i__carry_i_19_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry_i_10_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry_i_11_n_0\,
      O => \^data6\(2)
    );
\i__carry_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srcae\(4),
      I1 => \^di\(0),
      I2 => SrcBE(3),
      I3 => \^q_reg[178]_0\(0),
      I4 => SrcBE(4),
      I5 => \^srcae\(12),
      O => \i__carry_i_20_n_0\
    );
\i__carry_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srcae\(17),
      I1 => SrcBE(3),
      I2 => \^q_reg[175]_0\(1),
      I3 => SrcBE(4),
      I4 => \^srcae\(9),
      O => \i__carry_i_21_n_0\
    );
\i__carry_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srcae\(5),
      I1 => \^di\(1),
      I2 => SrcBE(3),
      I3 => \^q_reg[178]_0\(1),
      I4 => SrcBE(4),
      I5 => \^srcae\(13),
      O => \i__carry_i_22_n_0\
    );
\i__carry_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srcae\(7),
      I1 => \^di\(3),
      I2 => SrcBE(3),
      I3 => \^q_reg[179]_0\,
      I4 => SrcBE(4),
      I5 => \^srcae\(15),
      O => \i__carry_i_23_n_0\
    );
\i__carry_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srcae\(3),
      I1 => \^srcae\(19),
      I2 => SrcBE(3),
      I3 => \^q_reg[175]_0\(3),
      I4 => SrcBE(4),
      I5 => \^srcae\(11),
      O => \i__carry_i_24_n_0\
    );
\i__carry_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srcae\(2),
      I1 => \^srcae\(18),
      I2 => SrcBE(3),
      I3 => \^q_reg[175]_0\(2),
      I4 => SrcBE(4),
      I5 => \^srcae\(10),
      O => \i__carry_i_25_n_0\
    );
\i__carry_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srcae\(1),
      I1 => \^srcae\(17),
      I2 => SrcBE(3),
      I3 => \^q_reg[175]_0\(1),
      I4 => SrcBE(4),
      I5 => \^srcae\(9),
      O => \i__carry_i_26_n_0\
    );
\i__carry_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srcae\(0),
      I1 => \^srcae\(16),
      I2 => SrcBE(3),
      I3 => \^q_reg[175]_0\(0),
      I4 => SrcBE(4),
      I5 => \^srcae\(8),
      O => \i__carry_i_27_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry_i_11_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry_i_12_n_0\,
      O => \^data6\(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry_i_12_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry_i_13_n_0\,
      O => \^data6\(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B8B8B8"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \i__carry_i_10_n_0\,
      I3 => \i__carry_i_14_n_0\,
      I4 => \i__carry_i_15_n_0\,
      O => \q_reg[37]_1\(3)
    );
\i__carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66AAAAA6AAAAAAAA"
    )
        port map (
      I0 => \^data6\(2),
      I1 => \i__carry_i_15_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => SrcBE(1),
      I4 => SrcBE(2),
      I5 => \i__carry_i_16_n_0\,
      O => \q_reg[37]_1\(2)
    );
\i__carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAA9AAAAAAAAA"
    )
        port map (
      I0 => \^data6\(1),
      I1 => SrcBE(2),
      I2 => \i__carry_i_16_n_0\,
      I3 => \^q_reg[37]_0\,
      I4 => SrcBE(1),
      I5 => \i__carry_i_15_n_0\,
      O => \q_reg[37]_1\(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0D2F0F0"
    )
        port map (
      I0 => \i__carry_i_15_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \^data6\(0),
      I3 => SrcBE(2),
      I4 => \i__carry_i_16_n_0\,
      I5 => SrcBE(1),
      O => \q_reg[37]_1\(0)
    );
\i__carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i__carry_i_17_n_0\,
      I1 => \i__carry_i_18_n_0\,
      I2 => SrcBE(1),
      I3 => \i__carry_i_19_n_0\,
      I4 => SrcBE(2),
      I5 => \i__carry_i_20_n_0\,
      O => \i__carry_i_9_n_0\
    );
\ltu_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(14),
      I1 => \^srcae\(14),
      I2 => \^srcae\(15),
      I3 => SrcBE(15),
      O => \q_reg[51]_0\(3)
    );
\ltu_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(12),
      I1 => \^srcae\(12),
      I2 => \^srcae\(13),
      I3 => SrcBE(13),
      O => \q_reg[51]_0\(2)
    );
\ltu_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(10),
      I1 => \^srcae\(10),
      I2 => \^srcae\(11),
      I3 => SrcBE(11),
      O => \q_reg[51]_0\(1)
    );
\ltu_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(8),
      I1 => \^srcae\(8),
      I2 => \^srcae\(9),
      I3 => SrcBE(9),
      O => \q_reg[51]_0\(0)
    );
\ltu_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcBE(15),
      I1 => \^srcae\(15),
      I2 => \^srcae\(14),
      I3 => SrcBE(14),
      O => \q_reg[52]_1\(3)
    );
\ltu_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcBE(13),
      I1 => \^srcae\(13),
      I2 => \^srcae\(12),
      I3 => SrcBE(12),
      O => \q_reg[52]_1\(2)
    );
\ltu_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcBE(11),
      I1 => \^srcae\(11),
      I2 => \^srcae\(10),
      I3 => SrcBE(10),
      O => \q_reg[52]_1\(1)
    );
\ltu_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcBE(9),
      I1 => \^srcae\(9),
      I2 => \^srcae\(8),
      I3 => SrcBE(8),
      O => \q_reg[52]_1\(0)
    );
\ltu_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[59]_1\,
      I1 => \^di\(2),
      I2 => \^di\(3),
      I3 => \^q_reg[60]_0\,
      O => \q_reg[59]_0\(3)
    );
\ltu_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[57]_0\,
      I1 => \^di\(0),
      I2 => \^di\(1),
      I3 => \^q_reg[58]_0\,
      O => \q_reg[59]_0\(2)
    );
\ltu_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(18),
      I1 => \^srcae\(18),
      I2 => \^srcae\(19),
      I3 => SrcBE(19),
      O => \q_reg[59]_0\(1)
    );
\ltu_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(16),
      I1 => \^srcae\(16),
      I2 => \^srcae\(17),
      I3 => SrcBE(17),
      O => \q_reg[59]_0\(0)
    );
\ltu_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[60]_0\,
      I1 => \^di\(3),
      I2 => \^di\(2),
      I3 => \^q_reg[59]_1\,
      O => \q_reg[60]_2\(3)
    );
\ltu_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[58]_0\,
      I1 => \^di\(1),
      I2 => \^di\(0),
      I3 => \^q_reg[57]_0\,
      O => \q_reg[60]_2\(2)
    );
\ltu_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcBE(19),
      I1 => \^srcae\(19),
      I2 => \^srcae\(18),
      I3 => SrcBE(18),
      O => \q_reg[60]_2\(1)
    );
\ltu_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcBE(17),
      I1 => \^srcae\(17),
      I2 => \^srcae\(16),
      I3 => SrcBE(16),
      O => \q_reg[60]_2\(0)
    );
\ltu_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[67]_0\,
      I1 => \^q_reg[178]_0\(2),
      I2 => \^q_reg[179]_0\,
      I3 => \^q_reg[68]_1\,
      O => \q_reg[67]_1\(3)
    );
\ltu_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[65]_1\,
      I1 => \^q_reg[178]_0\(0),
      I2 => \^q_reg[178]_0\(1),
      I3 => \^q_reg[66]_0\,
      O => \q_reg[67]_1\(2)
    );
\ltu_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[63]_0\,
      I1 => \^q_reg[175]_0\(2),
      I2 => \^q_reg[175]_0\(3),
      I3 => \^q_reg[64]_0\,
      O => \q_reg[67]_1\(1)
    );
\ltu_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[61]_0\,
      I1 => \^q_reg[175]_0\(0),
      I2 => \^q_reg[175]_0\(1),
      I3 => \^q_reg[62]_0\,
      O => \q_reg[67]_1\(0)
    );
\ltu_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[179]_0\,
      I1 => \^q_reg[68]_1\,
      I2 => \^q_reg[178]_0\(2),
      I3 => \^q_reg[67]_0\,
      O => \q_reg[179]_1\(3)
    );
\ltu_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[66]_0\,
      I1 => \^q_reg[178]_0\(1),
      I2 => \^q_reg[178]_0\(0),
      I3 => \^q_reg[65]_1\,
      O => \q_reg[179]_1\(2)
    );
\ltu_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[64]_0\,
      I1 => \^q_reg[175]_0\(3),
      I2 => \^q_reg[175]_0\(2),
      I3 => \^q_reg[63]_0\,
      O => \q_reg[179]_1\(1)
    );
\ltu_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[62]_0\,
      I1 => \^q_reg[175]_0\(1),
      I2 => \^q_reg[175]_0\(0),
      I3 => \^q_reg[61]_0\,
      O => \q_reg[179]_1\(0)
    );
ltu_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(6),
      I1 => \^srcae\(6),
      I2 => \^srcae\(7),
      I3 => SrcBE(7),
      O => \q_reg[43]_0\(3)
    );
ltu_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(4),
      I1 => \^srcae\(4),
      I2 => \^srcae\(5),
      I3 => SrcBE(5),
      O => \q_reg[43]_0\(2)
    );
ltu_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(2),
      I1 => \^srcae\(2),
      I2 => \^srcae\(3),
      I3 => SrcBE(3),
      O => \q_reg[43]_0\(1)
    );
ltu_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[37]_0\,
      I1 => \^srcae\(0),
      I2 => \^srcae\(1),
      I3 => SrcBE(1),
      O => \q_reg[43]_0\(0)
    );
ltu_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcBE(7),
      I1 => \^srcae\(7),
      I2 => \^srcae\(6),
      I3 => SrcBE(6),
      O => \q_reg[44]_1\(3)
    );
ltu_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcBE(5),
      I1 => \^srcae\(5),
      I2 => \^srcae\(4),
      I3 => SrcBE(4),
      O => \q_reg[44]_1\(2)
    );
ltu_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcBE(3),
      I1 => \^srcae\(3),
      I2 => \^srcae\(2),
      I3 => SrcBE(2),
      O => \q_reg[44]_1\(1)
    );
ltu_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcBE(1),
      I1 => \^srcae\(1),
      I2 => \^srcae\(0),
      I3 => \^q_reg[37]_0\,
      O => \q_reg[44]_1\(0)
    );
\q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A000000000000"
    )
        port map (
      I0 => \q_reg[0]_2\,
      I1 => \q_reg[179]_3\,
      I2 => \c/PCSrcE2__5\,
      I3 => \^q_reg[10]_0\,
      I4 => \^q_reg[12]_0\,
      I5 => \q_reg[68]_2\(62),
      O => \q_reg[65]_0\(0)
    );
\q[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(70),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(0)
    );
\q[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => \q_reg[63]_1\(0),
      I1 => \^d\(104),
      I2 => BranchTargetE(0),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(0)
    );
\q[100]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(46),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(100)
    );
\q[100]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(28),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(28),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(33),
      O => \^d\(100)
    );
\q[101]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(47),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(101)
    );
\q[101]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(29),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(29),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(34),
      O => \^d\(101)
    );
\q[102]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(48),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(102)
    );
\q[102]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(30),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(30),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(35),
      O => \^d\(102)
    );
\q[103]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(49),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(103)
    );
\q[103]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(31),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(31),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(36),
      O => \^d\(103)
    );
\q[104]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(50),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(104)
    );
\q[104]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00EEEEF0F0EEEE"
    )
        port map (
      I0 => \q[104]_i_2_n_0\,
      I1 => \q[104]_i_3_n_0\,
      I2 => CO(0),
      I3 => data8(0),
      I4 => \q_reg[4]_1\(4),
      I5 => \q_reg[4]_1\(3),
      O => \^d\(104)
    );
\q[104]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88800080"
    )
        port map (
      I0 => \q_reg[4]_1\(3),
      I1 => \q_reg[104]_0\,
      I2 => \i__carry_i_13_n_0\,
      I3 => \^q_reg[37]_0\,
      I4 => \i__carry_i_12_n_0\,
      I5 => \q[104]_i_5_n_0\,
      O => \q[104]_i_2_n_0\
    );
\q[104]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232320232020202"
    )
        port map (
      I0 => sum(0),
      I1 => \q_reg[4]_1\(3),
      I2 => \q_reg[4]_1\(2),
      I3 => \^q_reg[37]_0\,
      I4 => \^srcae\(0),
      I5 => \q_reg[4]_1\(1),
      O => \q[104]_i_3_n_0\
    );
\q[104]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABBBABABBAABABA"
    )
        port map (
      I0 => \q[104]_i_6_n_0\,
      I1 => \q_reg[4]_1\(2),
      I2 => \alu/result00_out\(0),
      I3 => \v__7\,
      I4 => \q_reg[4]_1\(1),
      I5 => O(0),
      O => \q[104]_i_5_n_0\
    );
\q[104]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \i__carry__6_i_9_n_0\,
      I1 => \^srcae\(0),
      I2 => \q_reg[4]_1\(2),
      I3 => \^q_reg[37]_0\,
      I4 => \q_reg[4]_1\(1),
      I5 => \i__carry__6_i_8_n_0\,
      O => \q[104]_i_6_n_0\
    );
\q[104]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[37]_0\,
      I1 => \^srcae\(0),
      O => \alu/result00_out\(0)
    );
\q[105]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(51),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(105)
    );
\q[105]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => \q[105]_i_3_n_0\,
      I2 => \q[105]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(105)
    );
\q[105]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(1),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(1),
      I3 => \^srcae\(1),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[105]_i_2_n_0\
    );
\q[105]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(1),
      I1 => \^srcae\(1),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(1),
      O => \q[105]_i_3_n_0\
    );
\q[105]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[106]_i_5_n_0\,
      I1 => \q[105]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry_i_11_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry_i_12_n_0\,
      O => \q[105]_i_4_n_0\
    );
\q[105]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \i__carry__6_i_9_n_0\,
      I1 => \^srcae\(0),
      I2 => \i__carry__6_i_8_n_0\,
      O => \q[105]_i_5_n_0\
    );
\q[106]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(52),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(106)
    );
\q[106]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[106]_i_2_n_0\,
      I1 => \q[106]_i_3_n_0\,
      I2 => \q[106]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(106)
    );
\q[106]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(2),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(2),
      I3 => \^srcae\(2),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[106]_i_2_n_0\
    );
\q[106]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(2),
      I1 => \^srcae\(2),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(2),
      O => \q[106]_i_3_n_0\
    );
\q[106]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[107]_i_5_n_0\,
      I1 => \q[106]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry_i_10_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry_i_11_n_0\,
      O => \q[106]_i_4_n_0\
    );
\q[106]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => SrcBE(2),
      I1 => SrcBE(1),
      I2 => \^srcae\(1),
      I3 => \i__carry__6_i_9_n_0\,
      O => \q[106]_i_5_n_0\
    );
\q[107]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(53),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(107)
    );
\q[107]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[107]_i_2_n_0\,
      I1 => \q[107]_i_3_n_0\,
      I2 => \q[107]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(107)
    );
\q[107]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(3),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(3),
      I3 => \^srcae\(3),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[107]_i_2_n_0\
    );
\q[107]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(3),
      I1 => \^srcae\(3),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(3),
      O => \q[107]_i_3_n_0\
    );
\q[107]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[108]_i_5_n_0\,
      I1 => \q[107]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry_i_9_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry_i_10_n_0\,
      O => \q[107]_i_4_n_0\
    );
\q[107]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000088C0"
    )
        port map (
      I0 => \^srcae\(0),
      I1 => \i__carry__6_i_9_n_0\,
      I2 => \^srcae\(2),
      I3 => SrcBE(1),
      I4 => SrcBE(2),
      O => \q[107]_i_5_n_0\
    );
\q[108]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(54),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(108)
    );
\q[108]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[108]_i_2_n_0\,
      I1 => \q[108]_i_3_n_0\,
      I2 => \q[108]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(108)
    );
\q[108]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(4),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(4),
      I3 => \^srcae\(4),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[108]_i_2_n_0\
    );
\q[108]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(4),
      I1 => \^srcae\(4),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(4),
      O => \q[108]_i_3_n_0\
    );
\q[108]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[109]_i_5_n_0\,
      I1 => \q[108]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__0_i_12_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry_i_9_n_0\,
      O => \q[108]_i_4_n_0\
    );
\q[108]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000088C0"
    )
        port map (
      I0 => \^srcae\(1),
      I1 => \i__carry__6_i_9_n_0\,
      I2 => \^srcae\(3),
      I3 => SrcBE(1),
      I4 => SrcBE(2),
      O => \q[108]_i_5_n_0\
    );
\q[109]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(55),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(109)
    );
\q[109]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[109]_i_2_n_0\,
      I1 => \q[109]_i_3_n_0\,
      I2 => \q[109]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(109)
    );
\q[109]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(5),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(5),
      I3 => \^srcae\(5),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[109]_i_2_n_0\
    );
\q[109]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(5),
      I1 => \^srcae\(5),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(5),
      O => \q[109]_i_3_n_0\
    );
\q[109]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[110]_i_5_n_0\,
      I1 => \q[109]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__0_i_11_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__0_i_12_n_0\,
      O => \q[109]_i_4_n_0\
    );
\q[109]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => \^srcae\(2),
      I1 => SrcBE(1),
      I2 => \^srcae\(0),
      I3 => SrcBE(2),
      I4 => \i__carry__6_i_9_n_0\,
      I5 => \^srcae\(4),
      O => \q[109]_i_5_n_0\
    );
\q[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[10]_1\,
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => \q_reg[65]_0\(5)
    );
\q[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(3),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(10)
    );
\q[10]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(7),
      I1 => \^d\(114),
      I2 => BranchTargetE(10),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(10)
    );
\q[10]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(7),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(8)
    );
\q[10]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(7),
      I1 => opb5E,
      I2 => BranchTargetE(7),
      O => \^d\(10)
    );
\q[110]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(56),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(110)
    );
\q[110]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[110]_i_2_n_0\,
      I1 => \q[110]_i_3_n_0\,
      I2 => \q[110]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(110)
    );
\q[110]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(6),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(6),
      I3 => \^srcae\(6),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[110]_i_2_n_0\
    );
\q[110]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(6),
      I1 => \^srcae\(6),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(6),
      O => \q[110]_i_3_n_0\
    );
\q[110]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[111]_i_6_n_0\,
      I1 => \q[110]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__0_i_10_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__0_i_11_n_0\,
      O => \q[110]_i_4_n_0\
    );
\q[110]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => \^srcae\(3),
      I1 => SrcBE(1),
      I2 => \^srcae\(1),
      I3 => SrcBE(2),
      I4 => \i__carry__6_i_9_n_0\,
      I5 => \^srcae\(5),
      O => \q[110]_i_5_n_0\
    );
\q[111]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(57),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(111)
    );
\q[111]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[111]_i_2_n_0\,
      I1 => \q[111]_i_3_n_0\,
      I2 => \q[111]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(111)
    );
\q[111]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(7),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(7),
      I3 => \^srcae\(7),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[111]_i_2_n_0\
    );
\q[111]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(7),
      I1 => \^srcae\(7),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(7),
      O => \q[111]_i_3_n_0\
    );
\q[111]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAEFAFAFEAEAAAA"
    )
        port map (
      I0 => \q[111]_i_5_n_0\,
      I1 => \q[111]_i_6_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__0_i_9_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__0_i_10_n_0\,
      O => \q[111]_i_4_n_0\
    );
\q[111]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11100010"
    )
        port map (
      I0 => \q_reg[4]_1\(1),
      I1 => \^q_reg[37]_0\,
      I2 => \q[114]_i_6_n_0\,
      I3 => SrcBE(1),
      I4 => \q[112]_i_6_n_0\,
      O => \q[111]_i_5_n_0\
    );
\q[111]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^srcae\(0),
      I1 => SrcBE(2),
      I2 => \i__carry__6_i_9_n_0\,
      I3 => \^srcae\(4),
      I4 => SrcBE(1),
      I5 => \q[111]_i_7_n_0\,
      O => \q[111]_i_6_n_0\
    );
\q[111]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^srcae\(2),
      I1 => SrcBE(2),
      I2 => \i__carry__6_i_9_n_0\,
      I3 => \^srcae\(6),
      O => \q[111]_i_7_n_0\
    );
\q[112]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(58),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(112)
    );
\q[112]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[112]_i_2_n_0\,
      I1 => \q[112]_i_3_n_0\,
      I2 => \q[112]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(112)
    );
\q[112]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(8),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(8),
      I3 => \^srcae\(8),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[112]_i_2_n_0\
    );
\q[112]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(8),
      I1 => \^srcae\(8),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(8),
      O => \q[112]_i_3_n_0\
    );
\q[112]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCCFEFEFCCCCECE"
    )
        port map (
      I0 => \q[113]_i_5_n_0\,
      I1 => \q[112]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__1_i_12_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__0_i_9_n_0\,
      O => \q[112]_i_4_n_0\
    );
\q[112]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => \q_reg[4]_1\(1),
      I1 => \^q_reg[37]_0\,
      I2 => \q[114]_i_6_n_0\,
      I3 => SrcBE(1),
      I4 => \q[112]_i_6_n_0\,
      O => \q[112]_i_5_n_0\
    );
\q[112]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^srcae\(1),
      I1 => SrcBE(2),
      I2 => \i__carry__6_i_9_n_0\,
      I3 => \^srcae\(5),
      O => \q[112]_i_6_n_0\
    );
\q[113]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(59),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(113)
    );
\q[113]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[113]_i_2_n_0\,
      I1 => \q[113]_i_3_n_0\,
      I2 => \q[113]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(113)
    );
\q[113]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(9),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(9),
      I3 => \^srcae\(9),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[113]_i_2_n_0\
    );
\q[113]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(9),
      I1 => \^srcae\(9),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(9),
      O => \q[113]_i_3_n_0\
    );
\q[113]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[114]_i_5_n_0\,
      I1 => \q[113]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__1_i_11_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__1_i_12_n_0\,
      O => \q[113]_i_4_n_0\
    );
\q[113]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^srcae\(2),
      I1 => SrcBE(2),
      I2 => \i__carry__6_i_9_n_0\,
      I3 => \^srcae\(6),
      I4 => SrcBE(1),
      I5 => \q[115]_i_6_n_0\,
      O => \q[113]_i_5_n_0\
    );
\q[114]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(60),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(114)
    );
\q[114]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[114]_i_2_n_0\,
      I1 => \q[114]_i_3_n_0\,
      I2 => \q[114]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(114)
    );
\q[114]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(10),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(10),
      I3 => \^srcae\(10),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[114]_i_2_n_0\
    );
\q[114]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(10),
      I1 => \^srcae\(10),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(10),
      O => \q[114]_i_3_n_0\
    );
\q[114]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[115]_i_5_n_0\,
      I1 => \q[114]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__1_i_10_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__1_i_11_n_0\,
      O => \q[114]_i_4_n_0\
    );
\q[114]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[114]_i_6_n_0\,
      I1 => SrcBE(1),
      I2 => \q[116]_i_6_n_0\,
      O => \q[114]_i_5_n_0\
    );
\q[114]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^srcae\(3),
      I1 => SrcBE(2),
      I2 => \i__carry__6_i_9_n_0\,
      I3 => \^srcae\(7),
      O => \q[114]_i_6_n_0\
    );
\q[115]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(61),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(115)
    );
\q[115]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[115]_i_2_n_0\,
      I1 => \q[115]_i_3_n_0\,
      I2 => \q[115]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(115)
    );
\q[115]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(11),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(11),
      I3 => \^srcae\(11),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[115]_i_2_n_0\
    );
\q[115]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(11),
      I1 => \^srcae\(11),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(11),
      O => \q[115]_i_3_n_0\
    );
\q[115]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[116]_i_5_n_0\,
      I1 => \q[115]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__1_i_9_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__1_i_10_n_0\,
      O => \q[115]_i_4_n_0\
    );
\q[115]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[115]_i_6_n_0\,
      I1 => SrcBE(1),
      I2 => \q[117]_i_6_n_0\,
      O => \q[115]_i_5_n_0\
    );
\q[115]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^srcae\(4),
      I1 => SrcBE(2),
      I2 => \^srcae\(0),
      I3 => \^srcae\(8),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \q[115]_i_6_n_0\
    );
\q[116]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(0),
      O => p_0_in(116)
    );
\q[116]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[116]_i_2_n_0\,
      I1 => \q[116]_i_3_n_0\,
      I2 => \q[116]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(116)
    );
\q[116]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(12),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(12),
      I3 => \^srcae\(12),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[116]_i_2_n_0\
    );
\q[116]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(12),
      I1 => \^srcae\(12),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(12),
      O => \q[116]_i_3_n_0\
    );
\q[116]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[117]_i_5_n_0\,
      I1 => \q[116]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__2_i_12_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__1_i_9_n_0\,
      O => \q[116]_i_4_n_0\
    );
\q[116]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[116]_i_6_n_0\,
      I1 => SrcBE(1),
      I2 => \q[118]_i_6_n_0\,
      O => \q[116]_i_5_n_0\
    );
\q[116]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^srcae\(5),
      I1 => SrcBE(2),
      I2 => \^srcae\(1),
      I3 => \^srcae\(9),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \q[116]_i_6_n_0\
    );
\q[117]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(1),
      O => p_0_in(117)
    );
\q[117]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[117]_i_2_n_0\,
      I1 => \q[117]_i_3_n_0\,
      I2 => \q[117]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(117)
    );
\q[117]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(13),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(13),
      I3 => \^srcae\(13),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[117]_i_2_n_0\
    );
\q[117]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(13),
      I1 => \^srcae\(13),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(13),
      O => \q[117]_i_3_n_0\
    );
\q[117]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[118]_i_5_n_0\,
      I1 => \q[117]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__2_i_11_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__2_i_12_n_0\,
      O => \q[117]_i_4_n_0\
    );
\q[117]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \q[117]_i_6_n_0\,
      I1 => SrcBE(1),
      I2 => \q[119]_i_6_n_0\,
      I3 => SrcBE(2),
      I4 => \q[123]_i_6_n_0\,
      O => \q[117]_i_5_n_0\
    );
\q[117]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^srcae\(6),
      I1 => SrcBE(2),
      I2 => \^srcae\(2),
      I3 => \^srcae\(10),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \q[117]_i_6_n_0\
    );
\q[118]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(2),
      O => p_0_in(118)
    );
\q[118]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[118]_i_2_n_0\,
      I1 => \q[118]_i_3_n_0\,
      I2 => \q[118]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(118)
    );
\q[118]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(14),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(14),
      I3 => \^srcae\(14),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[118]_i_2_n_0\
    );
\q[118]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(14),
      I1 => \^srcae\(14),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(14),
      O => \q[118]_i_3_n_0\
    );
\q[118]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[119]_i_5_n_0\,
      I1 => \q[118]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__2_i_10_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__2_i_11_n_0\,
      O => \q[118]_i_4_n_0\
    );
\q[118]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \q[118]_i_6_n_0\,
      I1 => SrcBE(1),
      I2 => \q[120]_i_6_n_0\,
      I3 => SrcBE(2),
      I4 => \q[124]_i_6_n_0\,
      O => \q[118]_i_5_n_0\
    );
\q[118]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => \^srcae\(7),
      I1 => SrcBE(2),
      I2 => \^srcae\(3),
      I3 => \^srcae\(11),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \q[118]_i_6_n_0\
    );
\q[119]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(3),
      O => p_0_in(119)
    );
\q[119]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[119]_i_2_n_0\,
      I1 => \q[119]_i_3_n_0\,
      I2 => \q[119]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(119)
    );
\q[119]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(15),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(15),
      I3 => \^srcae\(15),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[119]_i_2_n_0\
    );
\q[119]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(15),
      I1 => \^srcae\(15),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(15),
      O => \q[119]_i_3_n_0\
    );
\q[119]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[120]_i_5_n_0\,
      I1 => \q[119]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__2_i_9_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__2_i_10_n_0\,
      O => \q[119]_i_4_n_0\
    );
\q[119]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[119]_i_6_n_0\,
      I1 => \q[123]_i_6_n_0\,
      I2 => SrcBE(1),
      I3 => \q[121]_i_6_n_0\,
      I4 => SrcBE(2),
      I5 => \q[125]_i_6_n_0\,
      O => \q[119]_i_5_n_0\
    );
\q[119]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srcae\(0),
      I1 => \^srcae\(8),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[119]_i_6_n_0\
    );
\q[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \controls__21\(0),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => \q_reg[65]_0\(6)
    );
\q[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(4),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(11)
    );
\q[11]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(8),
      I1 => \^d\(115),
      I2 => BranchTargetE(11),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(11)
    );
\q[11]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(8),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(9)
    );
\q[11]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(8),
      I1 => opb5E,
      I2 => BranchTargetE(8),
      O => \^d\(11)
    );
\q[120]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(4),
      O => p_0_in(120)
    );
\q[120]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[120]_i_2_n_0\,
      I1 => \q[120]_i_3_n_0\,
      I2 => \q[120]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(120)
    );
\q[120]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(16),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(16),
      I3 => \^srcae\(16),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[120]_i_2_n_0\
    );
\q[120]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(16),
      I1 => \^srcae\(16),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(16),
      O => \q[120]_i_3_n_0\
    );
\q[120]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[121]_i_5_n_0\,
      I1 => \q[120]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__3_i_15_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__2_i_9_n_0\,
      O => \q[120]_i_4_n_0\
    );
\q[120]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[120]_i_6_n_0\,
      I1 => \q[124]_i_6_n_0\,
      I2 => SrcBE(1),
      I3 => \q[122]_i_6_n_0\,
      I4 => SrcBE(2),
      I5 => \q[126]_i_6_n_0\,
      O => \q[120]_i_5_n_0\
    );
\q[120]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srcae\(1),
      I1 => \^srcae\(9),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[120]_i_6_n_0\
    );
\q[121]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(5),
      O => p_0_in(121)
    );
\q[121]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[121]_i_2_n_0\,
      I1 => \q[121]_i_3_n_0\,
      I2 => \q[121]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(121)
    );
\q[121]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(17),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(17),
      I3 => \^srcae\(17),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[121]_i_2_n_0\
    );
\q[121]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(17),
      I1 => \^srcae\(17),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(17),
      O => \q[121]_i_3_n_0\
    );
\q[121]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[122]_i_5_n_0\,
      I1 => \q[121]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__3_i_14_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__3_i_15_n_0\,
      O => \q[121]_i_4_n_0\
    );
\q[121]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[121]_i_6_n_0\,
      I1 => \q[125]_i_6_n_0\,
      I2 => SrcBE(1),
      I3 => \q[123]_i_6_n_0\,
      I4 => SrcBE(2),
      I5 => \q[127]_i_6_n_0\,
      O => \q[121]_i_5_n_0\
    );
\q[121]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srcae\(2),
      I1 => \^srcae\(10),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[121]_i_6_n_0\
    );
\q[122]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(6),
      O => p_0_in(122)
    );
\q[122]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[122]_i_2_n_0\,
      I1 => \q[122]_i_3_n_0\,
      I2 => \q[122]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(122)
    );
\q[122]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(18),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(18),
      I3 => \^srcae\(18),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[122]_i_2_n_0\
    );
\q[122]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(18),
      I1 => \^srcae\(18),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(18),
      O => \q[122]_i_3_n_0\
    );
\q[122]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[123]_i_5_n_0\,
      I1 => \q[122]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__3_i_16_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__3_i_14_n_0\,
      O => \q[122]_i_4_n_0\
    );
\q[122]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[122]_i_6_n_0\,
      I1 => \q[126]_i_6_n_0\,
      I2 => SrcBE(1),
      I3 => \q[124]_i_6_n_0\,
      I4 => SrcBE(2),
      I5 => \q[128]_i_6_n_0\,
      O => \q[122]_i_5_n_0\
    );
\q[122]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srcae\(3),
      I1 => \^srcae\(11),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[122]_i_6_n_0\
    );
\q[123]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(7),
      O => p_0_in(123)
    );
\q[123]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[123]_i_2_n_0\,
      I1 => \q[123]_i_3_n_0\,
      I2 => \q[123]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(123)
    );
\q[123]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(19),
      I1 => \q_reg[123]_0\,
      I2 => SrcBE(19),
      I3 => \^srcae\(19),
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[123]_i_2_n_0\
    );
\q[123]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(19),
      I1 => \^srcae\(19),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(19),
      O => \q[123]_i_3_n_0\
    );
\q[123]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[124]_i_5_n_0\,
      I1 => \q[123]_i_5_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__3_i_17_n_0\,
      I4 => \^q_reg[37]_0\,
      I5 => \i__carry__3_i_16_n_0\,
      O => \q[123]_i_4_n_0\
    );
\q[123]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[123]_i_6_n_0\,
      I1 => \q[127]_i_6_n_0\,
      I2 => SrcBE(1),
      I3 => \q[125]_i_6_n_0\,
      I4 => SrcBE(2),
      I5 => \q[129]_i_6_n_0\,
      O => \q[123]_i_5_n_0\
    );
\q[123]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srcae\(4),
      I1 => \^srcae\(12),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[123]_i_6_n_0\
    );
\q[124]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(8),
      O => p_0_in(124)
    );
\q[124]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => \^q_reg[57]_0\,
      I1 => \^di\(0),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(20),
      O => \q_reg[6]_0\
    );
\q[124]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \q_reg[133]_0\,
      I1 => \^data6\(20),
      I2 => \q_reg[4]_1\(1),
      I3 => \q[124]_i_5_n_0\,
      I4 => \q[125]_i_5_n_0\,
      I5 => \^q_reg[37]_0\,
      O => \q_reg[5]_0\
    );
\q[124]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[124]_i_6_n_0\,
      I1 => \q[128]_i_6_n_0\,
      I2 => SrcBE(1),
      I3 => \q[126]_i_6_n_0\,
      I4 => SrcBE(2),
      I5 => \q[130]_i_6_n_0\,
      O => \q[124]_i_5_n_0\
    );
\q[124]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srcae\(5),
      I1 => \^srcae\(13),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[124]_i_6_n_0\
    );
\q[125]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(9),
      O => p_0_in(125)
    );
\q[125]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => \^q_reg[58]_0\,
      I1 => \^di\(1),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(21),
      O => \q_reg[6]_6\
    );
\q[125]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \q_reg[133]_0\,
      I1 => \^data6\(21),
      I2 => \q_reg[4]_1\(1),
      I3 => \q[125]_i_5_n_0\,
      I4 => \q[126]_i_5_n_0\,
      I5 => \^q_reg[37]_0\,
      O => \q_reg[5]_1\
    );
\q[125]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[125]_i_6_n_0\,
      I1 => \q[129]_i_6_n_0\,
      I2 => SrcBE(1),
      I3 => \q[127]_i_6_n_0\,
      I4 => SrcBE(2),
      I5 => \q[131]_i_6_n_0\,
      O => \q[125]_i_5_n_0\
    );
\q[125]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srcae\(6),
      I1 => \^srcae\(14),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[125]_i_6_n_0\
    );
\q[126]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(10),
      O => p_0_in(126)
    );
\q[126]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => \^q_reg[59]_1\,
      I1 => \^di\(2),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(22),
      O => \q_reg[6]_1\
    );
\q[126]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \q_reg[133]_0\,
      I1 => \^data6\(22),
      I2 => \q_reg[4]_1\(1),
      I3 => \q[126]_i_5_n_0\,
      I4 => \q[127]_i_5_n_0\,
      I5 => \^q_reg[37]_0\,
      O => \q_reg[5]_2\
    );
\q[126]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[126]_i_6_n_0\,
      I1 => \q[130]_i_6_n_0\,
      I2 => SrcBE(1),
      I3 => \q[128]_i_6_n_0\,
      I4 => SrcBE(2),
      I5 => \q[132]_i_6_n_0\,
      O => \q[126]_i_5_n_0\
    );
\q[126]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^srcae\(7),
      I1 => \^srcae\(15),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[126]_i_6_n_0\
    );
\q[127]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(11),
      O => p_0_in(127)
    );
\q[127]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => \^q_reg[60]_0\,
      I1 => \^di\(3),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(23),
      O => \q_reg[6]_7\
    );
\q[127]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \q_reg[133]_0\,
      I1 => \^data6\(23),
      I2 => \q_reg[4]_1\(1),
      I3 => \q[127]_i_5_n_0\,
      I4 => \q[128]_i_5_n_0\,
      I5 => \^q_reg[37]_0\,
      O => \q_reg[5]_3\
    );
\q[127]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[127]_i_6_n_0\,
      I1 => \q[131]_i_6_n_0\,
      I2 => SrcBE(1),
      I3 => \q[129]_i_6_n_0\,
      I4 => SrcBE(2),
      I5 => \q[133]_i_6_n_0\,
      O => \q[127]_i_5_n_0\
    );
\q[127]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srcae\(8),
      I1 => SrcBE(3),
      I2 => \^srcae\(0),
      I3 => SrcBE(4),
      I4 => \^srcae\(16),
      O => \q[127]_i_6_n_0\
    );
\q[128]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(12),
      O => p_0_in(128)
    );
\q[128]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => \^q_reg[61]_0\,
      I1 => \^q_reg[175]_0\(0),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(24),
      O => \q_reg[6]_2\
    );
\q[128]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \q_reg[133]_0\,
      I1 => \^data6\(24),
      I2 => \q_reg[4]_1\(1),
      I3 => \q[128]_i_5_n_0\,
      I4 => \q[129]_i_5_n_0\,
      I5 => \^q_reg[37]_0\,
      O => \q_reg[5]_4\
    );
\q[128]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[128]_i_6_n_0\,
      I1 => \q[132]_i_6_n_0\,
      I2 => SrcBE(1),
      I3 => \q[130]_i_6_n_0\,
      I4 => SrcBE(2),
      I5 => \q[134]_i_8_n_0\,
      O => \q[128]_i_5_n_0\
    );
\q[128]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srcae\(9),
      I1 => SrcBE(3),
      I2 => \^srcae\(1),
      I3 => SrcBE(4),
      I4 => \^srcae\(17),
      O => \q[128]_i_6_n_0\
    );
\q[129]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(13),
      O => p_0_in(129)
    );
\q[129]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => \^q_reg[62]_0\,
      I1 => \^q_reg[175]_0\(1),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(25),
      O => \q_reg[6]_8\
    );
\q[129]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \q_reg[133]_0\,
      I1 => \^data6\(25),
      I2 => \q_reg[4]_1\(1),
      I3 => \q[129]_i_5_n_0\,
      I4 => \q[130]_i_5_n_0\,
      I5 => \^q_reg[37]_0\,
      O => \q_reg[5]_5\
    );
\q[129]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[129]_i_6_n_0\,
      I1 => \q[133]_i_6_n_0\,
      I2 => SrcBE(1),
      I3 => \q[131]_i_6_n_0\,
      I4 => SrcBE(2),
      I5 => \q[135]_i_14_n_0\,
      O => \q[129]_i_5_n_0\
    );
\q[129]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srcae\(10),
      I1 => SrcBE(3),
      I2 => \^srcae\(2),
      I3 => SrcBE(4),
      I4 => \^srcae\(18),
      O => \q[129]_i_6_n_0\
    );
\q[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(5),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(12)
    );
\q[12]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(9),
      I1 => \^d\(116),
      I2 => BranchTargetE(12),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(12)
    );
\q[12]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(9),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(10)
    );
\q[12]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(9),
      I1 => opb5E,
      I2 => BranchTargetE(9),
      O => \^d\(12)
    );
\q[130]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(14),
      O => p_0_in(130)
    );
\q[130]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => \^q_reg[63]_0\,
      I1 => \^q_reg[175]_0\(2),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(26),
      O => \q_reg[6]_3\
    );
\q[130]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \q_reg[133]_0\,
      I1 => \^data6\(26),
      I2 => \q_reg[4]_1\(1),
      I3 => \q[130]_i_5_n_0\,
      I4 => \q[131]_i_5_n_0\,
      I5 => \^q_reg[37]_0\,
      O => \q_reg[5]_6\
    );
\q[130]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[130]_i_6_n_0\,
      I1 => \q[134]_i_8_n_0\,
      I2 => SrcBE(1),
      I3 => \q[132]_i_6_n_0\,
      I4 => SrcBE(2),
      I5 => \q[135]_i_10_n_0\,
      O => \q[130]_i_5_n_0\
    );
\q[130]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srcae\(11),
      I1 => SrcBE(3),
      I2 => \^srcae\(3),
      I3 => SrcBE(4),
      I4 => \^srcae\(19),
      O => \q[130]_i_6_n_0\
    );
\q[131]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(15),
      O => p_0_in(131)
    );
\q[131]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => \^q_reg[64]_0\,
      I1 => \^q_reg[175]_0\(3),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(27),
      O => \q_reg[6]_9\
    );
\q[131]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \q_reg[133]_0\,
      I1 => \^data6\(27),
      I2 => \q_reg[4]_1\(1),
      I3 => \q[131]_i_5_n_0\,
      I4 => \q[132]_i_5_n_0\,
      I5 => \^q_reg[37]_0\,
      O => \q_reg[5]_7\
    );
\q[131]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[131]_i_6_n_0\,
      I1 => \q[135]_i_14_n_0\,
      I2 => SrcBE(1),
      I3 => \q[133]_i_6_n_0\,
      I4 => SrcBE(2),
      I5 => \q[135]_i_17_n_0\,
      O => \q[131]_i_5_n_0\
    );
\q[131]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srcae\(12),
      I1 => SrcBE(3),
      I2 => \^srcae\(4),
      I3 => SrcBE(4),
      I4 => \^di\(0),
      O => \q[131]_i_6_n_0\
    );
\q[132]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(16),
      O => p_0_in(132)
    );
\q[132]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => \^q_reg[65]_1\,
      I1 => \^q_reg[178]_0\(0),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(28),
      O => \q_reg[6]_4\
    );
\q[132]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \q_reg[133]_0\,
      I1 => \^data6\(28),
      I2 => \q_reg[4]_1\(1),
      I3 => \q[132]_i_5_n_0\,
      I4 => \q[133]_i_5_n_0\,
      I5 => \^q_reg[37]_0\,
      O => \q_reg[5]_8\
    );
\q[132]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[132]_i_6_n_0\,
      I1 => \q[135]_i_10_n_0\,
      I2 => SrcBE(1),
      I3 => \q[134]_i_8_n_0\,
      I4 => SrcBE(2),
      I5 => \q[135]_i_13_n_0\,
      O => \q[132]_i_5_n_0\
    );
\q[132]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srcae\(13),
      I1 => SrcBE(3),
      I2 => \^srcae\(5),
      I3 => SrcBE(4),
      I4 => \^di\(1),
      O => \q[132]_i_6_n_0\
    );
\q[133]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(17),
      O => p_0_in(133)
    );
\q[133]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => \^q_reg[66]_0\,
      I1 => \^q_reg[178]_0\(1),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(29),
      O => \q_reg[6]_10\
    );
\q[133]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \q_reg[133]_0\,
      I1 => \^data6\(29),
      I2 => \q_reg[4]_1\(1),
      I3 => \q[133]_i_5_n_0\,
      I4 => \q[134]_i_7_n_0\,
      I5 => \^q_reg[37]_0\,
      O => \q_reg[5]_9\
    );
\q[133]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[133]_i_6_n_0\,
      I1 => \q[135]_i_17_n_0\,
      I2 => SrcBE(1),
      I3 => \q[135]_i_14_n_0\,
      I4 => SrcBE(2),
      I5 => \q[135]_i_15_n_0\,
      O => \q[133]_i_5_n_0\
    );
\q[133]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srcae\(14),
      I1 => SrcBE(3),
      I2 => \^srcae\(6),
      I3 => SrcBE(4),
      I4 => \^di\(2),
      O => \q[133]_i_6_n_0\
    );
\q[134]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(18),
      O => p_0_in(134)
    );
\q[134]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => \^q_reg[67]_0\,
      I1 => \^q_reg[178]_0\(2),
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => sum(30),
      O => \q_reg[6]_5\
    );
\q[134]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \q_reg[133]_0\,
      I1 => \^data6\(30),
      I2 => \q_reg[4]_1\(1),
      I3 => \q[134]_i_7_n_0\,
      I4 => \q[135]_i_9_n_0\,
      I5 => \^q_reg[37]_0\,
      O => \q_reg[5]\
    );
\q[134]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[134]_i_8_n_0\,
      I1 => \q[135]_i_13_n_0\,
      I2 => SrcBE(1),
      I3 => \q[135]_i_10_n_0\,
      I4 => SrcBE(2),
      I5 => \q[135]_i_11_n_0\,
      O => \q[134]_i_7_n_0\
    );
\q[134]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^srcae\(15),
      I1 => SrcBE(3),
      I2 => \^srcae\(7),
      I3 => SrcBE(4),
      I4 => \^di\(3),
      O => \q[134]_i_8_n_0\
    );
\q[135]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(19),
      O => p_0_in(135)
    );
\q[135]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[175]_0\(1),
      I1 => \^srcae\(9),
      I2 => SrcBE(3),
      I3 => \^srcae\(1),
      I4 => SrcBE(4),
      I5 => \^srcae\(17),
      O => \q[135]_i_10_n_0\
    );
\q[135]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[178]_0\(1),
      I1 => \^srcae\(13),
      I2 => SrcBE(3),
      I3 => \^srcae\(5),
      I4 => SrcBE(4),
      I5 => \^di\(1),
      O => \q[135]_i_11_n_0\
    );
\q[135]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFCC3300"
    )
        port map (
      I0 => \^srcae\(7),
      I1 => SrcBE(4),
      I2 => \^di\(3),
      I3 => \^q_reg[179]_0\,
      I4 => \^srcae\(15),
      I5 => SrcBE(3),
      O => \q[135]_i_12_n_0\
    );
\q[135]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[175]_0\(3),
      I1 => \^srcae\(11),
      I2 => SrcBE(3),
      I3 => \^srcae\(3),
      I4 => SrcBE(4),
      I5 => \^srcae\(19),
      O => \q[135]_i_13_n_0\
    );
\q[135]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[175]_0\(0),
      I1 => \^srcae\(8),
      I2 => SrcBE(3),
      I3 => \^srcae\(0),
      I4 => SrcBE(4),
      I5 => \^srcae\(16),
      O => \q[135]_i_14_n_0\
    );
\q[135]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[178]_0\(0),
      I1 => \^srcae\(12),
      I2 => SrcBE(3),
      I3 => \^srcae\(4),
      I4 => SrcBE(4),
      I5 => \^di\(0),
      O => \q[135]_i_15_n_0\
    );
\q[135]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[178]_0\(2),
      I1 => \^srcae\(14),
      I2 => SrcBE(3),
      I3 => \^srcae\(6),
      I4 => SrcBE(4),
      I5 => \^di\(2),
      O => \q[135]_i_16_n_0\
    );
\q[135]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[175]_0\(2),
      I1 => \^srcae\(10),
      I2 => SrcBE(3),
      I3 => \^srcae\(2),
      I4 => SrcBE(4),
      I5 => \^srcae\(18),
      O => \q[135]_i_17_n_0\
    );
\q[135]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[135]_i_2_n_0\,
      I1 => \q[135]_i_3_n_0\,
      I2 => \q[135]_i_4_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q_reg[4]_1\(2),
      I5 => \q_reg[135]_1\,
      O => \^d\(124)
    );
\q[135]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => data8(20),
      I1 => \q_reg[123]_0\,
      I2 => \^q_reg[68]_1\,
      I3 => \^q_reg[179]_0\,
      I4 => \q_reg[135]_0\,
      I5 => \q_reg[123]_1\,
      O => \q[135]_i_2_n_0\
    );
\q[135]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => \^q_reg[68]_1\,
      I1 => \^q_reg[179]_0\,
      I2 => \q_reg[4]_1\(2),
      I3 => \q_reg[4]_1\(1),
      I4 => \q_reg[4]_1\(3),
      I5 => O(0),
      O => \q[135]_i_3_n_0\
    );
\q[135]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0C0CFA0A0A0A"
    )
        port map (
      I0 => \q[135]_i_8_n_0\,
      I1 => \q[135]_i_9_n_0\,
      I2 => \q_reg[4]_1\(1),
      I3 => \i__carry__6_i_10_n_0\,
      I4 => \i__carry__6_i_8_n_0\,
      I5 => \^q_reg[37]_0\,
      O => \q[135]_i_4_n_0\
    );
\q[135]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFCC3300"
    )
        port map (
      I0 => \q[135]_i_10_n_0\,
      I1 => SrcBE(2),
      I2 => \q[135]_i_11_n_0\,
      I3 => \q[135]_i_12_n_0\,
      I4 => \q[135]_i_13_n_0\,
      I5 => SrcBE(1),
      O => \q[135]_i_8_n_0\
    );
\q[135]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFCC3300"
    )
        port map (
      I0 => \q[135]_i_14_n_0\,
      I1 => SrcBE(2),
      I2 => \q[135]_i_15_n_0\,
      I3 => \q[135]_i_16_n_0\,
      I4 => \q[135]_i_17_n_0\,
      I5 => SrcBE(1),
      O => \q[135]_i_9_n_0\
    );
\q[136]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(20),
      O => p_0_in(136)
    );
\q[137]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(21),
      O => p_0_in(137)
    );
\q[138]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(22),
      O => p_0_in(138)
    );
\q[139]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(23),
      O => p_0_in(139)
    );
\q[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(63),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => \q_reg[65]_0\(7)
    );
\q[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(6),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(13)
    );
\q[13]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(10),
      I1 => \^d\(117),
      I2 => BranchTargetE(13),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(13)
    );
\q[13]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(10),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(11)
    );
\q[13]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(10),
      I1 => opb5E,
      I2 => BranchTargetE(10),
      O => \^d\(13)
    );
\q[140]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(24),
      O => p_0_in(140)
    );
\q[141]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(25),
      O => p_0_in(141)
    );
\q[142]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(26),
      O => p_0_in(142)
    );
\q[143]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(27),
      O => p_0_in(143)
    );
\q[144]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(28),
      O => p_0_in(144)
    );
\q[145]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(29),
      O => p_0_in(145)
    );
\q[146]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(30),
      O => p_0_in(146)
    );
\q[147]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd21__3\,
      I5 => rd20(31),
      O => p_0_in(147)
    );
\q[148]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(0),
      O => p_0_in(148)
    );
\q[149]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(1),
      O => p_0_in(149)
    );
\q[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \q_reg[68]_2\(62),
      I5 => \q_reg[14]_0\,
      O => \q_reg[65]_0\(8)
    );
\q[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(7),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(14)
    );
\q[14]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(11),
      I1 => \^d\(118),
      I2 => BranchTargetE(14),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(14)
    );
\q[14]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(11),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(12)
    );
\q[14]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(11),
      I1 => opb5E,
      I2 => BranchTargetE(11),
      O => \^d\(14)
    );
\q[150]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(2),
      O => p_0_in(150)
    );
\q[151]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(3),
      O => p_0_in(151)
    );
\q[152]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(4),
      O => p_0_in(152)
    );
\q[153]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(5),
      O => p_0_in(153)
    );
\q[154]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(6),
      O => p_0_in(154)
    );
\q[155]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(7),
      O => p_0_in(155)
    );
\q[156]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(8),
      O => p_0_in(156)
    );
\q[157]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(9),
      O => p_0_in(157)
    );
\q[158]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(10),
      O => p_0_in(158)
    );
\q[159]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(11),
      O => p_0_in(159)
    );
\q[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(8),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(15)
    );
\q[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(12),
      I1 => \^d\(119),
      I2 => BranchTargetE(15),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(15)
    );
\q[15]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(12),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(13)
    );
\q[15]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(12),
      I1 => opb5E,
      I2 => BranchTargetE(12),
      O => \^d\(15)
    );
\q[160]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(12),
      O => p_0_in(160)
    );
\q[161]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(13),
      O => p_0_in(161)
    );
\q[162]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(14),
      O => p_0_in(162)
    );
\q[163]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(15),
      O => p_0_in(163)
    );
\q[164]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(16),
      O => p_0_in(164)
    );
\q[165]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(17),
      O => p_0_in(165)
    );
\q[166]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(18),
      O => p_0_in(166)
    );
\q[167]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(19),
      O => p_0_in(167)
    );
\q[168]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(20),
      O => p_0_in(168)
    );
\q[169]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(21),
      O => p_0_in(169)
    );
\q[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(9),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(16)
    );
\q[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(13),
      I1 => \^d\(120),
      I2 => BranchTargetE(16),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(16)
    );
\q[16]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(13),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(14)
    );
\q[16]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(13),
      I1 => opb5E,
      I2 => BranchTargetE(13),
      O => \^d\(16)
    );
\q[170]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(22),
      O => p_0_in(170)
    );
\q[171]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(23),
      O => p_0_in(171)
    );
\q[172]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(24),
      O => p_0_in(172)
    );
\q[173]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(25),
      O => p_0_in(173)
    );
\q[174]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(26),
      O => p_0_in(174)
    );
\q[175]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(27),
      O => p_0_in(175)
    );
\q[176]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(28),
      O => p_0_in(176)
    );
\q[177]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(29),
      O => p_0_in(177)
    );
\q[178]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(30),
      O => p_0_in(178)
    );
\q[179]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \rd11__3\,
      I5 => rd10(31),
      O => p_0_in(179)
    );
\q[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(10),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(17)
    );
\q[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(14),
      I1 => \^d\(121),
      I2 => BranchTargetE(17),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(17)
    );
\q[17]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(14),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(15)
    );
\q[17]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(14),
      I1 => opb5E,
      I2 => BranchTargetE(14),
      O => \^d\(17)
    );
\q[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(11),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(18)
    );
\q[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(15),
      I1 => \^d\(122),
      I2 => BranchTargetE(18),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(18)
    );
\q[18]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(15),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(16)
    );
\q[18]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(15),
      I1 => opb5E,
      I2 => BranchTargetE(15),
      O => \^d\(18)
    );
\q[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(12),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(19)
    );
\q[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(16),
      I1 => \^d\(123),
      I2 => BranchTargetE(19),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(19)
    );
\q[19]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(16),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(17)
    );
\q[19]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(16),
      I1 => opb5E,
      I2 => BranchTargetE(16),
      O => \^d\(19)
    );
\q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(71),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(1)
    );
\q[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => \q_reg[63]_1\(1),
      I1 => \^d\(105),
      I2 => BranchTargetE(1),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(1)
    );
\q[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(13),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(20)
    );
\q[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(17),
      I1 => \q_reg[30]_0\(0),
      I2 => BranchTargetE(20),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(20)
    );
\q[20]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(17),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(18)
    );
\q[20]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(17),
      I1 => opb5E,
      I2 => BranchTargetE(17),
      O => \^d\(20)
    );
\q[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(14),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(21)
    );
\q[21]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(18),
      I1 => \q_reg[30]_0\(1),
      I2 => BranchTargetE(21),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(21)
    );
\q[21]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(18),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(19)
    );
\q[21]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(18),
      I1 => opb5E,
      I2 => BranchTargetE(18),
      O => \^d\(21)
    );
\q[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(15),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(22)
    );
\q[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(19),
      I1 => \q_reg[30]_0\(2),
      I2 => BranchTargetE(22),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(22)
    );
\q[22]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(19),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(20)
    );
\q[22]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(19),
      I1 => opb5E,
      I2 => BranchTargetE(19),
      O => \^d\(22)
    );
\q[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(16),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(23)
    );
\q[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(20),
      I1 => \q_reg[30]_0\(3),
      I2 => BranchTargetE(23),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(23)
    );
\q[23]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(20),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(21)
    );
\q[23]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(20),
      I1 => opb5E,
      I2 => BranchTargetE(20),
      O => \^d\(23)
    );
\q[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(17),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(24)
    );
\q[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(21),
      I1 => \q_reg[30]_0\(4),
      I2 => BranchTargetE(24),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(24)
    );
\q[24]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(21),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(22)
    );
\q[24]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(21),
      I1 => opb5E,
      I2 => BranchTargetE(21),
      O => \^d\(24)
    );
\q[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(18),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(25)
    );
\q[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(22),
      I1 => \q_reg[30]_0\(5),
      I2 => BranchTargetE(25),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(25)
    );
\q[25]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(22),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(23)
    );
\q[25]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(22),
      I1 => opb5E,
      I2 => BranchTargetE(22),
      O => \^d\(25)
    );
\q[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(19),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(26)
    );
\q[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(23),
      I1 => \q_reg[30]_0\(6),
      I2 => BranchTargetE(26),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(26)
    );
\q[26]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(23),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(24)
    );
\q[26]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(23),
      I1 => opb5E,
      I2 => BranchTargetE(23),
      O => \^d\(26)
    );
\q[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(20),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(27)
    );
\q[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(24),
      I1 => \q_reg[30]_0\(7),
      I2 => BranchTargetE(27),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(27)
    );
\q[27]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(24),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(25)
    );
\q[27]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(24),
      I1 => opb5E,
      I2 => BranchTargetE(24),
      O => \^d\(27)
    );
\q[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(21),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(28)
    );
\q[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(25),
      I1 => \q_reg[30]_0\(8),
      I2 => BranchTargetE(28),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(28)
    );
\q[28]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(25),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(26)
    );
\q[28]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(25),
      I1 => opb5E,
      I2 => BranchTargetE(25),
      O => \^d\(28)
    );
\q[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(22),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(29)
    );
\q[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(26),
      I1 => \q_reg[30]_0\(9),
      I2 => BranchTargetE(29),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(29)
    );
\q[29]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(26),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(27)
    );
\q[29]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(26),
      I1 => opb5E,
      I2 => BranchTargetE(26),
      O => \^d\(29)
    );
\q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(72),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(2)
    );
\q[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CC5555"
    )
        port map (
      I0 => \q_reg[63]_1\(2),
      I1 => \^d\(106),
      I2 => BranchTargetE(2),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(2)
    );
\q[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B7"
    )
        port map (
      I0 => \^d\(0),
      I1 => \q_reg[4]_1\(5),
      I2 => \c/PCSrcE2__5\,
      I3 => \q_reg[4]_1\(6),
      I4 => \q_reg[63]_1\(2),
      O => \q_reg[0]_1\(0)
    );
\q[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(23),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(30)
    );
\q[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(27),
      I1 => \q_reg[30]_0\(10),
      I2 => BranchTargetE(30),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(30)
    );
\q[30]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(27),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(28)
    );
\q[30]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(27),
      I1 => opb5E,
      I2 => BranchTargetE(27),
      O => \^d\(30)
    );
\q[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(24),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(31)
    );
\q[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CO(0),
      I1 => \^d\(1),
      O => \q[31]_i_10_n_0\
    );
\q[31]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^d\(2),
      I2 => \^d\(124),
      O => \q[31]_i_11_n_0\
    );
\q[31]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \q[31]_i_18_n_0\,
      I1 => \q[31]_i_19_n_0\,
      I2 => \q[31]_i_20_n_0\,
      I3 => \q[31]_i_21_n_0\,
      I4 => \^d\(104),
      O => \q[31]_i_13_n_0\
    );
\q[31]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(0),
      I1 => \q_reg[4]_1\(5),
      O => \q[31]_i_14_n_0\
    );
\q[31]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^d\(123),
      I1 => \^d\(122),
      I2 => \^d\(121),
      I3 => \^d\(120),
      O => \q_reg[6]\
    );
\q[31]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^d\(109),
      I1 => \^d\(108),
      I2 => \^d\(110),
      I3 => \^d\(111),
      I4 => \^d\(2),
      O => \q[31]_i_18_n_0\
    );
\q[31]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^d\(105),
      I1 => \^d\(107),
      I2 => \^d\(106),
      I3 => \^d\(119),
      O => \q[31]_i_19_n_0\
    );
\q[31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[12]_0\,
      I1 => PCReadyM,
      O => E(0)
    );
\q[31]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(28),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(29)
    );
\q[31]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(28),
      I1 => opb5E,
      I2 => BranchTargetE(28),
      O => \^d\(31)
    );
\q[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(28),
      I1 => \^d\(124),
      I2 => BranchTargetE(31),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(31)
    );
\q[31]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^d\(118),
      I1 => \^d\(117),
      I2 => \^d\(116),
      I3 => \^d\(113),
      O => \q[31]_i_20_n_0\
    );
\q[31]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^d\(112),
      I1 => \^d\(115),
      I2 => \^d\(114),
      O => \q[31]_i_21_n_0\
    );
\q[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"557F7F7F"
    )
        port map (
      I0 => \q_reg[4]_1\(7),
      I1 => \q[31]_i_6_n_0\,
      I2 => \q_reg[4]_2\,
      I3 => \q[31]_i_8_n_0\,
      I4 => \q_reg[4]_3\,
      O => \^q_reg[12]_0\
    );
\q[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044404440"
    )
        port map (
      I0 => \^d\(0),
      I1 => \q_reg[4]_1\(5),
      I2 => \q[31]_i_10_n_0\,
      I3 => \q[31]_i_11_n_0\,
      I4 => \q_reg[2]_0\,
      I5 => \q[31]_i_13_n_0\,
      O => \^q_reg[0]_0\
    );
\q[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00070000"
    )
        port map (
      I0 => \q[31]_i_13_n_0\,
      I1 => \q_reg[2]_0\,
      I2 => \q[31]_i_11_n_0\,
      I3 => \q[31]_i_10_n_0\,
      I4 => \q[31]_i_14_n_0\,
      I5 => \q_reg[4]_1\(6),
      O => \^q_reg[10]_0\
    );
\q[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^d\(71),
      I1 => \q_reg[68]_2\(77),
      I2 => \^d\(70),
      I3 => \q_reg[68]_2\(76),
      I4 => \q_reg[68]_2\(75),
      I5 => \^d\(69),
      O => \q[31]_i_6_n_0\
    );
\q[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^d\(71),
      I1 => \q_reg[68]_2\(82),
      I2 => \^d\(70),
      I3 => \q_reg[68]_2\(81),
      I4 => \^d\(69),
      I5 => \q_reg[68]_2\(80),
      O => \q[31]_i_8_n_0\
    );
\q[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(25),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(32)
    );
\q[32]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(0),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(30)
    );
\q[32]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(29),
      I1 => opb5E,
      I2 => BranchTargetE(29),
      O => \^d\(32)
    );
\q[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(26),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(33)
    );
\q[33]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(1),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(31)
    );
\q[33]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(30),
      I1 => opb5E,
      I2 => BranchTargetE(30),
      O => \^d\(33)
    );
\q[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(27),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(34)
    );
\q[34]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(2),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(32)
    );
\q[34]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ImmExtE(31),
      I1 => opb5E,
      I2 => BranchTargetE(31),
      O => \^d\(34)
    );
\q[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(28),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(35)
    );
\q[35]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(3),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(33)
    );
\q[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(29),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(36)
    );
\q[36]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(4),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(34)
    );
\q[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000002A0000"
    )
        port map (
      I0 => \q_reg[37]_7\,
      I1 => \q_reg[179]_3\,
      I2 => \c/PCSrcE2__5\,
      I3 => \^q_reg[10]_0\,
      I4 => \^q_reg[12]_0\,
      I5 => \q_reg[37]_6\(1),
      O => p_0_in(37)
    );
\q[37]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(5),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(35)
    );
\q[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \q_reg[37]_6\(1),
      I5 => \q_reg[38]_0\,
      O => p_0_in(38)
    );
\q[38]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(6),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(36)
    );
\q[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \q_reg[37]_6\(1),
      I5 => \q_reg[39]_0\,
      O => p_0_in(39)
    );
\q[39]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(7),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(37)
    );
\q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[37]_6\(0),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(3)
    );
\q[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(0),
      I1 => \^d\(107),
      I2 => BranchTargetE(3),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(3)
    );
\q[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(0),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(1)
    );
\q[3]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => opb5E,
      I2 => BranchTargetE(0),
      O => \^d\(3)
    );
\q[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \q_reg[37]_6\(1),
      I5 => \q_reg[40]_0\,
      O => p_0_in(40)
    );
\q[40]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(8),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(38)
    );
\q[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \q_reg[37]_6\(1),
      I5 => \q_reg[41]_0\,
      O => p_0_in(41)
    );
\q[41]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(9),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(39)
    );
\q[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \q_reg[37]_6\(1),
      I5 => \q_reg[68]_2\(83),
      O => p_0_in(42)
    );
\q[42]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(10),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(40)
    );
\q[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \q_reg[37]_6\(1),
      I5 => \q_reg[68]_2\(84),
      O => p_0_in(43)
    );
\q[43]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(11),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(41)
    );
\q[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \q_reg[37]_6\(1),
      I5 => \q_reg[68]_2\(85),
      O => p_0_in(44)
    );
\q[44]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(12),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(42)
    );
\q[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \q_reg[37]_6\(1),
      I5 => \q_reg[68]_2\(86),
      O => p_0_in(45)
    );
\q[45]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(13),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(43)
    );
\q[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \q_reg[37]_6\(1),
      I5 => \q_reg[68]_2\(87),
      O => p_0_in(46)
    );
\q[46]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(14),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(44)
    );
\q[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \q_reg[37]_6\(1),
      I5 => \q_reg[68]_2\(88),
      O => p_0_in(47)
    );
\q[47]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(15),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(45)
    );
\q[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => \q_reg[37]_6\(1),
      I5 => \q_reg[48]_1\,
      O => p_0_in(48)
    );
\q[48]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(16),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(46)
    );
\q[49]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(17),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(47)
    );
\q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[4]_0\,
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => \q_reg[65]_0\(1)
    );
\q[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(64),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(4)
    );
\q[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(1),
      I1 => \^d\(108),
      I2 => BranchTargetE(4),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(4)
    );
\q[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(1),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(2)
    );
\q[4]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(1),
      I1 => opb5E,
      I2 => BranchTargetE(1),
      O => \^d\(4)
    );
\q[50]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(18),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(48)
    );
\q[51]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(19),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(49)
    );
\q[52]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(20),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(50)
    );
\q[53]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(21),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(51)
    );
\q[54]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(22),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(52)
    );
\q[55]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(23),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(53)
    );
\q[56]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(24),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(54)
    );
\q[57]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(25),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(55)
    );
\q[58]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(26),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(56)
    );
\q[59]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(27),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(57)
    );
\q[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(2),
      I1 => \^d\(109),
      I2 => BranchTargetE(5),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(5)
    );
\q[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(2),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(3)
    );
\q[5]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(2),
      I1 => opb5E,
      I2 => BranchTargetE(2),
      O => \^d\(5)
    );
\q[60]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(28),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(58)
    );
\q[61]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(29),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(59)
    );
\q[62]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(30),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(60)
    );
\q[63]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => \q_reg[63]_1\(31),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(61)
    );
\q[65]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(0),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(62)
    );
\q[66]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(1),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(63)
    );
\q[67]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(2),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(64)
    );
\q[68]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(89),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(68)
    );
\q[68]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(3),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(65)
    );
\q[69]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(65),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(69)
    );
\q[69]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(4),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(66)
    );
\q[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(3),
      I1 => \^d\(110),
      I2 => BranchTargetE(6),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(6)
    );
\q[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(3),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(4)
    );
\q[6]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(3),
      I1 => opb5E,
      I2 => BranchTargetE(3),
      O => \^d\(6)
    );
\q[70]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(66),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(70)
    );
\q[70]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(5),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(67)
    );
\q[71]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(67),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(71)
    );
\q[71]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(6),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(68)
    );
\q[72]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(68),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(72)
    );
\q[72]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(7),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(69)
    );
\q[72]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(0),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(0),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(5),
      O => \^d\(72)
    );
\q[73]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(69),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(73)
    );
\q[73]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(8),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(70)
    );
\q[73]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCE4CC00CCE4CC"
    )
        port map (
      I0 => \q[76]_i_2_n_0\,
      I1 => RD2E(1),
      I2 => ResultW(1),
      I3 => \q[76]_i_3_n_0\,
      I4 => \hu/ForwardBE10_out\,
      I5 => \q_reg[103]_0\(6),
      O => \^d\(73)
    );
\q[74]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(78),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(74)
    );
\q[74]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(9),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(71)
    );
\q[74]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCE4CC00CCE4CC"
    )
        port map (
      I0 => \q[76]_i_2_n_0\,
      I1 => RD2E(2),
      I2 => ResultW(2),
      I3 => \q[76]_i_3_n_0\,
      I4 => \hu/ForwardBE10_out\,
      I5 => \q_reg[103]_0\(7),
      O => \^d\(74)
    );
\q[75]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(79),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(75)
    );
\q[75]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(10),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(72)
    );
\q[75]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCE4CC00CCE4CC"
    )
        port map (
      I0 => \q[76]_i_2_n_0\,
      I1 => RD2E(3),
      I2 => ResultW(3),
      I3 => \q[76]_i_3_n_0\,
      I4 => \hu/ForwardBE10_out\,
      I5 => \q_reg[103]_0\(8),
      O => \^d\(75)
    );
\q[76]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(80),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(76)
    );
\q[76]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(11),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(73)
    );
\q[76]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCE4CC00CCE4CC"
    )
        port map (
      I0 => \q[76]_i_2_n_0\,
      I1 => RD2E(4),
      I2 => ResultW(4),
      I3 => \q[76]_i_3_n_0\,
      I4 => \hu/ForwardBE10_out\,
      I5 => \q_reg[103]_0\(9),
      O => \^d\(76)
    );
\q[76]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => \q[76]_i_5_n_0\,
      I1 => \q[76]_i_6_n_0\,
      I2 => \q_reg[76]_0\(0),
      I3 => \sum__0_carry_i_11_0\(1),
      I4 => Rs2E(1),
      O => \q[76]_i_2_n_0\
    );
\q[76]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Rs2E(4),
      I1 => Rs2E(0),
      I2 => Rs2E(1),
      I3 => Rs2E(2),
      I4 => Rs2E(3),
      O => \q[76]_i_3_n_0\
    );
\q[76]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => \q[76]_i_7_n_0\,
      I1 => \q[76]_i_8_n_0\,
      I2 => \q_reg[76]_1\(0),
      I3 => \q_reg[103]_0\(1),
      I4 => Rs2E(1),
      O => \hu/ForwardBE10_out\
    );
\q[76]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Rs2E(4),
      I1 => \sum__0_carry_i_11_0\(4),
      I2 => Rs2E(0),
      I3 => \sum__0_carry_i_11_0\(0),
      O => \q[76]_i_5_n_0\
    );
\q[76]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Rs2E(2),
      I1 => \sum__0_carry_i_11_0\(2),
      I2 => Rs2E(3),
      I3 => \sum__0_carry_i_11_0\(3),
      O => \q[76]_i_6_n_0\
    );
\q[76]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Rs2E(4),
      I1 => \q_reg[103]_0\(4),
      I2 => Rs2E(0),
      I3 => \q_reg[103]_0\(0),
      O => \q[76]_i_7_n_0\
    );
\q[76]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Rs2E(2),
      I1 => \q_reg[103]_0\(2),
      I2 => Rs2E(3),
      I3 => \q_reg[103]_0\(3),
      O => \q[76]_i_8_n_0\
    );
\q[77]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(81),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(77)
    );
\q[77]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(12),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(74)
    );
\q[77]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(5),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(5),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(10),
      O => \^d\(77)
    );
\q[78]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(82),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(78)
    );
\q[78]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(13),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(75)
    );
\q[78]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(6),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(6),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(11),
      O => \^d\(78)
    );
\q[79]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(73),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(79)
    );
\q[79]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(14),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(76)
    );
\q[79]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(7),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(7),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(12),
      O => \^d\(79)
    );
\q[79]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14555555FFFFFFFF"
    )
        port map (
      I0 => \hu/ForwardBE10_out\,
      I1 => Rs2E(1),
      I2 => \sum__0_carry_i_11_0\(1),
      I3 => \q_reg[76]_0\(0),
      I4 => \q[79]_i_5_n_0\,
      I5 => \q[76]_i_3_n_0\,
      O => \q[79]_i_2_n_0\
    );
\q[79]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900000000000"
    )
        port map (
      I0 => Rs2E(1),
      I1 => \sum__0_carry_i_11_0\(1),
      I2 => \q_reg[76]_0\(0),
      I3 => \q[79]_i_5_n_0\,
      I4 => \hu/ForwardBE10_out\,
      I5 => \q[76]_i_3_n_0\,
      O => \q[79]_i_3_n_0\
    );
\q[79]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Rs2E(3),
      I1 => Rs2E(2),
      I2 => Rs2E(1),
      I3 => Rs2E(0),
      I4 => Rs2E(4),
      I5 => \hu/ForwardBE10_out\,
      O => ForwardBE(1)
    );
\q[79]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \sum__0_carry_i_11_0\(3),
      I1 => Rs2E(3),
      I2 => \sum__0_carry_i_11_0\(2),
      I3 => Rs2E(2),
      I4 => \q[76]_i_5_n_0\,
      O => \q[79]_i_5_n_0\
    );
\q[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \q_reg[179]_3\,
      I1 => \c/PCSrcE2__5\,
      I2 => \^q_reg[10]_0\,
      I3 => \^q_reg[12]_0\,
      I4 => ALUOpD(0),
      I5 => \q_reg[7]_0\,
      O => \q_reg[65]_0\(2)
    );
\q[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(0),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(7)
    );
\q[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(4),
      I1 => \^d\(111),
      I2 => BranchTargetE(7),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(7)
    );
\q[7]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(4),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(5)
    );
\q[7]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(4),
      I1 => opb5E,
      I2 => BranchTargetE(4),
      O => \^d\(7)
    );
\q[80]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(74),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(80)
    );
\q[80]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(15),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(77)
    );
\q[80]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(8),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(8),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(13),
      O => \^d\(80)
    );
\q[81]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(75),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(81)
    );
\q[81]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(16),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(78)
    );
\q[81]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(9),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(9),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(14),
      O => \^d\(81)
    );
\q[82]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(76),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(82)
    );
\q[82]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(17),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(79)
    );
\q[82]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(10),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(10),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(15),
      O => \^d\(82)
    );
\q[83]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(77),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(83)
    );
\q[83]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(18),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(80)
    );
\q[83]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(11),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(11),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(16),
      O => \^d\(83)
    );
\q[84]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(30),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(84)
    );
\q[84]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(19),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(81)
    );
\q[84]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(12),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(12),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(17),
      O => \^d\(84)
    );
\q[85]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(31),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(85)
    );
\q[85]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(20),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(82)
    );
\q[85]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(13),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(13),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(18),
      O => \^d\(85)
    );
\q[86]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(32),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(86)
    );
\q[86]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(21),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(83)
    );
\q[86]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(14),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(14),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(19),
      O => \^d\(86)
    );
\q[87]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(33),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(87)
    );
\q[87]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(22),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(84)
    );
\q[87]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(15),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(15),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(20),
      O => \^d\(87)
    );
\q[88]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(34),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(88)
    );
\q[88]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(23),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(85)
    );
\q[88]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(16),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(16),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(21),
      O => \^d\(88)
    );
\q[89]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(35),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(89)
    );
\q[89]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(24),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(86)
    );
\q[89]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(17),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(17),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(22),
      O => \^d\(89)
    );
\q[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A000000000000"
    )
        port map (
      I0 => \q_reg[8]_0\,
      I1 => \q_reg[179]_3\,
      I2 => \c/PCSrcE2__5\,
      I3 => \^q_reg[10]_0\,
      I4 => \^q_reg[12]_0\,
      I5 => ALUOpD(0),
      O => \q_reg[65]_0\(3)
    );
\q[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(1),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(8)
    );
\q[8]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(5),
      I1 => \^d\(112),
      I2 => BranchTargetE(8),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(8)
    );
\q[8]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(5),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(6)
    );
\q[8]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(5),
      I1 => opb5E,
      I2 => BranchTargetE(5),
      O => \^d\(8)
    );
\q[90]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(36),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(90)
    );
\q[90]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(25),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(87)
    );
\q[90]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(18),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(18),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(23),
      O => \^d\(90)
    );
\q[91]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(37),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(91)
    );
\q[91]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(26),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(88)
    );
\q[91]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(19),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(19),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(24),
      O => \^d\(91)
    );
\q[92]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(38),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(92)
    );
\q[92]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(27),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(89)
    );
\q[92]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(20),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(20),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(25),
      O => \^d\(92)
    );
\q[93]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(39),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(93)
    );
\q[93]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(28),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(90)
    );
\q[93]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(21),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(21),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(26),
      O => \^d\(93)
    );
\q[94]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(40),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(94)
    );
\q[94]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(29),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(91)
    );
\q[94]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(22),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(22),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(27),
      O => \^d\(94)
    );
\q[95]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(41),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(95)
    );
\q[95]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => InstrF(30),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(92)
    );
\q[95]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(23),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(23),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(28),
      O => \^d\(95)
    );
\q[95]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF080008"
    )
        port map (
      I0 => \q[31]_i_13_n_0\,
      I1 => \q_reg[95]_0\,
      I2 => \q_reg[30]_0\(10),
      I3 => \^d\(124),
      I4 => \q[95]_i_4_n_0\,
      I5 => \q[31]_i_10_n_0\,
      O => \c/PCSrcE2__5\
    );
\q[95]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^d\(1),
      O => \q[95]_i_4_n_0\
    );
\q[96]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(42),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(96)
    );
\q[96]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(24),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(24),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(29),
      O => \^d\(96)
    );
\q[97]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(43),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(97)
    );
\q[97]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(25),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(25),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(30),
      O => \^d\(97)
    );
\q[98]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(44),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(98)
    );
\q[98]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(26),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(26),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(31),
      O => \^d\(98)
    );
\q[99]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(45),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(99)
    );
\q[99]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[79]_i_2_n_0\,
      I1 => RD2E(27),
      I2 => \q[79]_i_3_n_0\,
      I3 => ResultW(27),
      I4 => ForwardBE(1),
      I5 => \q_reg[103]_0\(32),
      O => \^d\(99)
    );
\q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[9]_0\,
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => \q_reg[65]_0\(4)
    );
\q[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080800080808"
    )
        port map (
      I0 => \q_reg[68]_2\(2),
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[4]_1\(6),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(5),
      I5 => \^d\(0),
      O => p_0_in(9)
    );
\q[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF0CCF0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(6),
      I1 => \^d\(113),
      I2 => BranchTargetE(9),
      I3 => ImmSrcb1E,
      I4 => \^q_reg[0]_0\,
      I5 => \^q_reg[10]_0\,
      O => \q_reg[3]_0\(9)
    );
\q[9]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A2A"
    )
        port map (
      I0 => PCPlus4F(6),
      I1 => \^d\(0),
      I2 => \q_reg[4]_1\(5),
      I3 => \c/PCSrcE2__5\,
      I4 => \q_reg[4]_1\(6),
      O => \q_reg[0]_1\(7)
    );
\q[9]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(6),
      I1 => opb5E,
      I2 => BranchTargetE(6),
      O => \^d\(9)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(0),
      Q => \^d\(0)
    );
\q_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(100),
      Q => PCE(16)
    );
\q_reg[101]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(101),
      Q => PCE(17)
    );
\q_reg[102]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(102),
      Q => PCE(18)
    );
\q_reg[103]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(103),
      Q => PCE(19)
    );
\q_reg[104]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(104),
      Q => PCE(20)
    );
\q_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(105),
      Q => PCE(21)
    );
\q_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(106),
      Q => PCE(22)
    );
\q_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(107),
      Q => PCE(23)
    );
\q_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(108),
      Q => PCE(24)
    );
\q_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(109),
      Q => PCE(25)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(10),
      Q => \^d\(40)
    );
\q_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(110),
      Q => PCE(26)
    );
\q_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(111),
      Q => PCE(27)
    );
\q_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(112),
      Q => PCE(28)
    );
\q_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(113),
      Q => PCE(29)
    );
\q_reg[114]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(114),
      Q => PCE(30)
    );
\q_reg[115]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(115),
      Q => PCE(31)
    );
\q_reg[116]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(116),
      Q => RD2E(0)
    );
\q_reg[117]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(117),
      Q => RD2E(1)
    );
\q_reg[118]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(118),
      Q => RD2E(2)
    );
\q_reg[119]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(119),
      Q => RD2E(3)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(11),
      Q => \^d\(41)
    );
\q_reg[120]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(120),
      Q => RD2E(4)
    );
\q_reg[121]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(121),
      Q => RD2E(5)
    );
\q_reg[122]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(122),
      Q => RD2E(6)
    );
\q_reg[123]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(123),
      Q => RD2E(7)
    );
\q_reg[124]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(124),
      Q => RD2E(8)
    );
\q_reg[125]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(125),
      Q => RD2E(9)
    );
\q_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(126),
      Q => RD2E(10)
    );
\q_reg[127]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(127),
      Q => RD2E(11)
    );
\q_reg[128]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(128),
      Q => RD2E(12)
    );
\q_reg[129]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(129),
      Q => RD2E(13)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(12),
      Q => \^d\(42)
    );
\q_reg[130]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(130),
      Q => RD2E(14)
    );
\q_reg[131]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(131),
      Q => RD2E(15)
    );
\q_reg[132]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(132),
      Q => RD2E(16)
    );
\q_reg[133]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(133),
      Q => RD2E(17)
    );
\q_reg[134]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(134),
      Q => RD2E(18)
    );
\q_reg[135]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(135),
      Q => RD2E(19)
    );
\q_reg[136]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(136),
      Q => RD2E(20)
    );
\q_reg[137]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(137),
      Q => RD2E(21)
    );
\q_reg[138]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(138),
      Q => RD2E(22)
    );
\q_reg[139]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(139),
      Q => RD2E(23)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(13),
      Q => \^d\(43)
    );
\q_reg[140]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(140),
      Q => RD2E(24)
    );
\q_reg[141]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(141),
      Q => RD2E(25)
    );
\q_reg[142]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(142),
      Q => RD2E(26)
    );
\q_reg[143]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(143),
      Q => RD2E(27)
    );
\q_reg[144]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(144),
      Q => RD2E(28)
    );
\q_reg[145]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(145),
      Q => RD2E(29)
    );
\q_reg[146]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(146),
      Q => RD2E(30)
    );
\q_reg[147]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(147),
      Q => RD2E(31)
    );
\q_reg[148]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(148),
      Q => RD1E(0)
    );
\q_reg[149]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(149),
      Q => RD1E(1)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(14),
      Q => \^d\(44)
    );
\q_reg[150]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(150),
      Q => RD1E(2)
    );
\q_reg[151]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(151),
      Q => RD1E(3)
    );
\q_reg[152]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(152),
      Q => RD1E(4)
    );
\q_reg[153]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(153),
      Q => RD1E(5)
    );
\q_reg[154]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(154),
      Q => RD1E(6)
    );
\q_reg[155]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(155),
      Q => RD1E(7)
    );
\q_reg[156]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(156),
      Q => RD1E(8)
    );
\q_reg[157]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(157),
      Q => RD1E(9)
    );
\q_reg[158]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(158),
      Q => RD1E(10)
    );
\q_reg[159]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(159),
      Q => RD1E(11)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(15),
      Q => \^d\(45)
    );
\q_reg[160]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(160),
      Q => RD1E(12)
    );
\q_reg[161]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(161),
      Q => RD1E(13)
    );
\q_reg[162]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(162),
      Q => RD1E(14)
    );
\q_reg[163]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(163),
      Q => RD1E(15)
    );
\q_reg[164]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(164),
      Q => RD1E(16)
    );
\q_reg[165]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(165),
      Q => RD1E(17)
    );
\q_reg[166]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(166),
      Q => RD1E(18)
    );
\q_reg[167]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(167),
      Q => RD1E(19)
    );
\q_reg[168]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(168),
      Q => RD1E(20)
    );
\q_reg[169]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(169),
      Q => RD1E(21)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(16),
      Q => \^d\(46)
    );
\q_reg[170]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(170),
      Q => RD1E(22)
    );
\q_reg[171]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(171),
      Q => RD1E(23)
    );
\q_reg[172]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(172),
      Q => RD1E(24)
    );
\q_reg[173]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(173),
      Q => RD1E(25)
    );
\q_reg[174]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(174),
      Q => RD1E(26)
    );
\q_reg[175]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(175),
      Q => RD1E(27)
    );
\q_reg[176]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(176),
      Q => RD1E(28)
    );
\q_reg[177]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(177),
      Q => RD1E(29)
    );
\q_reg[178]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(178),
      Q => RD1E(30)
    );
\q_reg[179]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(179),
      Q => RD1E(31)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(17),
      Q => \^d\(47)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(18),
      Q => \^d\(48)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(19),
      Q => \^d\(49)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(1),
      Q => \^d\(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(20),
      Q => \^d\(50)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(21),
      Q => \^d\(51)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(22),
      Q => \^d\(52)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(23),
      Q => \^d\(53)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(24),
      Q => \^d\(54)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(25),
      Q => \^d\(55)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(26),
      Q => \^d\(56)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(27),
      Q => \^d\(57)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(28),
      Q => \^d\(58)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(29),
      Q => \^d\(59)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(2),
      Q => \^d\(2)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(30),
      Q => \^d\(60)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(31),
      Q => \^d\(61)
    );
\q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(32),
      Q => \^d\(62)
    );
\q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(33),
      Q => \^d\(63)
    );
\q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(34),
      Q => \^d\(64)
    );
\q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(35),
      Q => \^d\(65)
    );
\q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(36),
      Q => \^d\(66)
    );
\q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(37),
      Q => \^q\(0)
    );
\q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(38),
      Q => \^q\(1)
    );
\q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(39),
      Q => \^q\(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(3),
      Q => ImmSrcb1E
    );
\q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(40),
      Q => \^q\(3)
    );
\q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(41),
      Q => \^q\(4)
    );
\q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(42),
      Q => \^q\(5)
    );
\q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(43),
      Q => \^q\(6)
    );
\q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(44),
      Q => \^q\(7)
    );
\q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(45),
      Q => \^q\(8)
    );
\q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(46),
      Q => \^q\(9)
    );
\q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(47),
      Q => \^q\(10)
    );
\q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(48),
      Q => \^q\(11)
    );
\q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(0),
      Q => \^q\(12)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(4),
      Q => opb5E
    );
\q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(1),
      Q => \^q\(13)
    );
\q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(2),
      Q => \^q\(14)
    );
\q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(3),
      Q => \^q\(15)
    );
\q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(4),
      Q => \^q\(16)
    );
\q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(5),
      Q => \^q\(17)
    );
\q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(6),
      Q => \^q\(18)
    );
\q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(7),
      Q => \^q\(19)
    );
\q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(8),
      Q => \^q\(20)
    );
\q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(9),
      Q => \^q\(21)
    );
\q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(10),
      Q => \^q\(22)
    );
\q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(11),
      Q => \^q\(23)
    );
\q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(12),
      Q => \^q\(24)
    );
\q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(13),
      Q => \^q\(25)
    );
\q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(14),
      Q => \^q\(26)
    );
\q_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(15),
      Q => \^q\(27)
    );
\q_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(16),
      Q => \^q\(28)
    );
\q_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(17),
      Q => \^q\(29)
    );
\q_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => \q_reg[67]_2\(18),
      Q => \^q\(30)
    );
\q_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(68),
      Q => ImmExtE(31)
    );
\q_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(69),
      Q => \^d\(67)
    );
\q_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(70),
      Q => \^d\(68)
    );
\q_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(71),
      Q => \^d\(69)
    );
\q_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(72),
      Q => \^d\(70)
    );
\q_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(73),
      Q => \^d\(71)
    );
\q_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(74),
      Q => Rs2E(0)
    );
\q_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(75),
      Q => Rs2E(1)
    );
\q_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(76),
      Q => Rs2E(2)
    );
\q_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(77),
      Q => Rs2E(3)
    );
\q_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(78),
      Q => Rs2E(4)
    );
\q_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(79),
      Q => Rs1E(0)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(7),
      Q => \^d\(37)
    );
\q_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(80),
      Q => Rs1E(1)
    );
\q_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(81),
      Q => \^q\(31)
    );
\q_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(82),
      Q => \^q\(32)
    );
\q_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(83),
      Q => Rs1E(4)
    );
\q_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(84),
      Q => \^d\(35)
    );
\q_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(85),
      Q => \^d\(36)
    );
\q_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(86),
      Q => PCE(2)
    );
\q_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(87),
      Q => PCE(3)
    );
\q_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(88),
      Q => PCE(4)
    );
\q_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(89),
      Q => PCE(5)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(8),
      Q => \^d\(38)
    );
\q_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(90),
      Q => PCE(6)
    );
\q_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(91),
      Q => PCE(7)
    );
\q_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(92),
      Q => PCE(8)
    );
\q_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(93),
      Q => PCE(9)
    );
\q_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(94),
      Q => PCE(10)
    );
\q_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(95),
      Q => PCE(11)
    );
\q_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(96),
      Q => PCE(12)
    );
\q_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(97),
      Q => PCE(13)
    );
\q_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(98),
      Q => PCE(14)
    );
\q_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(99),
      Q => PCE(15)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReadyM,
      CLR => reset,
      D => p_0_in(9),
      Q => \^d\(39)
    );
\sum__0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCE4E4CCCC"
    )
        port map (
      I0 => \sum__0_carry_i_11_n_0\,
      I1 => RD1E(7),
      I2 => ResultW(7),
      I3 => \q_reg[103]_0\(12),
      I4 => \sum__0_carry_i_12_n_0\,
      I5 => \hu/ForwardAE11_out\,
      O => \^srcae\(7)
    );
\sum__0_carry__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(6),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(78),
      O => SrcBE(6)
    );
\sum__0_carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(5),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(77),
      O => SrcBE(5)
    );
\sum__0_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(76),
      O => SrcBE(4)
    );
\sum__0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(6),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(6),
      I4 => \q_reg[103]_0\(11),
      I5 => ForwardAE(1),
      O => \^srcae\(6)
    );
\sum__0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCE4E4CCCC"
    )
        port map (
      I0 => \sum__0_carry_i_11_n_0\,
      I1 => RD1E(5),
      I2 => ResultW(5),
      I3 => \q_reg[103]_0\(10),
      I4 => \sum__0_carry_i_12_n_0\,
      I5 => \hu/ForwardAE11_out\,
      O => \^srcae\(5)
    );
\sum__0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(4),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(4),
      I4 => \q_reg[103]_0\(9),
      I5 => ForwardAE(1),
      O => \^srcae\(4)
    );
\sum__0_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(7),
      I1 => SrcBE(7),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_12\(3)
    );
\sum__0_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(6),
      I1 => SrcBE(6),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_12\(2)
    );
\sum__0_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(5),
      I1 => SrcBE(5),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_12\(1)
    );
\sum__0_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(4),
      I1 => SrcBE(4),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_12\(0)
    );
\sum__0_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(7),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(79),
      O => SrcBE(7)
    );
\sum__0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(11),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(11),
      I4 => \q_reg[103]_0\(16),
      I5 => ForwardAE(1),
      O => \^srcae\(11)
    );
\sum__0_carry__1_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(10),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(82),
      O => SrcBE(10)
    );
\sum__0_carry__1_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(9),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(81),
      O => SrcBE(9)
    );
\sum__0_carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(8),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(80),
      O => SrcBE(8)
    );
\sum__0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(10),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(10),
      I4 => \q_reg[103]_0\(15),
      I5 => ForwardAE(1),
      O => \^srcae\(10)
    );
\sum__0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(9),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(9),
      I4 => \q_reg[103]_0\(14),
      I5 => ForwardAE(1),
      O => \^srcae\(9)
    );
\sum__0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(8),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(8),
      I4 => \q_reg[103]_0\(13),
      I5 => ForwardAE(1),
      O => \^srcae\(8)
    );
\sum__0_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(11),
      I1 => SrcBE(11),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_13\(3)
    );
\sum__0_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(10),
      I1 => SrcBE(10),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_13\(2)
    );
\sum__0_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(9),
      I1 => SrcBE(9),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_13\(1)
    );
\sum__0_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(8),
      I1 => SrcBE(8),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_13\(0)
    );
\sum__0_carry__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(11),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(83),
      O => SrcBE(11)
    );
\sum__0_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(15),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(15),
      I4 => \q_reg[103]_0\(20),
      I5 => ForwardAE(1),
      O => \^srcae\(15)
    );
\sum__0_carry__2_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(14),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(86),
      O => SrcBE(14)
    );
\sum__0_carry__2_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(13),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(85),
      O => SrcBE(13)
    );
\sum__0_carry__2_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(12),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(84),
      O => SrcBE(12)
    );
\sum__0_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(14),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(14),
      I4 => \q_reg[103]_0\(19),
      I5 => ForwardAE(1),
      O => \^srcae\(14)
    );
\sum__0_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(13),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(13),
      I4 => \q_reg[103]_0\(18),
      I5 => ForwardAE(1),
      O => \^srcae\(13)
    );
\sum__0_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(12),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(12),
      I4 => \q_reg[103]_0\(17),
      I5 => ForwardAE(1),
      O => \^srcae\(12)
    );
\sum__0_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(15),
      I1 => SrcBE(15),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_14\(3)
    );
\sum__0_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(14),
      I1 => SrcBE(14),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_14\(2)
    );
\sum__0_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(13),
      I1 => SrcBE(13),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_14\(1)
    );
\sum__0_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(12),
      I1 => SrcBE(12),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_14\(0)
    );
\sum__0_carry__2_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(15),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(87),
      O => SrcBE(15)
    );
\sum__0_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCE4E4CCCC"
    )
        port map (
      I0 => \sum__0_carry_i_11_n_0\,
      I1 => RD1E(19),
      I2 => ResultW(19),
      I3 => \q_reg[103]_0\(24),
      I4 => \sum__0_carry_i_12_n_0\,
      I5 => \hu/ForwardAE11_out\,
      O => \^srcae\(19)
    );
\sum__0_carry__3_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(18),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(90),
      O => SrcBE(18)
    );
\sum__0_carry__3_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(17),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(89),
      O => SrcBE(17)
    );
\sum__0_carry__3_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(16),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(88),
      O => SrcBE(16)
    );
\sum__0_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCE4E4CCCC"
    )
        port map (
      I0 => \sum__0_carry_i_11_n_0\,
      I1 => RD1E(18),
      I2 => ResultW(18),
      I3 => \q_reg[103]_0\(23),
      I4 => \sum__0_carry_i_12_n_0\,
      I5 => \hu/ForwardAE11_out\,
      O => \^srcae\(18)
    );
\sum__0_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(17),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(17),
      I4 => \q_reg[103]_0\(22),
      I5 => ForwardAE(1),
      O => \^srcae\(17)
    );
\sum__0_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(16),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(16),
      I4 => \q_reg[103]_0\(21),
      I5 => ForwardAE(1),
      O => \^srcae\(16)
    );
\sum__0_carry__3_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(19),
      I1 => SrcBE(19),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_15\(3)
    );
\sum__0_carry__3_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(18),
      I1 => SrcBE(18),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_15\(2)
    );
\sum__0_carry__3_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(17),
      I1 => SrcBE(17),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_15\(1)
    );
\sum__0_carry__3_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(16),
      I1 => SrcBE(16),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_15\(0)
    );
\sum__0_carry__3_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(19),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(91),
      O => SrcBE(19)
    );
\sum__0_carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCE4E4CCCC"
    )
        port map (
      I0 => \sum__0_carry_i_11_n_0\,
      I1 => RD1E(23),
      I2 => ResultW(23),
      I3 => \q_reg[103]_0\(28),
      I4 => \sum__0_carry_i_12_n_0\,
      I5 => \hu/ForwardAE11_out\,
      O => \^di\(3)
    );
\sum__0_carry__4_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(22),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(94),
      O => \^q_reg[59]_1\
    );
\sum__0_carry__4_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(21),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(93),
      O => \^q_reg[58]_0\
    );
\sum__0_carry__4_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(20),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(92),
      O => \^q_reg[57]_0\
    );
\sum__0_carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCE4E4CCCC"
    )
        port map (
      I0 => \sum__0_carry_i_11_n_0\,
      I1 => RD1E(22),
      I2 => ResultW(22),
      I3 => \q_reg[103]_0\(27),
      I4 => \sum__0_carry_i_12_n_0\,
      I5 => \hu/ForwardAE11_out\,
      O => \^di\(2)
    );
\sum__0_carry__4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(21),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(21),
      I4 => \q_reg[103]_0\(26),
      I5 => ForwardAE(1),
      O => \^di\(1)
    );
\sum__0_carry__4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(20),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(20),
      I4 => \q_reg[103]_0\(25),
      I5 => ForwardAE(1),
      O => \^di\(0)
    );
\sum__0_carry__4_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^di\(3),
      I1 => \^q_reg[60]_0\,
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_16\(3)
    );
\sum__0_carry__4_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^q_reg[59]_1\,
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_16\(2)
    );
\sum__0_carry__4_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^q_reg[58]_0\,
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_16\(1)
    );
\sum__0_carry__4_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^q_reg[57]_0\,
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_16\(0)
    );
\sum__0_carry__4_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(23),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(95),
      O => \^q_reg[60]_0\
    );
\sum__0_carry__5_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(27),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(27),
      I4 => \q_reg[103]_0\(32),
      I5 => ForwardAE(1),
      O => \^q_reg[175]_0\(3)
    );
\sum__0_carry__5_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(26),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(98),
      O => \^q_reg[63]_0\
    );
\sum__0_carry__5_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(25),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(97),
      O => \^q_reg[62]_0\
    );
\sum__0_carry__5_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(24),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(96),
      O => \^q_reg[61]_0\
    );
\sum__0_carry__5_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(26),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(26),
      I4 => \q_reg[103]_0\(31),
      I5 => ForwardAE(1),
      O => \^q_reg[175]_0\(2)
    );
\sum__0_carry__5_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(25),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(25),
      I4 => \q_reg[103]_0\(30),
      I5 => ForwardAE(1),
      O => \^q_reg[175]_0\(1)
    );
\sum__0_carry__5_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(24),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(24),
      I4 => \q_reg[103]_0\(29),
      I5 => ForwardAE(1),
      O => \^q_reg[175]_0\(0)
    );
\sum__0_carry__5_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg[175]_0\(3),
      I1 => \^q_reg[64]_0\,
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_17\(3)
    );
\sum__0_carry__5_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg[175]_0\(2),
      I1 => \^q_reg[63]_0\,
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_17\(2)
    );
\sum__0_carry__5_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg[175]_0\(1),
      I1 => \^q_reg[62]_0\,
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_17\(1)
    );
\sum__0_carry__5_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg[175]_0\(0),
      I1 => \^q_reg[61]_0\,
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_17\(0)
    );
\sum__0_carry__5_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(27),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(99),
      O => \^q_reg[64]_0\
    );
\sum__0_carry__6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(30),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(30),
      I4 => \q_reg[103]_0\(35),
      I5 => ForwardAE(1),
      O => \^q_reg[178]_0\(2)
    );
\sum__0_carry__6_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(30),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(102),
      O => \^q_reg[67]_0\
    );
\sum__0_carry__6_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(29),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(101),
      O => \^q_reg[66]_0\
    );
\sum__0_carry__6_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(28),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(100),
      O => \^q_reg[65]_1\
    );
\sum__0_carry__6_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(29),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(29),
      I4 => \q_reg[103]_0\(34),
      I5 => ForwardAE(1),
      O => \^q_reg[178]_0\(1)
    );
\sum__0_carry__6_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(28),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(28),
      I4 => \q_reg[103]_0\(33),
      I5 => ForwardAE(1),
      O => \^q_reg[178]_0\(0)
    );
\sum__0_carry__6_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg[179]_0\,
      I1 => \q_reg[4]_1\(1),
      I2 => \^q_reg[68]_1\,
      O => \q_reg[5]_10\(3)
    );
\sum__0_carry__6_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg[178]_0\(2),
      I1 => \^q_reg[67]_0\,
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_10\(2)
    );
\sum__0_carry__6_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg[178]_0\(1),
      I1 => \^q_reg[66]_0\,
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_10\(1)
    );
\sum__0_carry__6_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg[178]_0\(0),
      I1 => \^q_reg[65]_1\,
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_10\(0)
    );
\sum__0_carry__6_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(31),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(31),
      I4 => \q_reg[103]_0\(36),
      I5 => ForwardAE(1),
      O => \^q_reg[179]_0\
    );
\sum__0_carry__6_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ImmExtE(31),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(103),
      O => \^q_reg[68]_1\
    );
\sum__0_carry_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(72),
      O => \^q_reg[37]_0\
    );
\sum__0_carry_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => \sum__0_carry_i_20_n_0\,
      I1 => \sum__0_carry_i_4_1\,
      I2 => \q_reg[76]_0\(0),
      I3 => \sum__0_carry_i_11_0\(1),
      I4 => Rs1E(1),
      O => \sum__0_carry_i_11_n_0\
    );
\sum__0_carry_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Rs1E(4),
      I1 => Rs1E(0),
      I2 => Rs1E(1),
      I3 => \^q\(31),
      I4 => \^q\(32),
      O => \sum__0_carry_i_12_n_0\
    );
\sum__0_carry_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => \sum__0_carry_i_22_n_0\,
      I1 => \sum__0_carry_i_4_0\,
      I2 => \q_reg[76]_1\(0),
      I3 => \q_reg[103]_0\(1),
      I4 => Rs1E(1),
      O => \hu/ForwardAE11_out\
    );
\sum__0_carry_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14555555FFFFFFFF"
    )
        port map (
      I0 => \hu/ForwardAE11_out\,
      I1 => Rs1E(1),
      I2 => \sum__0_carry_i_11_0\(1),
      I3 => \q_reg[76]_0\(0),
      I4 => \sum__0_carry_i_24_n_0\,
      I5 => \sum__0_carry_i_12_n_0\,
      O => \sum__0_carry_i_14_n_0\
    );
\sum__0_carry_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900000000000"
    )
        port map (
      I0 => Rs1E(1),
      I1 => \sum__0_carry_i_11_0\(1),
      I2 => \q_reg[76]_0\(0),
      I3 => \sum__0_carry_i_24_n_0\,
      I4 => \hu/ForwardAE11_out\,
      I5 => \sum__0_carry_i_12_n_0\,
      O => \sum__0_carry_i_15_n_0\
    );
\sum__0_carry_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(31),
      I2 => Rs1E(1),
      I3 => Rs1E(0),
      I4 => Rs1E(4),
      I5 => \hu/ForwardAE11_out\,
      O => ForwardAE(1)
    );
\sum__0_carry_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(75),
      O => SrcBE(3)
    );
\sum__0_carry_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(74),
      O => SrcBE(2)
    );
\sum__0_carry_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \q_reg[4]_1\(0),
      I2 => \^d\(73),
      O => SrcBE(1)
    );
\sum__0_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCE4E4CCCC"
    )
        port map (
      I0 => \sum__0_carry_i_11_n_0\,
      I1 => RD1E(3),
      I2 => ResultW(3),
      I3 => \q_reg[103]_0\(8),
      I4 => \sum__0_carry_i_12_n_0\,
      I5 => \hu/ForwardAE11_out\,
      O => \^srcae\(3)
    );
\sum__0_carry_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Rs1E(4),
      I1 => \sum__0_carry_i_11_0\(4),
      I2 => Rs1E(0),
      I3 => \sum__0_carry_i_11_0\(0),
      O => \sum__0_carry_i_20_n_0\
    );
\sum__0_carry_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Rs1E(4),
      I1 => \q_reg[103]_0\(4),
      I2 => Rs1E(0),
      I3 => \q_reg[103]_0\(0),
      O => \sum__0_carry_i_22_n_0\
    );
\sum__0_carry_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \sum__0_carry_i_11_0\(3),
      I1 => \^q\(32),
      I2 => \^q\(31),
      I3 => \sum__0_carry_i_11_0\(2),
      I4 => \sum__0_carry_i_20_n_0\,
      O => \sum__0_carry_i_24_n_0\
    );
\sum__0_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(2),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(2),
      I4 => \q_reg[103]_0\(7),
      I5 => ForwardAE(1),
      O => \^srcae\(2)
    );
\sum__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCE4E4CCCC"
    )
        port map (
      I0 => \sum__0_carry_i_11_n_0\,
      I1 => RD1E(1),
      I2 => ResultW(1),
      I3 => \q_reg[103]_0\(6),
      I4 => \sum__0_carry_i_12_n_0\,
      I5 => \hu/ForwardAE11_out\,
      O => \^srcae\(1)
    );
\sum__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sum__0_carry_i_14_n_0\,
      I1 => RD1E(0),
      I2 => \sum__0_carry_i_15_n_0\,
      I3 => ResultW(0),
      I4 => ForwardAE(1),
      I5 => \q_reg[103]_0\(5),
      O => \^srcae\(0)
    );
\sum__0_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(3),
      I1 => SrcBE(3),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_11\(3)
    );
\sum__0_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(2),
      I1 => SrcBE(2),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_11\(2)
    );
\sum__0_carry_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^srcae\(1),
      I1 => SrcBE(1),
      I2 => \q_reg[4]_1\(1),
      O => \q_reg[5]_11\(1)
    );
\sum__0_carry_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^srcae\(0),
      I1 => \q_reg[4]_1\(1),
      O => \q_reg[5]_11\(0)
    );
\y_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(7),
      I1 => PCE(7),
      O => \q_reg[44]_0\(3)
    );
\y_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(6),
      I1 => PCE(6),
      O => \q_reg[44]_0\(2)
    );
\y_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(5),
      I1 => PCE(5),
      O => \q_reg[44]_0\(1)
    );
\y_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(4),
      I1 => PCE(4),
      O => \q_reg[44]_0\(0)
    );
\y_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(11),
      I1 => PCE(11),
      O => \q_reg[48]_0\(3)
    );
\y_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(10),
      I1 => PCE(10),
      O => \q_reg[48]_0\(2)
    );
\y_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(9),
      I1 => PCE(9),
      O => \q_reg[48]_0\(1)
    );
\y_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(8),
      I1 => PCE(8),
      O => \q_reg[48]_0\(0)
    );
\y_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(15),
      I1 => PCE(15),
      O => \q_reg[52]_0\(3)
    );
\y_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(14),
      I1 => PCE(14),
      O => \q_reg[52]_0\(2)
    );
\y_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(13),
      I1 => PCE(13),
      O => \q_reg[52]_0\(1)
    );
\y_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(12),
      I1 => PCE(12),
      O => \q_reg[52]_0\(0)
    );
\y_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(19),
      I1 => PCE(19),
      O => \q_reg[56]_0\(3)
    );
\y_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(18),
      I1 => PCE(18),
      O => \q_reg[56]_0\(2)
    );
\y_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(17),
      I1 => PCE(17),
      O => \q_reg[56]_0\(1)
    );
\y_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(16),
      I1 => PCE(16),
      O => \q_reg[56]_0\(0)
    );
\y_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(23),
      I1 => PCE(23),
      O => \q_reg[60]_1\(3)
    );
\y_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(22),
      I1 => PCE(22),
      O => \q_reg[60]_1\(2)
    );
\y_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(21),
      I1 => PCE(21),
      O => \q_reg[60]_1\(1)
    );
\y_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(20),
      I1 => PCE(20),
      O => \q_reg[60]_1\(0)
    );
\y_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(27),
      I1 => PCE(27),
      O => \q_reg[64]_1\(3)
    );
\y_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(26),
      I1 => PCE(26),
      O => \q_reg[64]_1\(2)
    );
\y_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(25),
      I1 => PCE(25),
      O => \q_reg[64]_1\(1)
    );
\y_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(24),
      I1 => PCE(24),
      O => \q_reg[64]_1\(0)
    );
\y_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ImmExtE(31),
      I1 => PCE(31),
      O => \q_reg[68]_0\(3)
    );
\y_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(30),
      I1 => PCE(30),
      O => \q_reg[68]_0\(2)
    );
\y_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(29),
      I1 => PCE(29),
      O => \q_reg[68]_0\(1)
    );
\y_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(28),
      I1 => PCE(28),
      O => \q_reg[68]_0\(0)
    );
y_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => PCE(3),
      O => S(3)
    );
y_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => PCE(2),
      O => S(2)
    );
y_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^d\(36),
      O => S(1)
    );
y_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^d\(35),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr is
  port (
    \q_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr is
begin
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(0),
      Q => \q_reg[2]_0\(0)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(1),
      Q => \q_reg[2]_0\(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(2),
      Q => \q_reg[2]_0\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized0\ is
  port (
    ResultW : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[69]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \q_reg[102]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sum__0_carry_i_11\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 132 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized0\ : entity is "flopr";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized0\ is
  signal ALUResultW : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PCPlus4W : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ReadDataW1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal UTypeW : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\q_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(97),
      Q => ReadDataW1(28)
    );
\q_reg[101]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(98),
      Q => ReadDataW1(29)
    );
\q_reg[102]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(99),
      Q => ReadDataW1(30)
    );
\q_reg[103]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(100),
      Q => ReadDataW1(31)
    );
\q_reg[104]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(101),
      Q => ALUResultW(0)
    );
\q_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(102),
      Q => ALUResultW(1)
    );
\q_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(103),
      Q => ALUResultW(2)
    );
\q_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(104),
      Q => ALUResultW(3)
    );
\q_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(105),
      Q => ALUResultW(4)
    );
\q_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(106),
      Q => ALUResultW(5)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(7),
      Q => UTypeW(7)
    );
\q_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(107),
      Q => ALUResultW(6)
    );
\q_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(108),
      Q => ALUResultW(7)
    );
\q_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(109),
      Q => ALUResultW(8)
    );
\q_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(110),
      Q => ALUResultW(9)
    );
\q_reg[114]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(111),
      Q => ALUResultW(10)
    );
\q_reg[115]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(112),
      Q => ALUResultW(11)
    );
\q_reg[116]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(113),
      Q => ALUResultW(12)
    );
\q_reg[117]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(114),
      Q => ALUResultW(13)
    );
\q_reg[118]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(115),
      Q => ALUResultW(14)
    );
\q_reg[119]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(116),
      Q => ALUResultW(15)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(8),
      Q => UTypeW(8)
    );
\q_reg[120]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(117),
      Q => ALUResultW(16)
    );
\q_reg[121]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(118),
      Q => ALUResultW(17)
    );
\q_reg[122]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(119),
      Q => ALUResultW(18)
    );
\q_reg[123]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(120),
      Q => ALUResultW(19)
    );
\q_reg[124]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(121),
      Q => ALUResultW(20)
    );
\q_reg[125]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(122),
      Q => ALUResultW(21)
    );
\q_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(123),
      Q => ALUResultW(22)
    );
\q_reg[127]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(124),
      Q => ALUResultW(23)
    );
\q_reg[128]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(125),
      Q => ALUResultW(24)
    );
\q_reg[129]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(126),
      Q => ALUResultW(25)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(9),
      Q => UTypeW(9)
    );
\q_reg[130]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(127),
      Q => ALUResultW(26)
    );
\q_reg[131]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(128),
      Q => ALUResultW(27)
    );
\q_reg[132]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(129),
      Q => ALUResultW(28)
    );
\q_reg[133]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(130),
      Q => ALUResultW(29)
    );
\q_reg[134]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(131),
      Q => ALUResultW(30)
    );
\q_reg[135]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(132),
      Q => ALUResultW(31)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(10),
      Q => UTypeW(10)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(11),
      Q => UTypeW(11)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(12),
      Q => UTypeW(12)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(13),
      Q => UTypeW(13)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(14),
      Q => UTypeW(14)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(15),
      Q => UTypeW(15)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(16),
      Q => UTypeW(16)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(17),
      Q => UTypeW(17)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(18),
      Q => UTypeW(18)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(19),
      Q => UTypeW(19)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(20),
      Q => UTypeW(20)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(21),
      Q => UTypeW(21)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(22),
      Q => UTypeW(22)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(23),
      Q => UTypeW(23)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(24),
      Q => UTypeW(24)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(25),
      Q => UTypeW(25)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(26),
      Q => UTypeW(26)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(27),
      Q => UTypeW(27)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(28),
      Q => UTypeW(28)
    );
\q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(29),
      Q => UTypeW(29)
    );
\q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(30),
      Q => UTypeW(30)
    );
\q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(31),
      Q => UTypeW(31)
    );
\q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(32),
      Q => PCPlus4W(0)
    );
\q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(33),
      Q => PCPlus4W(1)
    );
\q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(34),
      Q => PCPlus4W(2)
    );
\q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(35),
      Q => PCPlus4W(3)
    );
\q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(36),
      Q => PCPlus4W(4)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(0),
      Q => UTypeW(0)
    );
\q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(37),
      Q => PCPlus4W(5)
    );
\q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(38),
      Q => PCPlus4W(6)
    );
\q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(39),
      Q => PCPlus4W(7)
    );
\q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(40),
      Q => PCPlus4W(8)
    );
\q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(41),
      Q => PCPlus4W(9)
    );
\q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(42),
      Q => PCPlus4W(10)
    );
\q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(43),
      Q => PCPlus4W(11)
    );
\q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(44),
      Q => PCPlus4W(12)
    );
\q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(45),
      Q => PCPlus4W(13)
    );
\q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(46),
      Q => PCPlus4W(14)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(1),
      Q => UTypeW(1)
    );
\q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(47),
      Q => PCPlus4W(15)
    );
\q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(48),
      Q => PCPlus4W(16)
    );
\q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(49),
      Q => PCPlus4W(17)
    );
\q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(50),
      Q => PCPlus4W(18)
    );
\q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(51),
      Q => PCPlus4W(19)
    );
\q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(52),
      Q => PCPlus4W(20)
    );
\q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(53),
      Q => PCPlus4W(21)
    );
\q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(54),
      Q => PCPlus4W(22)
    );
\q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(55),
      Q => PCPlus4W(23)
    );
\q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(56),
      Q => PCPlus4W(24)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(2),
      Q => UTypeW(2)
    );
\q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(57),
      Q => PCPlus4W(25)
    );
\q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(58),
      Q => PCPlus4W(26)
    );
\q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(59),
      Q => PCPlus4W(27)
    );
\q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(60),
      Q => PCPlus4W(28)
    );
\q_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(61),
      Q => PCPlus4W(29)
    );
\q_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(62),
      Q => PCPlus4W(30)
    );
\q_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(63),
      Q => PCPlus4W(31)
    );
\q_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(64),
      Q => \^q\(0)
    );
\q_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(65),
      Q => \^q\(1)
    );
\q_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(66),
      Q => \^q\(2)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(3),
      Q => UTypeW(3)
    );
\q_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(67),
      Q => \^q\(3)
    );
\q_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(68),
      Q => \^q\(4)
    );
\q_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(69),
      Q => ReadDataW1(0)
    );
\q_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(70),
      Q => ReadDataW1(1)
    );
\q_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(71),
      Q => ReadDataW1(2)
    );
\q_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(72),
      Q => ReadDataW1(3)
    );
\q_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(73),
      Q => ReadDataW1(4)
    );
\q_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(74),
      Q => ReadDataW1(5)
    );
\q_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(75),
      Q => ReadDataW1(6)
    );
\q_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(76),
      Q => ReadDataW1(7)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(4),
      Q => UTypeW(4)
    );
\q_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(77),
      Q => ReadDataW1(8)
    );
\q_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(78),
      Q => ReadDataW1(9)
    );
\q_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(79),
      Q => ReadDataW1(10)
    );
\q_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(80),
      Q => ReadDataW1(11)
    );
\q_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(81),
      Q => ReadDataW1(12)
    );
\q_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(82),
      Q => ReadDataW1(13)
    );
\q_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(83),
      Q => ReadDataW1(14)
    );
\q_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(84),
      Q => ReadDataW1(15)
    );
\q_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(85),
      Q => ReadDataW1(16)
    );
\q_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(86),
      Q => ReadDataW1(17)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(5),
      Q => UTypeW(5)
    );
\q_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(87),
      Q => ReadDataW1(18)
    );
\q_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(88),
      Q => ReadDataW1(19)
    );
\q_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(89),
      Q => ReadDataW1(20)
    );
\q_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(90),
      Q => ReadDataW1(21)
    );
\q_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(91),
      Q => ReadDataW1(22)
    );
\q_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(92),
      Q => ReadDataW1(23)
    );
\q_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(93),
      Q => ReadDataW1(24)
    );
\q_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(94),
      Q => ReadDataW1(25)
    );
\q_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(95),
      Q => ReadDataW1(26)
    );
\q_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(96),
      Q => ReadDataW1(27)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(6),
      Q => UTypeW(6)
    );
rf_reg_r1_0_31_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(1),
      I1 => UTypeW(1),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(1),
      I5 => PCPlus4W(1),
      O => ResultW(1)
    );
rf_reg_r1_0_31_0_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(0),
      I1 => UTypeW(0),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(0),
      I5 => PCPlus4W(0),
      O => ResultW(0)
    );
rf_reg_r1_0_31_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(3),
      I1 => UTypeW(3),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(3),
      I5 => PCPlus4W(3),
      O => ResultW(3)
    );
rf_reg_r1_0_31_0_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(2),
      I1 => UTypeW(2),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(2),
      I5 => PCPlus4W(2),
      O => ResultW(2)
    );
rf_reg_r1_0_31_0_5_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(5),
      I1 => UTypeW(5),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(5),
      I5 => PCPlus4W(5),
      O => ResultW(5)
    );
rf_reg_r1_0_31_0_5_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(4),
      I1 => UTypeW(4),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(4),
      I5 => PCPlus4W(4),
      O => ResultW(4)
    );
rf_reg_r1_0_31_12_17_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(13),
      I1 => UTypeW(13),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(13),
      I5 => PCPlus4W(13),
      O => ResultW(13)
    );
rf_reg_r1_0_31_12_17_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(12),
      I1 => UTypeW(12),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(12),
      I5 => PCPlus4W(12),
      O => ResultW(12)
    );
rf_reg_r1_0_31_12_17_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(15),
      I1 => UTypeW(15),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(15),
      I5 => PCPlus4W(15),
      O => ResultW(15)
    );
rf_reg_r1_0_31_12_17_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(14),
      I1 => UTypeW(14),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(14),
      I5 => PCPlus4W(14),
      O => ResultW(14)
    );
rf_reg_r1_0_31_12_17_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(17),
      I1 => UTypeW(17),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(17),
      I5 => PCPlus4W(17),
      O => ResultW(17)
    );
rf_reg_r1_0_31_12_17_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(16),
      I1 => UTypeW(16),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(16),
      I5 => PCPlus4W(16),
      O => ResultW(16)
    );
rf_reg_r1_0_31_18_23_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(19),
      I1 => UTypeW(19),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(19),
      I5 => PCPlus4W(19),
      O => ResultW(19)
    );
rf_reg_r1_0_31_18_23_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(18),
      I1 => UTypeW(18),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(18),
      I5 => PCPlus4W(18),
      O => ResultW(18)
    );
rf_reg_r1_0_31_18_23_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(21),
      I1 => UTypeW(21),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(21),
      I5 => PCPlus4W(21),
      O => ResultW(21)
    );
rf_reg_r1_0_31_18_23_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(20),
      I1 => UTypeW(20),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(20),
      I5 => PCPlus4W(20),
      O => ResultW(20)
    );
rf_reg_r1_0_31_18_23_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(23),
      I1 => UTypeW(23),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(23),
      I5 => PCPlus4W(23),
      O => ResultW(23)
    );
rf_reg_r1_0_31_18_23_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(22),
      I1 => UTypeW(22),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(22),
      I5 => PCPlus4W(22),
      O => ResultW(22)
    );
rf_reg_r1_0_31_24_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(25),
      I1 => UTypeW(25),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(25),
      I5 => PCPlus4W(25),
      O => ResultW(25)
    );
rf_reg_r1_0_31_24_29_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(24),
      I1 => UTypeW(24),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(24),
      I5 => PCPlus4W(24),
      O => ResultW(24)
    );
rf_reg_r1_0_31_24_29_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(27),
      I1 => UTypeW(27),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(27),
      I5 => PCPlus4W(27),
      O => ResultW(27)
    );
rf_reg_r1_0_31_24_29_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(26),
      I1 => UTypeW(26),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(26),
      I5 => PCPlus4W(26),
      O => ResultW(26)
    );
rf_reg_r1_0_31_24_29_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(29),
      I1 => UTypeW(29),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(29),
      I5 => PCPlus4W(29),
      O => ResultW(29)
    );
rf_reg_r1_0_31_24_29_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(28),
      I1 => UTypeW(28),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(28),
      I5 => PCPlus4W(28),
      O => ResultW(28)
    );
rf_reg_r1_0_31_30_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(31),
      I1 => UTypeW(31),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(31),
      I5 => PCPlus4W(31),
      O => ResultW(31)
    );
\rf_reg_r1_0_31_30_31_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(30),
      I1 => UTypeW(30),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(30),
      I5 => PCPlus4W(30),
      O => ResultW(30)
    );
rf_reg_r1_0_31_6_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(7),
      I1 => UTypeW(7),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(7),
      I5 => PCPlus4W(7),
      O => ResultW(7)
    );
rf_reg_r1_0_31_6_11_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(6),
      I1 => UTypeW(6),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(6),
      I5 => PCPlus4W(6),
      O => ResultW(6)
    );
rf_reg_r1_0_31_6_11_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(9),
      I1 => UTypeW(9),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(9),
      I5 => PCPlus4W(9),
      O => ResultW(9)
    );
rf_reg_r1_0_31_6_11_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(8),
      I1 => UTypeW(8),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(8),
      I5 => PCPlus4W(8),
      O => ResultW(8)
    );
rf_reg_r1_0_31_6_11_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(11),
      I1 => UTypeW(11),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(11),
      I5 => PCPlus4W(11),
      O => ResultW(11)
    );
rf_reg_r1_0_31_6_11_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => ReadDataW1(10),
      I1 => UTypeW(10),
      I2 => \q_reg[102]_0\(0),
      I3 => \q_reg[102]_0\(1),
      I4 => ALUResultW(10),
      I5 => PCPlus4W(10),
      O => ResultW(10)
    );
\sum__0_carry_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \sum__0_carry_i_11\(0),
      I2 => \sum__0_carry_i_11\(1),
      I3 => \^q\(3),
      O => \q_reg[69]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem is
  port (
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rd : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem is
  signal \<const0>\ : STD_LOGIC;
  signal \^rd\ : STD_LOGIC_VECTOR ( 31 downto 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rd[10]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \rd[11]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \rd[15]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \rd[16]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \rd[17]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \rd[18]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \rd[20]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \rd[21]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \rd[22]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \rd[23]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \rd[24]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \rd[25]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \rd[28]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \rd[2]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \rd[4]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \rd[5]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \rd[6]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \rd[7]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \rd[8]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \rd[9]_INST_0\ : label is "soft_lutpair80";
begin
  rd(31) <= \^rd\(31);
  rd(30) <= \^rd\(31);
  rd(29) <= \^rd\(31);
  rd(28) <= \^rd\(28);
  rd(27) <= \^rd\(31);
  rd(26) <= \^rd\(31);
  rd(25 downto 24) <= \^rd\(25 downto 24);
  rd(23) <= \^rd\(31);
  rd(22 downto 19) <= \^rd\(22 downto 19);
  rd(18) <= \^rd\(19);
  rd(17 downto 13) <= \^rd\(17 downto 13);
  rd(12) <= \^rd\(14);
  rd(11 downto 4) <= \^rd\(11 downto 4);
  rd(3) <= \^rd\(14);
  rd(2) <= \^rd\(14);
  rd(1) <= \<const0>\;
  rd(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\rd[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CD"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(4),
      I3 => a(3),
      O => \^rd\(10)
    );
\rd[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004D"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(4),
      I3 => a(3),
      O => \^rd\(11)
    );
\rd[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      O => \^rd\(13)
    );
\rd[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"282A"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => a(2),
      O => \^rd\(15)
    );
\rd[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3404"
    )
        port map (
      I0 => a(2),
      I1 => a(5),
      I2 => a(4),
      I3 => a(3),
      O => \^rd\(16)
    );
\rd[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6E6A"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(2),
      O => \^rd\(17)
    );
\rd[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22E8"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(19)
    );
\rd[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3260"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(2),
      O => \^rd\(20)
    );
\rd[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0038"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(21)
    );
\rd[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1A2D"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(4),
      I3 => a(3),
      O => \^rd\(22)
    );
\rd[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(31)
    );
\rd[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(24)
    );
\rd[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0230"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(25)
    );
\rd[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0029"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      O => \^rd\(28)
    );
\rd[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(14)
    );
\rd[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CD77"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(2),
      I3 => a(4),
      O => \^rd\(4)
    );
\rd[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE48"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(5)
    );
\rd[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A40"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      O => \^rd\(6)
    );
\rd[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D5"
    )
        port map (
      I0 => a(2),
      I1 => a(4),
      I2 => a(3),
      I3 => a(5),
      O => \^rd\(7)
    );
\rd[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1582"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(4),
      I3 => a(3),
      O => \^rd\(8)
    );
\rd[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4777"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(2),
      I3 => a(4),
      O => \^rd\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile is
  port (
    rd10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rd20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ResultW : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[147]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \q_reg[141]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile is
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
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_0_5 : label is "";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of rf_reg_r1_0_31_0_5 : label is "MLO";
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
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_12_17 : label is "";
  attribute OPT_MODIFIED of rf_reg_r1_0_31_12_17 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_12_17 : label is "dp/rf/rf_reg_r1_0_31_12_17";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_12_17 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_12_17 : label is 12;
  attribute ram_slice_end of rf_reg_r1_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_18_23 : label is "";
  attribute OPT_MODIFIED of rf_reg_r1_0_31_18_23 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_18_23 : label is "dp/rf/rf_reg_r1_0_31_18_23";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_18_23 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_18_23 : label is 18;
  attribute ram_slice_end of rf_reg_r1_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_24_29 : label is "";
  attribute OPT_MODIFIED of rf_reg_r1_0_31_24_29 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_24_29 : label is "dp/rf/rf_reg_r1_0_31_24_29";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_24_29 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_24_29 : label is 24;
  attribute ram_slice_end of rf_reg_r1_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_30_31 : label is "";
  attribute OPT_MODIFIED of rf_reg_r1_0_31_30_31 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_30_31 : label is "dp/rf/rf_reg_r1_0_31_30_31";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_30_31 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_30_31 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_30_31 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_30_31 : label is 30;
  attribute ram_slice_end of rf_reg_r1_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \rf_reg_r1_0_31_30_31__0\ : label is "";
  attribute OPT_MODIFIED of \rf_reg_r1_0_31_30_31__0\ : label is "MLO";
  attribute RTL_RAM_BITS of \rf_reg_r1_0_31_30_31__0\ : label is 1024;
  attribute RTL_RAM_NAME of \rf_reg_r1_0_31_30_31__0\ : label is "dp/rf/rf_reg_r1_0_31_30_31";
  attribute RTL_RAM_TYPE of \rf_reg_r1_0_31_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \rf_reg_r1_0_31_30_31__0\ : label is 0;
  attribute ram_addr_end of \rf_reg_r1_0_31_30_31__0\ : label is 31;
  attribute ram_offset of \rf_reg_r1_0_31_30_31__0\ : label is 0;
  attribute ram_slice_begin of \rf_reg_r1_0_31_30_31__0\ : label is 30;
  attribute ram_slice_end of \rf_reg_r1_0_31_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_6_11 : label is "";
  attribute OPT_MODIFIED of rf_reg_r1_0_31_6_11 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_6_11 : label is "dp/rf/rf_reg_r1_0_31_6_11";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_6_11 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_6_11 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_6_11 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_6_11 : label is 6;
  attribute ram_slice_end of rf_reg_r1_0_31_6_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_0_5 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_0_5 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_0_5 : label is "dp/rf/rf_reg_r2_0_31_0_5";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_0_5 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_end of rf_reg_r2_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_12_17 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_12_17 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_12_17 : label is "dp/rf/rf_reg_r2_0_31_12_17";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_12_17 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_12_17 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_12_17 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_12_17 : label is 12;
  attribute ram_slice_end of rf_reg_r2_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_18_23 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_18_23 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_18_23 : label is "dp/rf/rf_reg_r2_0_31_18_23";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_18_23 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_18_23 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_18_23 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_18_23 : label is 18;
  attribute ram_slice_end of rf_reg_r2_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_24_29 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_24_29 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_24_29 : label is "dp/rf/rf_reg_r2_0_31_24_29";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_24_29 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_24_29 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_24_29 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_24_29 : label is 24;
  attribute ram_slice_end of rf_reg_r2_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_30_31 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_30_31 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_30_31 : label is "dp/rf/rf_reg_r2_0_31_30_31";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_30_31 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_30_31 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_30_31 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_30_31 : label is 30;
  attribute ram_slice_end of rf_reg_r2_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \rf_reg_r2_0_31_30_31__0\ : label is "";
  attribute OPT_MODIFIED of \rf_reg_r2_0_31_30_31__0\ : label is "MLO";
  attribute RTL_RAM_BITS of \rf_reg_r2_0_31_30_31__0\ : label is 1024;
  attribute RTL_RAM_NAME of \rf_reg_r2_0_31_30_31__0\ : label is "dp/rf/rf_reg_r2_0_31_30_31";
  attribute RTL_RAM_TYPE of \rf_reg_r2_0_31_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \rf_reg_r2_0_31_30_31__0\ : label is 0;
  attribute ram_addr_end of \rf_reg_r2_0_31_30_31__0\ : label is 31;
  attribute ram_offset of \rf_reg_r2_0_31_30_31__0\ : label is 0;
  attribute ram_slice_begin of \rf_reg_r2_0_31_30_31__0\ : label is 30;
  attribute ram_slice_end of \rf_reg_r2_0_31_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_6_11 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_6_11 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_6_11 : label is "dp/rf/rf_reg_r2_0_31_6_11";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_6_11 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_6_11 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_6_11 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_6_11 : label is 6;
  attribute ram_slice_end of rf_reg_r2_0_31_6_11 : label is 11;
begin
rf_reg_r1_0_31_0_5: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[141]\(4 downto 0),
      ADDRB(4 downto 0) => \q_reg[141]\(4 downto 0),
      ADDRC(4 downto 0) => \q_reg[141]\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(1 downto 0),
      DIB(1 downto 0) => ResultW(3 downto 2),
      DIC(1 downto 0) => ResultW(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(1 downto 0),
      DOB(1 downto 0) => rd10(3 downto 2),
      DOC(1 downto 0) => rd10(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[147]\(0)
    );
rf_reg_r1_0_31_12_17: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[141]\(4 downto 0),
      ADDRB(4 downto 0) => \q_reg[141]\(4 downto 0),
      ADDRC(4 downto 0) => \q_reg[141]\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(13 downto 12),
      DIB(1 downto 0) => ResultW(15 downto 14),
      DIC(1 downto 0) => ResultW(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(13 downto 12),
      DOB(1 downto 0) => rd10(15 downto 14),
      DOC(1 downto 0) => rd10(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[147]\(0)
    );
rf_reg_r1_0_31_18_23: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[141]\(4 downto 0),
      ADDRB(4 downto 0) => \q_reg[141]\(4 downto 0),
      ADDRC(4 downto 0) => \q_reg[141]\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(19 downto 18),
      DIB(1 downto 0) => ResultW(21 downto 20),
      DIC(1 downto 0) => ResultW(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(19 downto 18),
      DOB(1 downto 0) => rd10(21 downto 20),
      DOC(1 downto 0) => rd10(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[147]\(0)
    );
rf_reg_r1_0_31_24_29: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[141]\(4 downto 0),
      ADDRB(4 downto 0) => \q_reg[141]\(4 downto 0),
      ADDRC(4 downto 0) => \q_reg[141]\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(25 downto 24),
      DIB(1 downto 0) => ResultW(27 downto 26),
      DIC(1 downto 0) => ResultW(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(25 downto 24),
      DOB(1 downto 0) => rd10(27 downto 26),
      DOC(1 downto 0) => rd10(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[147]\(0)
    );
rf_reg_r1_0_31_30_31: unisim.vcomponents.RAM32X1D
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => ResultW(30),
      DPO => rd10(30),
      DPRA0 => \q_reg[141]\(0),
      DPRA1 => \q_reg[141]\(1),
      DPRA2 => \q_reg[141]\(2),
      DPRA3 => \q_reg[141]\(3),
      DPRA4 => \q_reg[141]\(4),
      SPO => NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \q_reg[147]\(0)
    );
\rf_reg_r1_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => ResultW(31),
      DPO => rd10(31),
      DPRA0 => \q_reg[141]\(0),
      DPRA1 => \q_reg[141]\(1),
      DPRA2 => \q_reg[141]\(2),
      DPRA3 => \q_reg[141]\(3),
      DPRA4 => \q_reg[141]\(4),
      SPO => \NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => \q_reg[147]\(0)
    );
rf_reg_r1_0_31_6_11: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[141]\(4 downto 0),
      ADDRB(4 downto 0) => \q_reg[141]\(4 downto 0),
      ADDRC(4 downto 0) => \q_reg[141]\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(7 downto 6),
      DIB(1 downto 0) => ResultW(9 downto 8),
      DIC(1 downto 0) => ResultW(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(7 downto 6),
      DOB(1 downto 0) => rd10(9 downto 8),
      DOC(1 downto 0) => rd10(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[147]\(0)
    );
rf_reg_r2_0_31_0_5: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[141]\(9 downto 5),
      ADDRB(4 downto 0) => \q_reg[141]\(9 downto 5),
      ADDRC(4 downto 0) => \q_reg[141]\(9 downto 5),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(1 downto 0),
      DIB(1 downto 0) => ResultW(3 downto 2),
      DIC(1 downto 0) => ResultW(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(1 downto 0),
      DOB(1 downto 0) => rd20(3 downto 2),
      DOC(1 downto 0) => rd20(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[147]\(0)
    );
rf_reg_r2_0_31_12_17: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[141]\(9 downto 5),
      ADDRB(4 downto 0) => \q_reg[141]\(9 downto 5),
      ADDRC(4 downto 0) => \q_reg[141]\(9 downto 5),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(13 downto 12),
      DIB(1 downto 0) => ResultW(15 downto 14),
      DIC(1 downto 0) => ResultW(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(13 downto 12),
      DOB(1 downto 0) => rd20(15 downto 14),
      DOC(1 downto 0) => rd20(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[147]\(0)
    );
rf_reg_r2_0_31_18_23: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[141]\(9 downto 5),
      ADDRB(4 downto 0) => \q_reg[141]\(9 downto 5),
      ADDRC(4 downto 0) => \q_reg[141]\(9 downto 5),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(19 downto 18),
      DIB(1 downto 0) => ResultW(21 downto 20),
      DIC(1 downto 0) => ResultW(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(19 downto 18),
      DOB(1 downto 0) => rd20(21 downto 20),
      DOC(1 downto 0) => rd20(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[147]\(0)
    );
rf_reg_r2_0_31_24_29: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[141]\(9 downto 5),
      ADDRB(4 downto 0) => \q_reg[141]\(9 downto 5),
      ADDRC(4 downto 0) => \q_reg[141]\(9 downto 5),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(25 downto 24),
      DIB(1 downto 0) => ResultW(27 downto 26),
      DIC(1 downto 0) => ResultW(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(25 downto 24),
      DOB(1 downto 0) => rd20(27 downto 26),
      DOC(1 downto 0) => rd20(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[147]\(0)
    );
rf_reg_r2_0_31_30_31: unisim.vcomponents.RAM32X1D
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => ResultW(30),
      DPO => rd20(30),
      DPRA0 => \q_reg[141]\(5),
      DPRA1 => \q_reg[141]\(6),
      DPRA2 => \q_reg[141]\(7),
      DPRA3 => \q_reg[141]\(8),
      DPRA4 => \q_reg[141]\(9),
      SPO => NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \q_reg[147]\(0)
    );
\rf_reg_r2_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => ResultW(31),
      DPO => rd20(31),
      DPRA0 => \q_reg[141]\(5),
      DPRA1 => \q_reg[141]\(6),
      DPRA2 => \q_reg[141]\(7),
      DPRA3 => \q_reg[141]\(8),
      DPRA4 => \q_reg[141]\(9),
      SPO => \NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => \q_reg[147]\(0)
    );
rf_reg_r2_0_31_6_11: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[141]\(9 downto 5),
      ADDRB(4 downto 0) => \q_reg[141]\(9 downto 5),
      ADDRC(4 downto 0) => \q_reg[141]\(9 downto 5),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(7 downto 6),
      DIB(1 downto 0) => ResultW(9 downto 8),
      DIC(1 downto 0) => ResultW(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(7 downto 6),
      DOB(1 downto 0) => rd20(9 downto 8),
      DOC(1 downto 0) => rd20(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[147]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_storeloadcase is
  port (
    WriteDataM : out STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_storeloadcase;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_storeloadcase is
begin
\WriteDataM[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(6),
      I3 => Q(0),
      I4 => Q(3),
      O => WriteDataM(2)
    );
\WriteDataM[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(7),
      I3 => Q(0),
      I4 => Q(3),
      O => WriteDataM(3)
    );
\WriteDataM[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(8),
      I3 => Q(0),
      I4 => Q(3),
      O => WriteDataM(4)
    );
\WriteDataM[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(9),
      I3 => Q(0),
      I4 => Q(3),
      O => WriteDataM(5)
    );
\WriteDataM[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(10),
      I3 => Q(0),
      I4 => Q(3),
      O => WriteDataM(6)
    );
\WriteDataM[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(11),
      I3 => Q(0),
      I4 => Q(3),
      O => WriteDataM(7)
    );
\WriteDataM[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(12),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(8)
    );
\WriteDataM[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(13),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(9)
    );
\WriteDataM[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(14),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(10)
    );
\WriteDataM[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(15),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(11)
    );
\WriteDataM[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(16),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(12)
    );
\WriteDataM[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(17),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(13)
    );
\WriteDataM[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(18),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(14)
    );
\WriteDataM[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(19),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(15)
    );
\WriteDataM[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(20),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(16)
    );
\WriteDataM[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(21),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(17)
    );
\WriteDataM[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(22),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(18)
    );
\WriteDataM[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(23),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(19)
    );
\WriteDataM[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(24),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(20)
    );
\WriteDataM[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(25),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(21)
    );
\WriteDataM[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(26),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(22)
    );
\WriteDataM[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => Q(27),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(11),
      I4 => Q(0),
      I5 => Q(3),
      O => WriteDataM(23)
    );
\WriteDataM[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(4),
      I3 => Q(0),
      I4 => Q(3),
      O => WriteDataM(0)
    );
\WriteDataM[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(5),
      I3 => Q(0),
      I4 => Q(3),
      O => WriteDataM(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller is
  port (
    \q_reg[6]\ : out STD_LOGIC;
    ALUResultE : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \q_reg[8]\ : out STD_LOGIC;
    \q_reg[6]_0\ : out STD_LOGIC;
    \q[31]_i_15\ : out STD_LOGIC;
    \v__7\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_reg[7]\ : out STD_LOGIC;
    \q_reg[6]_1\ : out STD_LOGIC;
    \q_reg[8]_0\ : out STD_LOGIC;
    \q_reg[6]_2\ : out STD_LOGIC;
    \q_reg[9]\ : out STD_LOGIC;
    \q_reg[5]\ : out STD_LOGIC;
    \q_reg[4]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ltE : in STD_LOGIC;
    \q[31]_i_5\ : in STD_LOGIC;
    data8 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \q_reg[134]\ : in STD_LOGIC;
    \q_reg[134]_0\ : in STD_LOGIC;
    \q_reg[124]\ : in STD_LOGIC;
    \q_reg[124]_0\ : in STD_LOGIC;
    \q_reg[125]\ : in STD_LOGIC;
    \q_reg[125]_0\ : in STD_LOGIC;
    \q_reg[126]\ : in STD_LOGIC;
    \q_reg[126]_0\ : in STD_LOGIC;
    \q_reg[127]\ : in STD_LOGIC;
    \q_reg[127]_0\ : in STD_LOGIC;
    \q_reg[128]\ : in STD_LOGIC;
    \q_reg[128]_0\ : in STD_LOGIC;
    \q_reg[129]\ : in STD_LOGIC;
    \q_reg[129]_0\ : in STD_LOGIC;
    \q_reg[130]\ : in STD_LOGIC;
    \q_reg[130]_0\ : in STD_LOGIC;
    \q_reg[131]\ : in STD_LOGIC;
    \q_reg[131]_0\ : in STD_LOGIC;
    \q_reg[132]\ : in STD_LOGIC;
    \q_reg[132]_0\ : in STD_LOGIC;
    \q_reg[133]\ : in STD_LOGIC;
    \q_reg[133]_0\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    SrcBE : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SrcAE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[134]_1\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \q_reg[179]\ : in STD_LOGIC;
    PCReadyM : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal controlregE_n_16 : STD_LOGIC;
  signal controlregE_n_17 : STD_LOGIC;
  signal controlregE_n_19 : STD_LOGIC;
  signal controlregE_n_27 : STD_LOGIC;
  signal controlregM_n_1 : STD_LOGIC;
  signal controlregM_n_2 : STD_LOGIC;
  signal \^q_reg[4]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \q_reg[4]\(2 downto 0) <= \^q_reg[4]\(2 downto 0);
controlregE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc
     port map (
      ALUResultE(10 downto 0) => ALUResultE(10 downto 0),
      D(11 downto 0) => D(11 downto 0),
      O(0) => O(0),
      PCReadyM => PCReadyM,
      Q(11) => controlregE_n_16,
      Q(10) => controlregE_n_17,
      Q(9) => \^q\(7),
      Q(8) => controlregE_n_19,
      Q(7 downto 1) => \^q\(6 downto 0),
      Q(0) => controlregE_n_27,
      SrcAE(0) => SrcAE(0),
      SrcBE(12 downto 0) => SrcBE(12 downto 0),
      clk => clk,
      data8(10 downto 0) => data8(10 downto 0),
      ltE => ltE,
      \q[31]_i_15_0\ => \q[31]_i_15\,
      \q[31]_i_5\ => \q[31]_i_5\,
      \q_reg[124]\ => \q_reg[124]\,
      \q_reg[124]_0\ => \q_reg[124]_0\,
      \q_reg[125]\ => \q_reg[125]\,
      \q_reg[125]_0\ => \q_reg[125]_0\,
      \q_reg[126]\ => \q_reg[126]\,
      \q_reg[126]_0\ => \q_reg[126]_0\,
      \q_reg[127]\ => \q_reg[127]\,
      \q_reg[127]_0\ => \q_reg[127]_0\,
      \q_reg[128]\ => \q_reg[128]\,
      \q_reg[128]_0\ => \q_reg[128]_0\,
      \q_reg[129]\ => \q_reg[129]\,
      \q_reg[129]_0\ => \q_reg[129]_0\,
      \q_reg[130]\ => \q_reg[130]\,
      \q_reg[130]_0\ => \q_reg[130]_0\,
      \q_reg[131]\ => \q_reg[131]\,
      \q_reg[131]_0\ => \q_reg[131]_0\,
      \q_reg[132]\ => \q_reg[132]\,
      \q_reg[132]_0\ => \q_reg[132]_0\,
      \q_reg[133]\ => \q_reg[133]\,
      \q_reg[133]_0\ => \q_reg[133]_0\,
      \q_reg[134]\ => \q_reg[134]\,
      \q_reg[134]_0\ => \q_reg[134]_0\,
      \q_reg[134]_1\(10 downto 0) => \q_reg[134]_1\(10 downto 0),
      \q_reg[179]\ => \q_reg[179]\,
      \q_reg[5]_0\ => \q_reg[5]\,
      \q_reg[6]_0\ => \q_reg[6]\,
      \q_reg[6]_1\ => \q_reg[6]_0\,
      \q_reg[6]_2\ => \q_reg[6]_1\,
      \q_reg[6]_3\ => \q_reg[6]_2\,
      \q_reg[7]_0\ => \q_reg[7]\,
      \q_reg[8]_0\ => \q_reg[8]\,
      \q_reg[8]_1\ => \q_reg[8]_0\,
      \q_reg[9]_0\ => \q_reg[9]\,
      reset => reset,
      \v__7\ => \v__7\
    );
controlregM: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr
     port map (
      D(4) => controlregE_n_16,
      D(3) => controlregE_n_17,
      D(2) => \^q\(7),
      D(1) => controlregE_n_19,
      D(0) => controlregE_n_27,
      PCReadyM => PCReadyM,
      Q(4) => \^q_reg[4]\(2),
      Q(3) => controlregM_n_1,
      Q(2) => controlregM_n_2,
      Q(1 downto 0) => \^q_reg[4]\(1 downto 0),
      clk => clk,
      reset => reset
    );
controlregW: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr
     port map (
      D(2) => \^q_reg[4]\(2),
      D(1) => controlregM_n_1,
      D(0) => controlregM_n_2,
      clk => clk,
      \q_reg[2]_0\(2 downto 0) => \q_reg[2]\(2 downto 0),
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[178]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i__carry__6_i_7\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \q_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \q_reg[68]\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \q_reg[179]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ltE : out STD_LOGIC;
    \q_reg[5]\ : out STD_LOGIC;
    \q_reg[5]_0\ : out STD_LOGIC;
    \q_reg[5]_1\ : out STD_LOGIC;
    \q_reg[5]_2\ : out STD_LOGIC;
    \q_reg[5]_3\ : out STD_LOGIC;
    \q_reg[6]\ : out STD_LOGIC;
    \q_reg[5]_4\ : out STD_LOGIC;
    \q_reg[5]_5\ : out STD_LOGIC;
    \q_reg[5]_6\ : out STD_LOGIC;
    \q_reg[5]_7\ : out STD_LOGIC;
    \q_reg[5]_8\ : out STD_LOGIC;
    \q_reg[5]_9\ : out STD_LOGIC;
    \q_reg[135]\ : out STD_LOGIC_VECTOR ( 39 downto 0 );
    \q_reg[6]_0\ : out STD_LOGIC;
    \q_reg[6]_1\ : out STD_LOGIC;
    \q_reg[6]_2\ : out STD_LOGIC;
    \q_reg[6]_3\ : out STD_LOGIC;
    \q_reg[6]_4\ : out STD_LOGIC;
    \q_reg[6]_5\ : out STD_LOGIC;
    \q_reg[6]_6\ : out STD_LOGIC;
    \q_reg[6]_7\ : out STD_LOGIC;
    \q_reg[6]_8\ : out STD_LOGIC;
    \q_reg[6]_9\ : out STD_LOGIC;
    \q_reg[6]_10\ : out STD_LOGIC;
    WriteDataM : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \q[104]_i_3\ : in STD_LOGIC;
    PCReadyM : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \q_reg[147]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[4]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_reg[179]_0\ : in STD_LOGIC;
    \q_reg[134]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    InstrF : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \q_reg[2]\ : in STD_LOGIC;
    \q_reg[95]\ : in STD_LOGIC;
    \q_reg[135]_0\ : in STD_LOGIC;
    \q_reg[135]_1\ : in STD_LOGIC;
    \q_reg[133]\ : in STD_LOGIC;
    \v__7\ : in STD_LOGIC;
    \q_reg[123]\ : in STD_LOGIC;
    \q_reg[123]_0\ : in STD_LOGIC;
    \q_reg[76]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[104]\ : in STD_LOGIC;
    ReadDataM : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
  signal ALUResultE : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal BranchTargetE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ImmExtE : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal ImmSrcD : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^o\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PCD : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PCE : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PCNextF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PCPlus4E : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal PCPlus4F : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RdD : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal RdE : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal RdM : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal RdW : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ResultW : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Rs1D : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Rs1E : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal Rs2D : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal SrcAE : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal UTypeE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal WriteDataE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal WriteDataM1 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \c/ALUOpD\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \c/md/controls__21\ : STD_LOGIC_VECTOR ( 6 to 6 );
  signal data6 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal data8 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal funct3D : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal funct7b5D : STD_LOGIC;
  signal \^lte\ : STD_LOGIC;
  signal ltuE : STD_LOGIC;
  signal opD : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 67 downto 49 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 95 downto 2 );
  signal \^q_reg[0]\ : STD_LOGIC;
  signal \^q_reg[135]\ : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \^q_reg[178]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal rd10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rd11__3\ : STD_LOGIC;
  signal rd20 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rd21__3\ : STD_LOGIC;
  signal regD_n_10 : STD_LOGIC;
  signal regD_n_11 : STD_LOGIC;
  signal regD_n_116 : STD_LOGIC;
  signal regD_n_117 : STD_LOGIC;
  signal regD_n_12 : STD_LOGIC;
  signal regD_n_120 : STD_LOGIC;
  signal regD_n_121 : STD_LOGIC;
  signal regD_n_122 : STD_LOGIC;
  signal regD_n_123 : STD_LOGIC;
  signal regD_n_124 : STD_LOGIC;
  signal regD_n_125 : STD_LOGIC;
  signal regD_n_127 : STD_LOGIC;
  signal regD_n_128 : STD_LOGIC;
  signal regD_n_129 : STD_LOGIC;
  signal regD_n_13 : STD_LOGIC;
  signal regD_n_130 : STD_LOGIC;
  signal regD_n_131 : STD_LOGIC;
  signal regD_n_132 : STD_LOGIC;
  signal regD_n_3 : STD_LOGIC;
  signal regD_n_67 : STD_LOGIC;
  signal regD_n_68 : STD_LOGIC;
  signal regD_n_69 : STD_LOGIC;
  signal regD_n_7 : STD_LOGIC;
  signal regD_n_70 : STD_LOGIC;
  signal regD_n_71 : STD_LOGIC;
  signal regD_n_72 : STD_LOGIC;
  signal regD_n_73 : STD_LOGIC;
  signal regD_n_74 : STD_LOGIC;
  signal regD_n_75 : STD_LOGIC;
  signal regD_n_76 : STD_LOGIC;
  signal regD_n_77 : STD_LOGIC;
  signal regD_n_78 : STD_LOGIC;
  signal regD_n_79 : STD_LOGIC;
  signal regD_n_80 : STD_LOGIC;
  signal regD_n_81 : STD_LOGIC;
  signal regD_n_82 : STD_LOGIC;
  signal regD_n_83 : STD_LOGIC;
  signal regD_n_84 : STD_LOGIC;
  signal regD_n_85 : STD_LOGIC;
  signal regD_n_86 : STD_LOGIC;
  signal regD_n_87 : STD_LOGIC;
  signal regD_n_88 : STD_LOGIC;
  signal regD_n_89 : STD_LOGIC;
  signal regD_n_9 : STD_LOGIC;
  signal regD_n_90 : STD_LOGIC;
  signal regD_n_91 : STD_LOGIC;
  signal regD_n_92 : STD_LOGIC;
  signal regD_n_93 : STD_LOGIC;
  signal regD_n_94 : STD_LOGIC;
  signal regD_n_95 : STD_LOGIC;
  signal regD_n_96 : STD_LOGIC;
  signal regE_n_122 : STD_LOGIC;
  signal regE_n_123 : STD_LOGIC;
  signal regE_n_125 : STD_LOGIC;
  signal regE_n_126 : STD_LOGIC;
  signal regE_n_127 : STD_LOGIC;
  signal regE_n_128 : STD_LOGIC;
  signal regE_n_171 : STD_LOGIC;
  signal regE_n_172 : STD_LOGIC;
  signal regE_n_173 : STD_LOGIC;
  signal regE_n_208 : STD_LOGIC;
  signal regE_n_368 : STD_LOGIC;
  signal regE_n_369 : STD_LOGIC;
  signal regE_n_370 : STD_LOGIC;
  signal regE_n_371 : STD_LOGIC;
  signal regE_n_373 : STD_LOGIC;
  signal regE_n_374 : STD_LOGIC;
  signal regE_n_375 : STD_LOGIC;
  signal regE_n_376 : STD_LOGIC;
  signal regE_n_378 : STD_LOGIC;
  signal regE_n_379 : STD_LOGIC;
  signal regE_n_380 : STD_LOGIC;
  signal regE_n_381 : STD_LOGIC;
  signal regE_n_382 : STD_LOGIC;
  signal regE_n_383 : STD_LOGIC;
  signal regE_n_384 : STD_LOGIC;
  signal regE_n_385 : STD_LOGIC;
  signal regE_n_394 : STD_LOGIC;
  signal regE_n_395 : STD_LOGIC;
  signal regE_n_396 : STD_LOGIC;
  signal regE_n_397 : STD_LOGIC;
  signal regE_n_398 : STD_LOGIC;
  signal regE_n_399 : STD_LOGIC;
  signal regE_n_400 : STD_LOGIC;
  signal regE_n_401 : STD_LOGIC;
  signal regE_n_418 : STD_LOGIC;
  signal regE_n_419 : STD_LOGIC;
  signal regE_n_420 : STD_LOGIC;
  signal regE_n_421 : STD_LOGIC;
  signal regE_n_422 : STD_LOGIC;
  signal regE_n_423 : STD_LOGIC;
  signal regE_n_424 : STD_LOGIC;
  signal regE_n_425 : STD_LOGIC;
  signal regE_n_426 : STD_LOGIC;
  signal regE_n_427 : STD_LOGIC;
  signal regE_n_428 : STD_LOGIC;
  signal regE_n_429 : STD_LOGIC;
  signal regE_n_430 : STD_LOGIC;
  signal regE_n_431 : STD_LOGIC;
  signal regE_n_432 : STD_LOGIC;
  signal regE_n_433 : STD_LOGIC;
  signal regE_n_434 : STD_LOGIC;
  signal regE_n_435 : STD_LOGIC;
  signal regE_n_436 : STD_LOGIC;
  signal regE_n_437 : STD_LOGIC;
  signal regE_n_438 : STD_LOGIC;
  signal regE_n_439 : STD_LOGIC;
  signal regE_n_440 : STD_LOGIC;
  signal regE_n_441 : STD_LOGIC;
  signal regE_n_442 : STD_LOGIC;
  signal regE_n_443 : STD_LOGIC;
  signal regE_n_444 : STD_LOGIC;
  signal regE_n_445 : STD_LOGIC;
  signal regE_n_446 : STD_LOGIC;
  signal regE_n_447 : STD_LOGIC;
  signal regE_n_448 : STD_LOGIC;
  signal regE_n_449 : STD_LOGIC;
  signal regE_n_450 : STD_LOGIC;
  signal regE_n_451 : STD_LOGIC;
  signal regE_n_452 : STD_LOGIC;
  signal regE_n_453 : STD_LOGIC;
  signal regE_n_454 : STD_LOGIC;
  signal regE_n_455 : STD_LOGIC;
  signal regE_n_456 : STD_LOGIC;
  signal regE_n_457 : STD_LOGIC;
  signal regE_n_458 : STD_LOGIC;
  signal regE_n_459 : STD_LOGIC;
  signal regE_n_460 : STD_LOGIC;
  signal regE_n_461 : STD_LOGIC;
  signal regE_n_462 : STD_LOGIC;
  signal regE_n_463 : STD_LOGIC;
  signal regE_n_464 : STD_LOGIC;
  signal regE_n_465 : STD_LOGIC;
  signal regE_n_466 : STD_LOGIC;
  signal regE_n_467 : STD_LOGIC;
  signal regE_n_468 : STD_LOGIC;
  signal regE_n_469 : STD_LOGIC;
  signal regE_n_470 : STD_LOGIC;
  signal regE_n_471 : STD_LOGIC;
  signal regE_n_472 : STD_LOGIC;
  signal regE_n_473 : STD_LOGIC;
  signal regE_n_474 : STD_LOGIC;
  signal regE_n_475 : STD_LOGIC;
  signal regE_n_476 : STD_LOGIC;
  signal regE_n_477 : STD_LOGIC;
  signal regE_n_478 : STD_LOGIC;
  signal regE_n_479 : STD_LOGIC;
  signal regE_n_480 : STD_LOGIC;
  signal regE_n_481 : STD_LOGIC;
  signal regE_n_482 : STD_LOGIC;
  signal regE_n_483 : STD_LOGIC;
  signal regE_n_484 : STD_LOGIC;
  signal regE_n_485 : STD_LOGIC;
  signal regE_n_486 : STD_LOGIC;
  signal regE_n_487 : STD_LOGIC;
  signal regE_n_488 : STD_LOGIC;
  signal regE_n_489 : STD_LOGIC;
  signal regE_n_490 : STD_LOGIC;
  signal regE_n_491 : STD_LOGIC;
  signal regE_n_492 : STD_LOGIC;
  signal regE_n_493 : STD_LOGIC;
  signal regE_n_494 : STD_LOGIC;
  signal regE_n_495 : STD_LOGIC;
  signal regE_n_496 : STD_LOGIC;
  signal regE_n_497 : STD_LOGIC;
  signal regE_n_498 : STD_LOGIC;
  signal regE_n_499 : STD_LOGIC;
  signal regE_n_500 : STD_LOGIC;
  signal regE_n_501 : STD_LOGIC;
  signal regE_n_502 : STD_LOGIC;
  signal regE_n_503 : STD_LOGIC;
  signal regE_n_504 : STD_LOGIC;
  signal regE_n_505 : STD_LOGIC;
  signal regE_n_506 : STD_LOGIC;
  signal regE_n_507 : STD_LOGIC;
  signal regE_n_508 : STD_LOGIC;
  signal regE_n_509 : STD_LOGIC;
  signal regE_n_510 : STD_LOGIC;
  signal regE_n_511 : STD_LOGIC;
  signal regE_n_512 : STD_LOGIC;
  signal regE_n_513 : STD_LOGIC;
  signal regE_n_514 : STD_LOGIC;
  signal regE_n_515 : STD_LOGIC;
  signal regE_n_516 : STD_LOGIC;
  signal regE_n_517 : STD_LOGIC;
  signal regM_n_0 : STD_LOGIC;
  signal regM_n_100 : STD_LOGIC;
  signal regM_n_101 : STD_LOGIC;
  signal regM_n_102 : STD_LOGIC;
  signal regM_n_103 : STD_LOGIC;
  signal regM_n_104 : STD_LOGIC;
  signal regM_n_105 : STD_LOGIC;
  signal regM_n_106 : STD_LOGIC;
  signal regM_n_107 : STD_LOGIC;
  signal regM_n_108 : STD_LOGIC;
  signal regM_n_109 : STD_LOGIC;
  signal regM_n_110 : STD_LOGIC;
  signal regM_n_111 : STD_LOGIC;
  signal regM_n_112 : STD_LOGIC;
  signal regM_n_113 : STD_LOGIC;
  signal regM_n_114 : STD_LOGIC;
  signal regM_n_115 : STD_LOGIC;
  signal regM_n_116 : STD_LOGIC;
  signal regM_n_117 : STD_LOGIC;
  signal regM_n_118 : STD_LOGIC;
  signal regM_n_119 : STD_LOGIC;
  signal regM_n_120 : STD_LOGIC;
  signal regM_n_121 : STD_LOGIC;
  signal regM_n_122 : STD_LOGIC;
  signal regM_n_123 : STD_LOGIC;
  signal regM_n_124 : STD_LOGIC;
  signal regM_n_125 : STD_LOGIC;
  signal regM_n_126 : STD_LOGIC;
  signal regM_n_127 : STD_LOGIC;
  signal regM_n_128 : STD_LOGIC;
  signal regM_n_129 : STD_LOGIC;
  signal regM_n_130 : STD_LOGIC;
  signal regM_n_131 : STD_LOGIC;
  signal regM_n_132 : STD_LOGIC;
  signal regM_n_133 : STD_LOGIC;
  signal regM_n_134 : STD_LOGIC;
  signal regM_n_135 : STD_LOGIC;
  signal regM_n_136 : STD_LOGIC;
  signal regM_n_70 : STD_LOGIC;
  signal regM_n_71 : STD_LOGIC;
  signal regM_n_72 : STD_LOGIC;
  signal regM_n_73 : STD_LOGIC;
  signal regM_n_74 : STD_LOGIC;
  signal regM_n_75 : STD_LOGIC;
  signal regM_n_76 : STD_LOGIC;
  signal regM_n_77 : STD_LOGIC;
  signal regM_n_78 : STD_LOGIC;
  signal regM_n_79 : STD_LOGIC;
  signal regM_n_80 : STD_LOGIC;
  signal regM_n_81 : STD_LOGIC;
  signal regM_n_82 : STD_LOGIC;
  signal regM_n_83 : STD_LOGIC;
  signal regM_n_84 : STD_LOGIC;
  signal regM_n_85 : STD_LOGIC;
  signal regM_n_86 : STD_LOGIC;
  signal regM_n_87 : STD_LOGIC;
  signal regM_n_88 : STD_LOGIC;
  signal regM_n_89 : STD_LOGIC;
  signal regM_n_90 : STD_LOGIC;
  signal regM_n_91 : STD_LOGIC;
  signal regM_n_92 : STD_LOGIC;
  signal regM_n_93 : STD_LOGIC;
  signal regM_n_94 : STD_LOGIC;
  signal regM_n_95 : STD_LOGIC;
  signal regM_n_96 : STD_LOGIC;
  signal regM_n_97 : STD_LOGIC;
  signal regM_n_98 : STD_LOGIC;
  signal regM_n_99 : STD_LOGIC;
  signal regW_n_32 : STD_LOGIC;
  signal sum : STD_LOGIC_VECTOR ( 30 downto 0 );
begin
  O(0) <= \^o\(0);
  Q(31 downto 0) <= \^q\(31 downto 0);
  ltE <= \^lte\;
  \q_reg[0]\ <= \^q_reg[0]\;
  \q_reg[135]\(39 downto 0) <= \^q_reg[135]\(39 downto 0);
  \q_reg[178]\(10 downto 0) <= \^q_reg[178]\(10 downto 0);
alu: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu
     port map (
      CO(0) => ltuE,
      DI(3 downto 0) => \^q_reg[178]\(3 downto 0),
      O(0) => \^o\(0),
      S(3) => regE_n_450,
      S(2) => regE_n_451,
      S(1) => regE_n_452,
      S(0) => regE_n_453,
      SrcAE(19 downto 0) => SrcAE(19 downto 0),
      data6(30 downto 0) => data6(30 downto 0),
      data8(20) => data8(31),
      data8(19 downto 0) => data8(19 downto 0),
      \i__carry__6_i_7\(10 downto 0) => \i__carry__6_i_7\(10 downto 0),
      \ltu_carry__0_0\(3) => regE_n_368,
      \ltu_carry__0_0\(2) => regE_n_369,
      \ltu_carry__0_0\(1) => regE_n_370,
      \ltu_carry__0_0\(0) => regE_n_371,
      \ltu_carry__0_1\(3) => regE_n_506,
      \ltu_carry__0_1\(2) => regE_n_507,
      \ltu_carry__0_1\(1) => regE_n_508,
      \ltu_carry__0_1\(0) => regE_n_509,
      \ltu_carry__1_0\(3) => regE_n_394,
      \ltu_carry__1_0\(2) => regE_n_395,
      \ltu_carry__1_0\(1) => regE_n_396,
      \ltu_carry__1_0\(0) => regE_n_397,
      \ltu_carry__1_1\(3) => regE_n_510,
      \ltu_carry__1_1\(2) => regE_n_511,
      \ltu_carry__1_1\(1) => regE_n_512,
      \ltu_carry__1_1\(0) => regE_n_513,
      \ltu_carry__2_0\(3) => regE_n_398,
      \ltu_carry__2_0\(2) => regE_n_399,
      \ltu_carry__2_0\(1) => regE_n_400,
      \ltu_carry__2_0\(0) => regE_n_401,
      \ltu_carry__2_1\(3) => regE_n_514,
      \ltu_carry__2_1\(2) => regE_n_515,
      \ltu_carry__2_1\(1) => regE_n_516,
      \ltu_carry__2_1\(0) => regE_n_517,
      \q[104]_i_3\ => \q[104]_i_3\,
      \q[108]_i_2\(3) => regE_n_482,
      \q[108]_i_2\(2) => regE_n_483,
      \q[108]_i_2\(1) => regE_n_484,
      \q[108]_i_2\(0) => regE_n_485,
      \q[108]_i_3\(3) => regE_n_454,
      \q[108]_i_3\(2) => regE_n_455,
      \q[108]_i_3\(1) => regE_n_456,
      \q[108]_i_3\(0) => regE_n_457,
      \q[112]_i_2\(3) => regE_n_486,
      \q[112]_i_2\(2) => regE_n_487,
      \q[112]_i_2\(1) => regE_n_488,
      \q[112]_i_2\(0) => regE_n_489,
      \q[112]_i_3\(3) => regE_n_458,
      \q[112]_i_3\(2) => regE_n_459,
      \q[112]_i_3\(1) => regE_n_460,
      \q[112]_i_3\(0) => regE_n_461,
      \q[116]_i_2\(3) => regE_n_490,
      \q[116]_i_2\(2) => regE_n_491,
      \q[116]_i_2\(1) => regE_n_492,
      \q[116]_i_2\(0) => regE_n_493,
      \q[116]_i_3\(3) => regE_n_462,
      \q[116]_i_3\(2) => regE_n_463,
      \q[116]_i_3\(1) => regE_n_464,
      \q[116]_i_3\(0) => regE_n_465,
      \q[120]_i_2\(3) => regE_n_494,
      \q[120]_i_2\(2) => regE_n_495,
      \q[120]_i_2\(1) => regE_n_496,
      \q[120]_i_2\(0) => regE_n_497,
      \q[120]_i_3\(3) => regE_n_466,
      \q[120]_i_3\(2) => regE_n_467,
      \q[120]_i_3\(1) => regE_n_468,
      \q[120]_i_3\(0) => regE_n_469,
      \q[124]_i_3\(3) => regE_n_470,
      \q[124]_i_3\(2) => regE_n_471,
      \q[124]_i_3\(1) => regE_n_472,
      \q[124]_i_3\(0) => regE_n_473,
      \q[128]_i_3\(3 downto 0) => \^q_reg[178]\(7 downto 4),
      \q[128]_i_3_0\(3) => regE_n_474,
      \q[128]_i_3_0\(2) => regE_n_475,
      \q[128]_i_3_0\(1) => regE_n_476,
      \q[128]_i_3_0\(0) => regE_n_477,
      \q[132]_i_3\(2 downto 0) => \^q_reg[178]\(10 downto 8),
      \q[132]_i_3_0\(3) => regE_n_382,
      \q[132]_i_3_0\(2) => regE_n_383,
      \q[132]_i_3_0\(1) => regE_n_384,
      \q[132]_i_3_0\(0) => regE_n_385,
      \q_reg[104]\(3) => regE_n_378,
      \q_reg[104]\(2) => regE_n_379,
      \q_reg[104]\(1) => regE_n_380,
      \q_reg[104]\(0) => regE_n_381,
      \q_reg[104]_0\(3) => regE_n_373,
      \q_reg[104]_0\(2) => regE_n_374,
      \q_reg[104]_0\(1) => regE_n_375,
      \q_reg[104]_0\(0) => regE_n_376,
      \q_reg[104]_1\(3) => regE_n_478,
      \q_reg[104]_1\(2) => regE_n_479,
      \q_reg[104]_1\(1) => regE_n_480,
      \q_reg[104]_1\(0) => regE_n_481,
      \q_reg[127]\(3) => regE_n_498,
      \q_reg[127]\(2) => regE_n_499,
      \q_reg[127]\(1) => regE_n_500,
      \q_reg[127]\(0) => regE_n_501,
      \q_reg[131]\(3) => regE_n_502,
      \q_reg[131]\(2) => regE_n_503,
      \q_reg[131]\(1) => regE_n_504,
      \q_reg[131]\(0) => regE_n_505,
      \q_reg[134]\(3) => regE_n_418,
      \q_reg[134]\(2) => regE_n_419,
      \q_reg[134]\(1) => regE_n_420,
      \q_reg[134]\(0) => regE_n_421,
      sum(30 downto 0) => sum(30 downto 0)
    );
branchadd: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder
     port map (
      BranchTargetE(31 downto 0) => BranchTargetE(31 downto 0),
      Q(30 downto 0) => ImmExtE(30 downto 0),
      S(3) => regE_n_422,
      S(2) => regE_n_423,
      S(1) => regE_n_424,
      S(0) => regE_n_425,
      \q_reg[11]\(3) => regE_n_430,
      \q_reg[11]\(2) => regE_n_431,
      \q_reg[11]\(1) => regE_n_432,
      \q_reg[11]\(0) => regE_n_433,
      \q_reg[15]\(3) => regE_n_434,
      \q_reg[15]\(2) => regE_n_435,
      \q_reg[15]\(1) => regE_n_436,
      \q_reg[15]\(0) => regE_n_437,
      \q_reg[19]\(3) => regE_n_438,
      \q_reg[19]\(2) => regE_n_439,
      \q_reg[19]\(1) => regE_n_440,
      \q_reg[19]\(0) => regE_n_441,
      \q_reg[23]\(3) => regE_n_442,
      \q_reg[23]\(2) => regE_n_443,
      \q_reg[23]\(1) => regE_n_444,
      \q_reg[23]\(0) => regE_n_445,
      \q_reg[27]\(3) => regE_n_446,
      \q_reg[27]\(2) => regE_n_447,
      \q_reg[27]\(1) => regE_n_448,
      \q_reg[27]\(0) => regE_n_449,
      \q_reg[31]\(3) => regE_n_125,
      \q_reg[31]\(2) => regE_n_126,
      \q_reg[31]\(1) => regE_n_127,
      \q_reg[31]\(0) => regE_n_128,
      \q_reg[7]\(3) => regE_n_426,
      \q_reg[7]\(2) => regE_n_427,
      \q_reg[7]\(1) => regE_n_428,
      \q_reg[7]\(0) => regE_n_429
    );
pcadd: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0
     port map (
      PCPlus4F(28 downto 0) => PCPlus4F(31 downto 3),
      Q(29 downto 0) => \^q\(31 downto 2)
    );
pcreg: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr__parameterized0\
     port map (
      D(31 downto 0) => PCNextF(31 downto 0),
      E(0) => regE_n_173,
      Q(31 downto 0) => \^q\(31 downto 0),
      clk => clk,
      reset => reset
    );
regD: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc__parameterized0\
     port map (
      ALUOpD(0) => \c/ALUOpD\(1),
      D(2) => D(9),
      D(1 downto 0) => D(3 downto 2),
      E(0) => regE_n_173,
      Q(89) => regD_n_7,
      Q(88) => funct7b5D,
      Q(87) => regD_n_9,
      Q(86) => regD_n_10,
      Q(85) => regD_n_11,
      Q(84) => regD_n_12,
      Q(83) => regD_n_13,
      Q(82 downto 78) => Rs2D(4 downto 0),
      Q(77 downto 73) => Rs1D(4 downto 0),
      Q(72 downto 70) => funct3D(2 downto 0),
      Q(69 downto 65) => RdD(4 downto 0),
      Q(64) => opD(5),
      Q(63 downto 62) => opD(2 downto 1),
      Q(61 downto 30) => PCD(31 downto 0),
      Q(29) => regD_n_67,
      Q(28) => regD_n_68,
      Q(27) => regD_n_69,
      Q(26) => regD_n_70,
      Q(25) => regD_n_71,
      Q(24) => regD_n_72,
      Q(23) => regD_n_73,
      Q(22) => regD_n_74,
      Q(21) => regD_n_75,
      Q(20) => regD_n_76,
      Q(19) => regD_n_77,
      Q(18) => regD_n_78,
      Q(17) => regD_n_79,
      Q(16) => regD_n_80,
      Q(15) => regD_n_81,
      Q(14) => regD_n_82,
      Q(13) => regD_n_83,
      Q(12) => regD_n_84,
      Q(11) => regD_n_85,
      Q(10) => regD_n_86,
      Q(9) => regD_n_87,
      Q(8) => regD_n_88,
      Q(7) => regD_n_89,
      Q(6) => regD_n_90,
      Q(5) => regD_n_91,
      Q(4) => regD_n_92,
      Q(3) => regD_n_93,
      Q(2) => regD_n_94,
      Q(1) => regD_n_95,
      Q(0) => regD_n_96,
      clk => clk,
      \controls__21\(0) => \c/md/controls__21\(6),
      \q[31]_i_3\(1 downto 0) => RdE(1 downto 0),
      \q_reg[5]_0\ => regE_n_208,
      \q_reg[5]_1\ => regE_n_172,
      \q_reg[5]_2\ => regE_n_171,
      \q_reg[66]_0\(1 downto 0) => ImmSrcD(2 downto 1),
      \q_reg[66]_1\ => regD_n_127,
      \q_reg[66]_2\ => regD_n_128,
      \q_reg[68]_0\ => regD_n_132,
      \q_reg[70]_0\ => regD_n_3,
      \q_reg[70]_1\ => regD_n_131,
      \q_reg[77]_0\ => regD_n_129,
      \q_reg[78]_0\ => regD_n_130,
      \q_reg[79]_0\ => regD_n_116,
      \q_reg[84]_0\ => regD_n_117,
      \q_reg[84]_1\ => regD_n_120,
      \q_reg[85]_0\ => regD_n_121,
      \q_reg[86]_0\ => regD_n_122,
      \q_reg[87]_0\ => regD_n_123,
      \q_reg[88]_0\ => regD_n_124,
      \q_reg[94]_0\(18 downto 0) => p_0_in(67 downto 49),
      \q_reg[95]_0\ => regD_n_125,
      \q_reg[95]_1\(92 downto 62) => p_0_in_0(95 downto 65),
      \q_reg[95]_1\(61 downto 0) => p_0_in_0(63 downto 2),
      \rd11__3\ => \rd11__3\,
      \rd21__3\ => \rd21__3\,
      reset => reset
    );
regE: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc__parameterized1\
     port map (
      ALUOpD(0) => \c/ALUOpD\(1),
      BranchTargetE(31 downto 0) => BranchTargetE(31 downto 0),
      CO(0) => ltuE,
      D(124) => \^lte\,
      D(123 downto 104) => ALUResultE(19 downto 0),
      D(103 downto 72) => WriteDataE(31 downto 0),
      D(71 downto 67) => RdE(4 downto 0),
      D(66 downto 37) => PCPlus4E(31 downto 2),
      D(36 downto 35) => PCE(1 downto 0),
      D(34 downto 3) => UTypeE(31 downto 0),
      D(2) => regE_n_122,
      D(1) => regE_n_123,
      D(0) => \^q_reg[0]\,
      DI(3 downto 0) => \^q_reg[178]\(3 downto 0),
      E(0) => regE_n_173,
      InstrF(30 downto 0) => InstrF(30 downto 0),
      O(0) => \^o\(0),
      PCPlus4F(28 downto 0) => PCPlus4F(31 downto 3),
      PCReadyM => PCReadyM,
      Q(32 downto 31) => Rs1E(3 downto 2),
      Q(30 downto 0) => ImmExtE(30 downto 0),
      ResultW(31 downto 0) => ResultW(31 downto 0),
      S(3) => regE_n_422,
      S(2) => regE_n_423,
      S(1) => regE_n_424,
      S(0) => regE_n_425,
      SrcAE(19 downto 0) => SrcAE(19 downto 0),
      clk => clk,
      \controls__21\(0) => \c/md/controls__21\(6),
      data6(30 downto 0) => data6(30 downto 0),
      data8(20) => data8(31),
      data8(19 downto 0) => data8(19 downto 0),
      \i__carry_i_15_0\(3) => regE_n_498,
      \i__carry_i_15_0\(2) => regE_n_499,
      \i__carry_i_15_0\(1) => regE_n_500,
      \i__carry_i_15_0\(0) => regE_n_501,
      \i__carry_i_15_1\(3) => regE_n_502,
      \i__carry_i_15_1\(2) => regE_n_503,
      \i__carry_i_15_1\(1) => regE_n_504,
      \i__carry_i_15_1\(0) => regE_n_505,
      \q_reg[0]_0\ => regE_n_208,
      \q_reg[0]_1\(92 downto 62) => p_0_in_0(95 downto 65),
      \q_reg[0]_1\(61 downto 0) => p_0_in_0(63 downto 2),
      \q_reg[0]_2\ => regD_n_132,
      \q_reg[103]_0\(36 downto 5) => \^q_reg[135]\(39 downto 8),
      \q_reg[103]_0\(4 downto 0) => RdM(4 downto 0),
      \q_reg[104]_0\ => \q_reg[104]\,
      \q_reg[10]_0\ => regE_n_172,
      \q_reg[10]_1\ => regD_n_128,
      \q_reg[123]_0\ => \q_reg[123]\,
      \q_reg[123]_1\ => \q_reg[123]_0\,
      \q_reg[12]_0\ => regE_n_171,
      \q_reg[133]_0\ => \q_reg[133]\,
      \q_reg[135]_0\ => \q_reg[135]_0\,
      \q_reg[135]_1\ => \q_reg[135]_1\,
      \q_reg[14]_0\ => regD_n_127,
      \q_reg[175]_0\(3 downto 0) => \^q_reg[178]\(7 downto 4),
      \q_reg[178]_0\(2 downto 0) => \^q_reg[178]\(10 downto 8),
      \q_reg[179]_0\ => \q_reg[179]\(0),
      \q_reg[179]_1\(3) => regE_n_373,
      \q_reg[179]_1\(2) => regE_n_374,
      \q_reg[179]_1\(1) => regE_n_375,
      \q_reg[179]_1\(0) => regE_n_376,
      \q_reg[179]_2\(3) => regE_n_418,
      \q_reg[179]_2\(2) => regE_n_419,
      \q_reg[179]_2\(1) => regE_n_420,
      \q_reg[179]_2\(0) => regE_n_421,
      \q_reg[179]_3\ => \q_reg[179]_0\,
      \q_reg[2]_0\ => \q_reg[2]\,
      \q_reg[30]_0\(10 downto 0) => \q_reg[134]\(10 downto 0),
      \q_reg[37]_0\ => \q_reg[68]\(0),
      \q_reg[37]_1\(3) => regE_n_478,
      \q_reg[37]_1\(2) => regE_n_479,
      \q_reg[37]_1\(1) => regE_n_480,
      \q_reg[37]_1\(0) => regE_n_481,
      \q_reg[37]_2\(3) => regE_n_482,
      \q_reg[37]_2\(2) => regE_n_483,
      \q_reg[37]_2\(1) => regE_n_484,
      \q_reg[37]_2\(0) => regE_n_485,
      \q_reg[37]_3\(3) => regE_n_486,
      \q_reg[37]_3\(2) => regE_n_487,
      \q_reg[37]_3\(1) => regE_n_488,
      \q_reg[37]_3\(0) => regE_n_489,
      \q_reg[37]_4\(3) => regE_n_490,
      \q_reg[37]_4\(2) => regE_n_491,
      \q_reg[37]_4\(1) => regE_n_492,
      \q_reg[37]_4\(0) => regE_n_493,
      \q_reg[37]_5\(3) => regE_n_494,
      \q_reg[37]_5\(2) => regE_n_495,
      \q_reg[37]_5\(1) => regE_n_496,
      \q_reg[37]_5\(0) => regE_n_497,
      \q_reg[37]_6\(1 downto 0) => ImmSrcD(2 downto 1),
      \q_reg[37]_7\ => regD_n_120,
      \q_reg[38]_0\ => regD_n_121,
      \q_reg[39]_0\ => regD_n_122,
      \q_reg[3]_0\(31 downto 0) => PCNextF(31 downto 0),
      \q_reg[40]_0\ => regD_n_123,
      \q_reg[41]_0\ => regD_n_124,
      \q_reg[43]_0\(3) => regE_n_368,
      \q_reg[43]_0\(2) => regE_n_369,
      \q_reg[43]_0\(1) => regE_n_370,
      \q_reg[43]_0\(0) => regE_n_371,
      \q_reg[44]_0\(3) => regE_n_426,
      \q_reg[44]_0\(2) => regE_n_427,
      \q_reg[44]_0\(1) => regE_n_428,
      \q_reg[44]_0\(0) => regE_n_429,
      \q_reg[44]_1\(3) => regE_n_506,
      \q_reg[44]_1\(2) => regE_n_507,
      \q_reg[44]_1\(1) => regE_n_508,
      \q_reg[44]_1\(0) => regE_n_509,
      \q_reg[48]_0\(3) => regE_n_430,
      \q_reg[48]_0\(2) => regE_n_431,
      \q_reg[48]_0\(1) => regE_n_432,
      \q_reg[48]_0\(0) => regE_n_433,
      \q_reg[48]_1\ => regD_n_125,
      \q_reg[4]_0\ => regD_n_131,
      \q_reg[4]_1\(7 downto 0) => \q_reg[4]\(7 downto 0),
      \q_reg[4]_2\ => regD_n_116,
      \q_reg[4]_3\ => regD_n_117,
      \q_reg[51]_0\(3) => regE_n_394,
      \q_reg[51]_0\(2) => regE_n_395,
      \q_reg[51]_0\(1) => regE_n_396,
      \q_reg[51]_0\(0) => regE_n_397,
      \q_reg[52]_0\(3) => regE_n_434,
      \q_reg[52]_0\(2) => regE_n_435,
      \q_reg[52]_0\(1) => regE_n_436,
      \q_reg[52]_0\(0) => regE_n_437,
      \q_reg[52]_1\(3) => regE_n_510,
      \q_reg[52]_1\(2) => regE_n_511,
      \q_reg[52]_1\(1) => regE_n_512,
      \q_reg[52]_1\(0) => regE_n_513,
      \q_reg[56]_0\(3) => regE_n_438,
      \q_reg[56]_0\(2) => regE_n_439,
      \q_reg[56]_0\(1) => regE_n_440,
      \q_reg[56]_0\(0) => regE_n_441,
      \q_reg[57]_0\ => \q_reg[68]\(1),
      \q_reg[58]_0\ => \q_reg[68]\(2),
      \q_reg[59]_0\(3) => regE_n_398,
      \q_reg[59]_0\(2) => regE_n_399,
      \q_reg[59]_0\(1) => regE_n_400,
      \q_reg[59]_0\(0) => regE_n_401,
      \q_reg[59]_1\ => \q_reg[68]\(3),
      \q_reg[5]\ => \q_reg[5]\,
      \q_reg[5]_0\ => \q_reg[5]_0\,
      \q_reg[5]_1\ => \q_reg[5]_1\,
      \q_reg[5]_10\(3) => regE_n_382,
      \q_reg[5]_10\(2) => regE_n_383,
      \q_reg[5]_10\(1) => regE_n_384,
      \q_reg[5]_10\(0) => regE_n_385,
      \q_reg[5]_11\(3) => regE_n_450,
      \q_reg[5]_11\(2) => regE_n_451,
      \q_reg[5]_11\(1) => regE_n_452,
      \q_reg[5]_11\(0) => regE_n_453,
      \q_reg[5]_12\(3) => regE_n_454,
      \q_reg[5]_12\(2) => regE_n_455,
      \q_reg[5]_12\(1) => regE_n_456,
      \q_reg[5]_12\(0) => regE_n_457,
      \q_reg[5]_13\(3) => regE_n_458,
      \q_reg[5]_13\(2) => regE_n_459,
      \q_reg[5]_13\(1) => regE_n_460,
      \q_reg[5]_13\(0) => regE_n_461,
      \q_reg[5]_14\(3) => regE_n_462,
      \q_reg[5]_14\(2) => regE_n_463,
      \q_reg[5]_14\(1) => regE_n_464,
      \q_reg[5]_14\(0) => regE_n_465,
      \q_reg[5]_15\(3) => regE_n_466,
      \q_reg[5]_15\(2) => regE_n_467,
      \q_reg[5]_15\(1) => regE_n_468,
      \q_reg[5]_15\(0) => regE_n_469,
      \q_reg[5]_16\(3) => regE_n_470,
      \q_reg[5]_16\(2) => regE_n_471,
      \q_reg[5]_16\(1) => regE_n_472,
      \q_reg[5]_16\(0) => regE_n_473,
      \q_reg[5]_17\(3) => regE_n_474,
      \q_reg[5]_17\(2) => regE_n_475,
      \q_reg[5]_17\(1) => regE_n_476,
      \q_reg[5]_17\(0) => regE_n_477,
      \q_reg[5]_2\ => \q_reg[5]_2\,
      \q_reg[5]_3\ => \q_reg[5]_3\,
      \q_reg[5]_4\ => \q_reg[5]_4\,
      \q_reg[5]_5\ => \q_reg[5]_5\,
      \q_reg[5]_6\ => \q_reg[5]_6\,
      \q_reg[5]_7\ => \q_reg[5]_7\,
      \q_reg[5]_8\ => \q_reg[5]_8\,
      \q_reg[5]_9\ => \q_reg[5]_9\,
      \q_reg[60]_0\ => \q_reg[68]\(4),
      \q_reg[60]_1\(3) => regE_n_442,
      \q_reg[60]_1\(2) => regE_n_443,
      \q_reg[60]_1\(1) => regE_n_444,
      \q_reg[60]_1\(0) => regE_n_445,
      \q_reg[60]_2\(3) => regE_n_514,
      \q_reg[60]_2\(2) => regE_n_515,
      \q_reg[60]_2\(1) => regE_n_516,
      \q_reg[60]_2\(0) => regE_n_517,
      \q_reg[61]_0\ => \q_reg[68]\(5),
      \q_reg[62]_0\ => \q_reg[68]\(6),
      \q_reg[63]_0\ => \q_reg[68]\(7),
      \q_reg[63]_1\(31 downto 0) => \^q\(31 downto 0),
      \q_reg[64]_0\ => \q_reg[68]\(8),
      \q_reg[64]_1\(3) => regE_n_446,
      \q_reg[64]_1\(2) => regE_n_447,
      \q_reg[64]_1\(1) => regE_n_448,
      \q_reg[64]_1\(0) => regE_n_449,
      \q_reg[65]_0\(8 downto 7) => D(11 downto 10),
      \q_reg[65]_0\(6 downto 2) => D(8 downto 4),
      \q_reg[65]_0\(1 downto 0) => D(1 downto 0),
      \q_reg[65]_1\ => \q_reg[68]\(9),
      \q_reg[66]_0\ => \q_reg[68]\(10),
      \q_reg[67]_0\ => \q_reg[68]\(11),
      \q_reg[67]_1\(3) => regE_n_378,
      \q_reg[67]_1\(2) => regE_n_379,
      \q_reg[67]_1\(1) => regE_n_380,
      \q_reg[67]_1\(0) => regE_n_381,
      \q_reg[67]_2\(18 downto 0) => p_0_in(67 downto 49),
      \q_reg[68]_0\(3) => regE_n_125,
      \q_reg[68]_0\(2) => regE_n_126,
      \q_reg[68]_0\(1) => regE_n_127,
      \q_reg[68]_0\(0) => regE_n_128,
      \q_reg[68]_1\ => \q_reg[68]\(12),
      \q_reg[68]_2\(89) => regD_n_7,
      \q_reg[68]_2\(88) => funct7b5D,
      \q_reg[68]_2\(87) => regD_n_9,
      \q_reg[68]_2\(86) => regD_n_10,
      \q_reg[68]_2\(85) => regD_n_11,
      \q_reg[68]_2\(84) => regD_n_12,
      \q_reg[68]_2\(83) => regD_n_13,
      \q_reg[68]_2\(82 downto 78) => Rs2D(4 downto 0),
      \q_reg[68]_2\(77 downto 73) => Rs1D(4 downto 0),
      \q_reg[68]_2\(72 downto 70) => funct3D(2 downto 0),
      \q_reg[68]_2\(69 downto 65) => RdD(4 downto 0),
      \q_reg[68]_2\(64) => opD(5),
      \q_reg[68]_2\(63 downto 62) => opD(2 downto 1),
      \q_reg[68]_2\(61 downto 30) => PCD(31 downto 0),
      \q_reg[68]_2\(29) => regD_n_67,
      \q_reg[68]_2\(28) => regD_n_68,
      \q_reg[68]_2\(27) => regD_n_69,
      \q_reg[68]_2\(26) => regD_n_70,
      \q_reg[68]_2\(25) => regD_n_71,
      \q_reg[68]_2\(24) => regD_n_72,
      \q_reg[68]_2\(23) => regD_n_73,
      \q_reg[68]_2\(22) => regD_n_74,
      \q_reg[68]_2\(21) => regD_n_75,
      \q_reg[68]_2\(20) => regD_n_76,
      \q_reg[68]_2\(19) => regD_n_77,
      \q_reg[68]_2\(18) => regD_n_78,
      \q_reg[68]_2\(17) => regD_n_79,
      \q_reg[68]_2\(16) => regD_n_80,
      \q_reg[68]_2\(15) => regD_n_81,
      \q_reg[68]_2\(14) => regD_n_82,
      \q_reg[68]_2\(13) => regD_n_83,
      \q_reg[68]_2\(12) => regD_n_84,
      \q_reg[68]_2\(11) => regD_n_85,
      \q_reg[68]_2\(10) => regD_n_86,
      \q_reg[68]_2\(9) => regD_n_87,
      \q_reg[68]_2\(8) => regD_n_88,
      \q_reg[68]_2\(7) => regD_n_89,
      \q_reg[68]_2\(6) => regD_n_90,
      \q_reg[68]_2\(5) => regD_n_91,
      \q_reg[68]_2\(4) => regD_n_92,
      \q_reg[68]_2\(3) => regD_n_93,
      \q_reg[68]_2\(2) => regD_n_94,
      \q_reg[68]_2\(1) => regD_n_95,
      \q_reg[68]_2\(0) => regD_n_96,
      \q_reg[6]\ => \q_reg[6]\,
      \q_reg[6]_0\ => \q_reg[6]_0\,
      \q_reg[6]_1\ => \q_reg[6]_1\,
      \q_reg[6]_10\ => \q_reg[6]_10\,
      \q_reg[6]_2\ => \q_reg[6]_2\,
      \q_reg[6]_3\ => \q_reg[6]_3\,
      \q_reg[6]_4\ => \q_reg[6]_4\,
      \q_reg[6]_5\ => \q_reg[6]_5\,
      \q_reg[6]_6\ => \q_reg[6]_6\,
      \q_reg[6]_7\ => \q_reg[6]_7\,
      \q_reg[6]_8\ => \q_reg[6]_8\,
      \q_reg[6]_9\ => \q_reg[6]_9\,
      \q_reg[76]_0\(0) => \q_reg[147]\(2),
      \q_reg[76]_1\(0) => \q_reg[76]\(0),
      \q_reg[7]_0\ => regD_n_130,
      \q_reg[8]_0\ => regD_n_129,
      \q_reg[95]_0\ => \q_reg[95]\,
      \q_reg[9]_0\ => regD_n_3,
      rd10(31 downto 0) => rd10(31 downto 0),
      \rd11__3\ => \rd11__3\,
      rd20(31 downto 0) => rd20(31 downto 0),
      \rd21__3\ => \rd21__3\,
      reset => reset,
      sum(30 downto 0) => sum(30 downto 0),
      \sum__0_carry_i_11_0\(4 downto 0) => RdW(4 downto 0),
      \sum__0_carry_i_4_0\ => regM_n_0,
      \sum__0_carry_i_4_1\ => regW_n_32,
      \v__7\ => \v__7\
    );
regM: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr__parameterized1\
     port map (
      D(135) => \^lte\,
      D(134 downto 124) => \q_reg[134]\(10 downto 0),
      D(123 downto 104) => ALUResultE(19 downto 0),
      D(103 downto 72) => WriteDataE(31 downto 0),
      D(71 downto 67) => RdE(4 downto 0),
      D(66 downto 37) => PCPlus4E(31 downto 2),
      D(36 downto 35) => PCE(1 downto 0),
      D(34 downto 3) => UTypeE(31 downto 0),
      D(2) => regE_n_122,
      D(1) => regE_n_123,
      D(0) => \^q_reg[0]\,
      PCReadyM => PCReadyM,
      Q(135 downto 104) => \^q_reg[135]\(39 downto 8),
      Q(103 downto 80) => WriteDataM1(31 downto 8),
      Q(79 downto 72) => \^q_reg[135]\(7 downto 0),
      Q(71 downto 67) => RdM(4 downto 0),
      Q(66) => regM_n_70,
      Q(65) => regM_n_71,
      Q(64) => regM_n_72,
      Q(63) => regM_n_73,
      Q(62) => regM_n_74,
      Q(61) => regM_n_75,
      Q(60) => regM_n_76,
      Q(59) => regM_n_77,
      Q(58) => regM_n_78,
      Q(57) => regM_n_79,
      Q(56) => regM_n_80,
      Q(55) => regM_n_81,
      Q(54) => regM_n_82,
      Q(53) => regM_n_83,
      Q(52) => regM_n_84,
      Q(51) => regM_n_85,
      Q(50) => regM_n_86,
      Q(49) => regM_n_87,
      Q(48) => regM_n_88,
      Q(47) => regM_n_89,
      Q(46) => regM_n_90,
      Q(45) => regM_n_91,
      Q(44) => regM_n_92,
      Q(43) => regM_n_93,
      Q(42) => regM_n_94,
      Q(41) => regM_n_95,
      Q(40) => regM_n_96,
      Q(39) => regM_n_97,
      Q(38) => regM_n_98,
      Q(37) => regM_n_99,
      Q(36) => regM_n_100,
      Q(35) => regM_n_101,
      Q(34) => regM_n_102,
      Q(33) => regM_n_103,
      Q(32) => regM_n_104,
      Q(31) => regM_n_105,
      Q(30) => regM_n_106,
      Q(29) => regM_n_107,
      Q(28) => regM_n_108,
      Q(27) => regM_n_109,
      Q(26) => regM_n_110,
      Q(25) => regM_n_111,
      Q(24) => regM_n_112,
      Q(23) => regM_n_113,
      Q(22) => regM_n_114,
      Q(21) => regM_n_115,
      Q(20) => regM_n_116,
      Q(19) => regM_n_117,
      Q(18) => regM_n_118,
      Q(17) => regM_n_119,
      Q(16) => regM_n_120,
      Q(15) => regM_n_121,
      Q(14) => regM_n_122,
      Q(13) => regM_n_123,
      Q(12) => regM_n_124,
      Q(11) => regM_n_125,
      Q(10) => regM_n_126,
      Q(9) => regM_n_127,
      Q(8) => regM_n_128,
      Q(7) => regM_n_129,
      Q(6) => regM_n_130,
      Q(5) => regM_n_131,
      Q(4) => regM_n_132,
      Q(3) => regM_n_133,
      Q(2) => regM_n_134,
      Q(1) => regM_n_135,
      Q(0) => regM_n_136,
      clk => clk,
      \q_reg[69]_0\ => regM_n_0,
      reset => reset,
      \sum__0_carry_i_13\(1 downto 0) => Rs1E(3 downto 2)
    );
regW: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized0\
     port map (
      D(132 downto 101) => \^q_reg[135]\(39 downto 8),
      D(100 downto 69) => ReadDataM(31 downto 0),
      D(68 downto 64) => RdM(4 downto 0),
      D(63) => regM_n_70,
      D(62) => regM_n_71,
      D(61) => regM_n_72,
      D(60) => regM_n_73,
      D(59) => regM_n_74,
      D(58) => regM_n_75,
      D(57) => regM_n_76,
      D(56) => regM_n_77,
      D(55) => regM_n_78,
      D(54) => regM_n_79,
      D(53) => regM_n_80,
      D(52) => regM_n_81,
      D(51) => regM_n_82,
      D(50) => regM_n_83,
      D(49) => regM_n_84,
      D(48) => regM_n_85,
      D(47) => regM_n_86,
      D(46) => regM_n_87,
      D(45) => regM_n_88,
      D(44) => regM_n_89,
      D(43) => regM_n_90,
      D(42) => regM_n_91,
      D(41) => regM_n_92,
      D(40) => regM_n_93,
      D(39) => regM_n_94,
      D(38) => regM_n_95,
      D(37) => regM_n_96,
      D(36) => regM_n_97,
      D(35) => regM_n_98,
      D(34) => regM_n_99,
      D(33) => regM_n_100,
      D(32) => regM_n_101,
      D(31) => regM_n_102,
      D(30) => regM_n_103,
      D(29) => regM_n_104,
      D(28) => regM_n_105,
      D(27) => regM_n_106,
      D(26) => regM_n_107,
      D(25) => regM_n_108,
      D(24) => regM_n_109,
      D(23) => regM_n_110,
      D(22) => regM_n_111,
      D(21) => regM_n_112,
      D(20) => regM_n_113,
      D(19) => regM_n_114,
      D(18) => regM_n_115,
      D(17) => regM_n_116,
      D(16) => regM_n_117,
      D(15) => regM_n_118,
      D(14) => regM_n_119,
      D(13) => regM_n_120,
      D(12) => regM_n_121,
      D(11) => regM_n_122,
      D(10) => regM_n_123,
      D(9) => regM_n_124,
      D(8) => regM_n_125,
      D(7) => regM_n_126,
      D(6) => regM_n_127,
      D(5) => regM_n_128,
      D(4) => regM_n_129,
      D(3) => regM_n_130,
      D(2) => regM_n_131,
      D(1) => regM_n_132,
      D(0) => regM_n_133,
      Q(4 downto 0) => RdW(4 downto 0),
      ResultW(31 downto 0) => ResultW(31 downto 0),
      clk => clk,
      \q_reg[102]_0\(1 downto 0) => \q_reg[147]\(1 downto 0),
      \q_reg[69]_0\ => regW_n_32,
      reset => reset,
      \sum__0_carry_i_11\(1 downto 0) => Rs1E(3 downto 2)
    );
rf: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile
     port map (
      Q(4 downto 0) => RdW(4 downto 0),
      ResultW(31 downto 0) => ResultW(31 downto 0),
      clk => clk,
      \q_reg[141]\(9 downto 5) => Rs2D(4 downto 0),
      \q_reg[141]\(4 downto 0) => Rs1D(4 downto 0),
      \q_reg[147]\(0) => \q_reg[147]\(2),
      rd10(31 downto 0) => rd10(31 downto 0),
      rd20(31 downto 0) => rd20(31 downto 0)
    );
stlMW: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_storeloadcase
     port map (
      Q(27 downto 4) => WriteDataM1(31 downto 8),
      Q(3) => \^q_reg[135]\(7),
      Q(2) => regM_n_134,
      Q(1) => regM_n_135,
      Q(0) => regM_n_136,
      WriteDataM(23 downto 0) => WriteDataM(23 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscv is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    PCF : out STD_LOGIC_VECTOR ( 31 downto 0 );
    InstrF : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemWriteM : out STD_LOGIC;
    ALUResultM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemStrobeM : out STD_LOGIC;
    PCReadyM : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscv;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscv is
  signal ALUControlE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ALUResultE : STD_LOGIC_VECTOR ( 30 downto 20 );
  signal ALUSrcE : STD_LOGIC;
  signal JumpE : STD_LOGIC;
  signal RegWriteM : STD_LOGIC;
  signal RegWriteW : STD_LOGIC;
  signal ResultSrcEb0 : STD_LOGIC;
  signal ResultSrcW : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SrcAE : STD_LOGIC_VECTOR ( 30 downto 20 );
  signal \SrcAE__0\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal SrcBE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \alu/data8\ : STD_LOGIC_VECTOR ( 30 downto 20 );
  signal \alu/p_3_in\ : STD_LOGIC;
  signal \alu/v__7\ : STD_LOGIC;
  signal c_n_0 : STD_LOGIC;
  signal c_n_12 : STD_LOGIC;
  signal c_n_13 : STD_LOGIC;
  signal c_n_14 : STD_LOGIC;
  signal c_n_18 : STD_LOGIC;
  signal c_n_24 : STD_LOGIC;
  signal c_n_25 : STD_LOGIC;
  signal c_n_26 : STD_LOGIC;
  signal c_n_27 : STD_LOGIC;
  signal c_n_28 : STD_LOGIC;
  signal c_n_29 : STD_LOGIC;
  signal dp_n_135 : STD_LOGIC;
  signal dp_n_136 : STD_LOGIC;
  signal dp_n_137 : STD_LOGIC;
  signal dp_n_138 : STD_LOGIC;
  signal dp_n_139 : STD_LOGIC;
  signal dp_n_140 : STD_LOGIC;
  signal dp_n_141 : STD_LOGIC;
  signal dp_n_142 : STD_LOGIC;
  signal dp_n_143 : STD_LOGIC;
  signal dp_n_144 : STD_LOGIC;
  signal dp_n_145 : STD_LOGIC;
  signal dp_n_55 : STD_LOGIC;
  signal dp_n_83 : STD_LOGIC;
  signal dp_n_84 : STD_LOGIC;
  signal dp_n_85 : STD_LOGIC;
  signal dp_n_86 : STD_LOGIC;
  signal dp_n_87 : STD_LOGIC;
  signal dp_n_88 : STD_LOGIC;
  signal dp_n_89 : STD_LOGIC;
  signal dp_n_90 : STD_LOGIC;
  signal dp_n_91 : STD_LOGIC;
  signal dp_n_92 : STD_LOGIC;
  signal dp_n_93 : STD_LOGIC;
  signal dp_n_94 : STD_LOGIC;
  signal ltE : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 14 downto 0 );
begin
c: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller
     port map (
      ALUResultE(10 downto 0) => ALUResultE(30 downto 20),
      D(11 downto 1) => p_0_in(14 downto 4),
      D(0) => p_0_in(0),
      O(0) => \alu/p_3_in\,
      PCReadyM => PCReadyM,
      Q(7) => ResultSrcEb0,
      Q(6) => JumpE,
      Q(5) => c_n_18,
      Q(4 downto 1) => ALUControlE(3 downto 0),
      Q(0) => ALUSrcE,
      SrcAE(0) => \SrcAE__0\(31),
      SrcBE(12 downto 1) => SrcBE(31 downto 20),
      SrcBE(0) => SrcBE(0),
      clk => clk,
      data8(10 downto 0) => \alu/data8\(30 downto 20),
      ltE => ltE,
      \q[31]_i_15\ => c_n_14,
      \q[31]_i_5\ => dp_n_88,
      \q_reg[124]\ => dp_n_135,
      \q_reg[124]_0\ => dp_n_84,
      \q_reg[125]\ => dp_n_141,
      \q_reg[125]_0\ => dp_n_85,
      \q_reg[126]\ => dp_n_136,
      \q_reg[126]_0\ => dp_n_86,
      \q_reg[127]\ => dp_n_142,
      \q_reg[127]_0\ => dp_n_87,
      \q_reg[128]\ => dp_n_137,
      \q_reg[128]_0\ => dp_n_89,
      \q_reg[129]\ => dp_n_143,
      \q_reg[129]_0\ => dp_n_90,
      \q_reg[130]\ => dp_n_138,
      \q_reg[130]_0\ => dp_n_91,
      \q_reg[131]\ => dp_n_144,
      \q_reg[131]_0\ => dp_n_92,
      \q_reg[132]\ => dp_n_139,
      \q_reg[132]_0\ => dp_n_93,
      \q_reg[133]\ => dp_n_145,
      \q_reg[133]_0\ => dp_n_94,
      \q_reg[134]\ => dp_n_140,
      \q_reg[134]_0\ => dp_n_83,
      \q_reg[134]_1\(10 downto 0) => SrcAE(30 downto 20),
      \q_reg[179]\ => dp_n_55,
      \q_reg[2]\(2) => RegWriteW,
      \q_reg[2]\(1 downto 0) => ResultSrcW(1 downto 0),
      \q_reg[4]\(2) => RegWriteM,
      \q_reg[4]\(1) => MemWriteM,
      \q_reg[4]\(0) => MemStrobeM,
      \q_reg[5]\ => c_n_29,
      \q_reg[6]\ => c_n_0,
      \q_reg[6]_0\ => c_n_13,
      \q_reg[6]_1\ => c_n_25,
      \q_reg[6]_2\ => c_n_27,
      \q_reg[7]\ => c_n_24,
      \q_reg[8]\ => c_n_12,
      \q_reg[8]_0\ => c_n_26,
      \q_reg[9]\ => c_n_28,
      reset => reset,
      \v__7\ => \alu/v__7\
    );
dp: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath
     port map (
      D(11 downto 1) => p_0_in(14 downto 4),
      D(0) => p_0_in(0),
      InstrF(30 downto 0) => InstrF(31 downto 1),
      O(0) => \alu/p_3_in\,
      PCReadyM => PCReadyM,
      Q(31 downto 0) => PCF(31 downto 0),
      ReadDataM(31 downto 0) => ReadDataM(31 downto 0),
      WriteDataM(23 downto 0) => WriteDataM(31 downto 8),
      clk => clk,
      \i__carry__6_i_7\(10 downto 0) => \alu/data8\(30 downto 20),
      ltE => ltE,
      \q[104]_i_3\ => c_n_29,
      \q_reg[0]\ => dp_n_55,
      \q_reg[104]\ => c_n_27,
      \q_reg[123]\ => c_n_12,
      \q_reg[123]_0\ => c_n_26,
      \q_reg[133]\ => c_n_24,
      \q_reg[134]\(10 downto 0) => ALUResultE(30 downto 20),
      \q_reg[135]\(39 downto 8) => ALUResultM(31 downto 0),
      \q_reg[135]\(7 downto 0) => WriteDataM(7 downto 0),
      \q_reg[135]_0\ => c_n_25,
      \q_reg[135]_1\ => c_n_13,
      \q_reg[147]\(2) => RegWriteW,
      \q_reg[147]\(1 downto 0) => ResultSrcW(1 downto 0),
      \q_reg[178]\(10 downto 0) => SrcAE(30 downto 20),
      \q_reg[179]\(0) => \SrcAE__0\(31),
      \q_reg[179]_0\ => c_n_28,
      \q_reg[2]\ => c_n_0,
      \q_reg[4]\(7) => ResultSrcEb0,
      \q_reg[4]\(6) => JumpE,
      \q_reg[4]\(5) => c_n_18,
      \q_reg[4]\(4 downto 1) => ALUControlE(3 downto 0),
      \q_reg[4]\(0) => ALUSrcE,
      \q_reg[5]\ => dp_n_83,
      \q_reg[5]_0\ => dp_n_84,
      \q_reg[5]_1\ => dp_n_85,
      \q_reg[5]_2\ => dp_n_86,
      \q_reg[5]_3\ => dp_n_87,
      \q_reg[5]_4\ => dp_n_89,
      \q_reg[5]_5\ => dp_n_90,
      \q_reg[5]_6\ => dp_n_91,
      \q_reg[5]_7\ => dp_n_92,
      \q_reg[5]_8\ => dp_n_93,
      \q_reg[5]_9\ => dp_n_94,
      \q_reg[68]\(12 downto 1) => SrcBE(31 downto 20),
      \q_reg[68]\(0) => SrcBE(0),
      \q_reg[6]\ => dp_n_88,
      \q_reg[6]_0\ => dp_n_135,
      \q_reg[6]_1\ => dp_n_136,
      \q_reg[6]_10\ => dp_n_145,
      \q_reg[6]_2\ => dp_n_137,
      \q_reg[6]_3\ => dp_n_138,
      \q_reg[6]_4\ => dp_n_139,
      \q_reg[6]_5\ => dp_n_140,
      \q_reg[6]_6\ => dp_n_141,
      \q_reg[6]_7\ => dp_n_142,
      \q_reg[6]_8\ => dp_n_143,
      \q_reg[6]_9\ => dp_n_144,
      \q_reg[76]\(0) => RegWriteM,
      \q_reg[95]\ => c_n_14,
      reset => reset,
      \v__7\ => \alu/v__7\
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
  signal NLW_imem_rd_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute KEEP_HIERARCHY of imem : label is "soft";
  attribute KEEP_HIERARCHY of memcontrol : label is "soft";
  attribute KEEP_HIERARCHY of riscv : label is "soft";
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
      I0 => '1',
      O => Instr(1)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => Instr(0)
    );
imem: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem
     port map (
      a(31 downto 6) => B"00000000000000000000000000",
      a(5 downto 2) => PC(5 downto 2),
      a(1 downto 0) => B"00",
      rd(31 downto 2) => Instr(31 downto 2),
      rd(1 downto 0) => NLW_imem_rd_UNCONNECTED(1 downto 0)
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
riscv: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscv
     port map (
      ALUResultM(31 downto 0) => addressM(31 downto 0),
      InstrF(31 downto 1) => Instr(31 downto 1),
      InstrF(0) => '0',
      MemStrobeM => MStrobe,
      MemWriteM => MemWrite,
      PCF(31 downto 0) => PC(31 downto 0),
      PCReadyM => PCReady,
      ReadDataM(31 downto 0) => readDataM(31 downto 0),
      WriteDataM(31 downto 0) => writeDataM(31 downto 0),
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
