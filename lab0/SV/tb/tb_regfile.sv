module testbench ();

     logic clock;
     logic we3;
     logic [4:0] ra1, ra2, wa3;
     logic [31:0] rd1, rd2, wd3;

     regfile dut(clock, we3, ra1, ra2, wa3, wd3, rd1, rd2);
   
     initial begin
          clock = 1'b1;
          forever #5 clock = ~clock;
     end



     initial begin

          // These tests over the 5 tests in slack, but not in order and sometimes in parallel
          
          we3 = 0;
          ra1  = 5'd0;
          ra2  = 5'd5;
          wa3  = 5'd5;

          wd3 = 32'h12345678;

          #22
          
          ra1  = 5'd31;
          ra2  = 5'd30;
          wa3  = 5'd31;
          we3 = 1;

          #10

          wa3 = 5'd30;
          wd3 = 32'h87654321;

          @(posedge clock) ra1 = 5'd30;

          #2

          wd3 = 32'h89654321;

          #10

          wa3 = 5'b00000;
          ra2 = 5'b00000;

          #10

          wd3 = 32'h0;


          for (int j = 0; j < 32; j++) begin

               #10
               
               ra1 = j;
               ra2 = j;
               wa3 = j;

               
          end

     end




endmodule // benchtest


