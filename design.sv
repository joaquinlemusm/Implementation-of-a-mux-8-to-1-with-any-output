`timescale 1ns/100ps

module main(
  input A,B,C,D,
  output reg g_out,
  output reg h_out
);

  reg g_i[7:0];
  reg h_i[7:0];
  
  reg s[2:0];
  
  assign s[2] = A;
  assign s[1] = B;
  assign s[0] = C;
  
  assign g_i[0] = D;
  assign g_i[1] = D;
  assign g_i[2] = 1'b1;
  assign g_i[3] = ~D;
  assign g_i[4] = 1'b1;
  assign g_i[5] = 1'b0;
  assign g_i[6] = 1'b1;
  assign g_i[7] = 1'b1;
  
  assign h_i[0] = 1'b1;
  assign h_i[1] = D;
  assign h_i[2] = 1'b0;
  assign h_i[3] = 1'b0;
  assign h_i[4] = D;
  assign h_i[5] = 1'b1;
  assign h_i[6] = ~D;
  assign h_i[7] = ~D;
  
  mux_8_1 g(g_i,s,g_out);
  mux_8_1 h(h_i,s,h_out);

endmodule
