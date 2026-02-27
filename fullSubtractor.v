`timescale 1ns / 1ps

module fullSubtractor(
    input A,
    input B,
    input C,
    output D,
    output Bo
    );
    
    assign D = A^B^C;
    assign Bo = ~A&B | ~A&C | B&C;
endmodule
