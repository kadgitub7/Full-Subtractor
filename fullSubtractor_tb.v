`timescale 1ns / 1ps

module fullSubtractor_tb();
    reg A,B,C;
    wire D,Bo;
    
    fullSubtractor uut(A,B,C,D,Bo);
    integer k;
    
    initial begin
        for(k = 0;k<8;k=k+1)begin
            #10 {A,B,C} = k;
            #10 $display("A = %b, B = %b, C = %b, D = %b, Bo = %b \n", A,B,C,D,Bo);
        end
    end
endmodule
