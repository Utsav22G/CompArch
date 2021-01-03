`include "and.v"
`timescale 1ns / 1ps

// module NAND2_test;
//
//       reg A, B;
//       wire Q;
//
//       NAND2 DUT0(.Q(Q), .A(A), .B(B)); // NAND2 is module name in and.v
//
//       initial begin
//               A = 0; B = 0;
//           #5  A = 0; B = 1;
//           #5  A = 1; B = 0;
//           #5  A = 1; B = 1;
//           #5;
//       end
//
//       initial begin
//                 $monitor ("%t | A = %b | B = %b | Q = %b", $time, A, B, Q);
//                 $dumpfile("dump.vcd");
//                 $dumpvars();
//
//       end
// endmodule

module AND2_test;

      reg A, B;
      wire Q, Qinv;

      AND2 DUT0(.Q(Q), .A(A), .B(B)); // NAND2 is module name in and.v

      initial begin
              A = 0; B = 0;
          #5  A = 0; B = 1;
          #5  A = 1; B = 0;
          #5  A = 1; B = 1;
          #5;
      end

      initial begin
                $monitor ("%t | A = %b | B = %b | Q = %b", $time, A, B, Q);
                $dumpfile("dump.vcd");
                $dumpvars();

      end
endmodule
