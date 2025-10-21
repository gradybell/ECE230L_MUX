`timescale 1ns/1ps

module top(
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
    );
    
    wire[3:0] data;
    
    multiplexer mux_inst(
        .Ceo(sw[3:0]),
        .You(sw[7:4]),
        .Fred(sw[11:8]),
        .Jill(sw[15:12]),
        .enable(btnC),
        .sel({btnU, btnL}),
        .dataOut(data)
    );
    
    demultiplexer demux_inst(
        .dataIn(data),
        .lib(led[3:0]),
        .fire(led[7:4]),
        .school(led[11:8]),
        .shack(led[15:12]),
        .enable(btnC),
        .sel({btnR, btnD})
    );
endmodule
