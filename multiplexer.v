`timescale 1ns/1ps

module multiplexer(
    
    input [3:0] Ceo, You, Fred, Jill, 
    input[1:0] sel,
    input enable,
    output [3:0] dataOut

    );
    
    assign dataOut = enable ?
                (sel == 'b00 ? Ceo :
                 sel == 'b01 ? You :
                 sel == 'b10 ? Fred : Jill) : 0;
endmodule
