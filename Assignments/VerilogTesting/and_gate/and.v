module NAND2(output Y, input A, B);

  wire Yint;

  and(Yint, A, B);
  not(Y, Yint);

endmodule

module INV1(output Yinv, input Y);

    not(Yinv, Y);
endmodule

module AND2(output Q, input A, B);

    wire Qint;

    NAND2 #5 nandgate0(.Y(Qint), .A(A), .B(B));
    INV1  #5 inverter0(.Yinv(Q), .Y(Qint));
endmodule
