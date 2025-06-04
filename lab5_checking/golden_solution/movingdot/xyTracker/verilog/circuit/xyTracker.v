/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : xyTracker                                                    **
 **                                                                          **
 *****************************************************************************/

module xyTracker( CLK,
                  RST,
                  pixelX,
                  pixelY,
                  stickX,
                  stickY );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       CLK;
   input       RST;
   input [1:0] stickX;
   input [1:0] stickY;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [2:0] pixelX;
   output [2:0] pixelY;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [2:0] s_logisimBus0;
   wire [2:0] s_logisimBus10;
   wire [2:0] s_logisimBus11;
   wire [1:0] s_logisimBus15;
   wire [2:0] s_logisimBus3;
   wire [1:0] s_logisimBus5;
   wire [2:0] s_logisimBus7;
   wire [2:0] s_logisimBus8;
   wire       s_logisimNet1;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet16;
   wire       s_logisimNet17;
   wire       s_logisimNet2;
   wire       s_logisimNet4;
   wire       s_logisimNet6;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus15[1:0] = stickX;
   assign s_logisimBus5[1:0]  = stickY;
   assign s_logisimNet2       = CLK;
   assign s_logisimNet6       = RST;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign pixelX = s_logisimBus3[2:0];
   assign pixelY = s_logisimBus7[2:0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Subtractor #(.extendedBits(4),
                .nrOfBits(3))
      ARITH_1 (.borrowIn(1'b0),
               .borrowOut(),
               .dataA(s_logisimBus10[2:0]),
               .dataB(s_logisimBus11[2:0]),
               .result(s_logisimBus7[2:0]));

   Subtractor #(.extendedBits(4),
                .nrOfBits(3))
      ARITH_2 (.borrowIn(1'b0),
               .borrowOut(),
               .dataA(s_logisimBus8[2:0]),
               .dataB(s_logisimBus0[2:0]),
               .result(s_logisimBus3[2:0]));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   udlrTranslation   udlrTranslation_1 (.A(s_logisimBus15[1]),
                                        .B(s_logisimBus15[0]),
                                        .C(s_logisimBus5[1]),
                                        .D(s_logisimBus5[0]),
                                        .Down(s_logisimNet17),
                                        .Left(s_logisimNet9),
                                        .Right(s_logisimNet16),
                                        .Up(s_logisimNet1));

   threeBitAcc   threeBitAcc_1 (.CLK(s_logisimNet2),
                                .RST(s_logisimNet6),
                                .count(s_logisimNet1),
                                .value(s_logisimBus10[2:0]));

   threeBitAcc   threeBitAcc_2 (.CLK(s_logisimNet2),
                                .RST(s_logisimNet6),
                                .count(s_logisimNet17),
                                .value(s_logisimBus11[2:0]));

   threeBitAcc   threeBitAcc_3 (.CLK(s_logisimNet2),
                                .RST(s_logisimNet6),
                                .count(s_logisimNet16),
                                .value(s_logisimBus8[2:0]));

   threeBitAcc   threeBitAcc_4 (.CLK(s_logisimNet2),
                                .RST(s_logisimNet6),
                                .count(s_logisimNet9),
                                .value(s_logisimBus0[2:0]));

endmodule
