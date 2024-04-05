`timescale 1ns/100ps

// Describes the behavior of any mux 8-to-1
module mux_8_1(
  input i[7:0],
  input s[2:0],
  output reg out);
  
  always @(*) begin
    if (s[2] == 0 && s[1] == 0 && s[0] == 0) begin
      out = i[0];
    end else if (s[2] == 0 && s[1] == 0 && s[0] == 1) begin
      out = i[1];
    end else if (s[2] == 0 && s[1] == 1 && s[0] == 0) begin
      out = i[2];
    end else if (s[2] == 0 && s[1] == 1 && s[0] == 1) begin
      out = i[3];
    end else if (s[2] == 1 && s[1] == 0 && s[0] == 0) begin
      out = i[4];
    end else if (s[2] == 1 && s[1] == 0 && s[0] == 1) begin
      out = i[5];
    end else if (s[2] == 1 && s[1] == 1 && s[0] == 0) begin
      out = i[6];
    end else if (s[2] == 1 && s[1] == 1 && s[0] == 1) begin
      out = i[7]; 
    end
  end
endmodule
