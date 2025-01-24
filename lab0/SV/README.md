# ecen4243S25
Quentin Koeninger and Railey Prentice Lab0

fsm.sv and regfile.sv can be found in src folder

tb_fsm.sv, tb_regfile.sv, fsm.do, and regfile.do can be found in the tb folder

fsm.sv acts as a simple state machine depicitng the smiling snail problem. It is tested on one 8 bit string. The test can be run by running the line vsim -do fsm.do in the terminal while in the folder tb.

regfile.sv acts as a register file with 32 32 bit registers. It has two read ports and one write port, as well as a write enable. It tests all 5 cases laid out in slack, along with resetting the registers all to 0, though the tests are not performed in the sequence laid out on slack. Our test can be run by running the line vsim -do regfile.do in the terminal while in the folder tb.
