// wa3 is destination register
// ra* is source registers
// we3 is our write enable
// clk is clock
// wd3 is our data por for writes
// rd* is our registers we read


// Question 1: should we be able to write and read at the same time?
// Answer: Yes, the regfile should be onstantly outputing a two registers
// Observation 1: The change of a register output from regfile should happen after the rising edge of the clock.
// Cont Observation 1: Could just set this to falling edge of clock maybe, have to check.

module regfile (input logic         clk, 
		input logic 	    we3, 
		input logic [4:0]   ra1, ra2, wa3, 
		input logic [31:0]  wd3, 
		output logic [31:0] rd1, rd2);
   // end definition
   
   logic [31:0] rf[31:0];
   
   // three ported register file
   // read two ports combinationally
   // write third port on rising edge of clock
   // register 0 hardwired to 0

   always_ff @(posedge clk)
      if ((we3)) rf[wa3] <= wd3;




   assign rd1 = (!(|ra1)) ? 32'b0 : rf[ra1];
   assign rd2 = (!(|ra2)) ? 32'b0 : rf[ra2];
   
   
endmodule // regfile
