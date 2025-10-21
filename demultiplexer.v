`timescale 1ns/1ps

module demultiplexer(
    input [3:0] dataIn,
    input [1:0] sel,
    input enable,
    output [3:0] lib, fire, school, shack
    );
    
    assign lib = enable ? (sel == 'b00 ? dataIn: 0) : 0;
    assign fire = enable ? (sel == 'b01 ? dataIn: 0) : 0;
    assign school = enable ? (sel == 'b10 ? dataIn: 0) : 0;
    assign shack = enable ? (sel == 'b11 ? dataIn: 0) : 0;
    
endmodule
