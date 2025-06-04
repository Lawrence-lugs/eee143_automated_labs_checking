`timescale 1ns/1ns

module tb_main();

reg CLK, RST;
reg [1:0] stickX, stickY;
wire [2:0] pixelX, pixelY;

xyTracker u_golden(
    .CLK(CLK),
    .RST(RST),
    .stickX(stickX),
    .stickY(stickY),
    .pixelX(pixelX),
    .pixelY(pixelY)
);

always #5 CLK = ~CLK; // 100 MHz clock

reg [1:0] stickXtest [0:19];
reg [1:0] stickYtest [0:19];

localparam Z = 2'b10;
localparam P = 2'b11;
localparam M = 2'b01;

// Waveform generation
initial begin
    $dumpfile("tb_main.vcd");
    $dumpvars(0, tb_main);
end

task do_test();
    input reg [1:0] test_vectorX [0:19];
    input reg [1:0] test_vectorY [0:19];
    input reg [2:0] expected_pixelX;
    input reg [2:0] expected_pixelY;
    input integer points;
    integer kc;
    #5;
    RST = 1;
    #5;
    RST = 0; // Cycle reset
    for (kc = 0; kc < 20; kc++) begin
        stickX = test_vectorX[kc];
        stickY = test_vectorY[kc];
        #10; // Wait for the clock to process the key press
        stickX = Z; // Release the key
        stickY = Z; // Release the key
        #50; // Wait for a few clock cycles
        $display("Time: %0t, RST: %b, PixelX: %h, PixelY: %h",
                 $time, RST, pixelX, pixelY);
    end
    if ((pixelX == expected_pixelX) && (pixelY == expected_pixelY)) begin
        $display("Test Passed, pixelX: %b, pixelY: %b", pixelX, pixelY);
        $display("Score: %d", points);
        $finish;
    end else begin
        $display("Test Failed, pixelX: %b, pixelY: %b", pixelX, pixelY);
    end
endtask

initial begin

    $display("Starting simulation...");
    CLK = 0;
    RST = 0;

    $display("Full score test");
    stickXtest = {P, P, P, P, P, P, P, P, P, P, Z, Z, M, M, Z, Z, Z, M, M, M};
    stickYtest = {M, M, M, M, M, M, M, P, P, P, Z, Z, P, P, P, P, P, P, P, P};
    do_test(stickXtest,stickYtest, 3'b101,3'b100, 100);

    $display("Reversed XY test");
    stickXtest = {P, P, P, P, P, P, P, P, P, P, Z, Z, M, M, M, M, M, M, M, M};
    stickYtest = {P, P, P, P, P, P, P, P, P, P, Z, Z, M, M, M, M, M, M, M, M};
    do_test(stickXtest,stickYtest, 3'b010,3'b110, 80);

    $display("X test");
    stickXtest = {P, P, P, P, P, P, P, P, P, P, Z, Z, M, M, M, M, M, M, M, M};
    stickYtest = {Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z};
    do_test(stickXtest,stickYtest, 3'b010,3'b000, 50);

    $display("Y test");
    stickXtest = {Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z, Z};
    stickYtest = {P, P, P, P, P, P, P, P, P, P, Z, Z, M, M, M, M, M, M, M, M};
    do_test(stickXtest,stickYtest, 3'b000,3'b010, 50);

    // Note: please adjust the scores according to the number of flipflops as in the lab checking guide

    #100;

    $finish();
end

    
endmodule