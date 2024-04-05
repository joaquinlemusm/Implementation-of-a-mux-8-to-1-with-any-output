`timescale 1ns/100ps

module mux_8_1tb();
  reg A,B,C,D;
  wire g_out;
  wire h_out;
  
  main rip(A,B,C,D,g_out,h_out);
 
initial
begin
	$dumpfile("out.vcd");
    $dumpvars(1, mux_8_1tb);
     		 A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
	#25      A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1;
	#25      A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0;
	#25      A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1;
	#25      A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0;
	#25      A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1;
	#25      A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0;
	#25      A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1;
	#25      A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0;
	#25      A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1;
	#25      A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b0;
	#25      A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b1;
	#25      A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b0;
	#25      A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b1;
	#25      A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b0;
	#25      A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1;
  	#25;
end
initial
	#500 $finish;
endmodule
  
      
    
