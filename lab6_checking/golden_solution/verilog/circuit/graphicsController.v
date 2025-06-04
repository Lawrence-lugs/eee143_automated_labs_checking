/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : graphicsController                                           **
 **                                                                          **
 *****************************************************************************/

module graphicsController( CLK,
                           Display,
                           KEY,
                           RST,
                           WriteMode );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       CLK;
   input [6:0] KEY;
   input       RST;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [63:0] Display;
   output        WriteMode;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [63:0] s_logisimBus0;
   wire [2:0]  s_logisimBus1;
   wire [6:0]  s_logisimBus13;
   wire [2:0]  s_logisimBus14;
   wire [2:0]  s_logisimBus16;
   wire [63:0] s_logisimBus17;
   wire [2:0]  s_logisimBus18;
   wire [2:0]  s_logisimBus19;
   wire [63:0] s_logisimBus20;
   wire [1:0]  s_logisimBus22;
   wire [63:0] s_logisimBus24;
   wire [63:0] s_logisimBus26;
   wire [63:0] s_logisimBus27;
   wire [2:0]  s_logisimBus28;
   wire [2:0]  s_logisimBus29;
   wire [1:0]  s_logisimBus31;
   wire [2:0]  s_logisimBus32;
   wire [2:0]  s_logisimBus33;
   wire [1:0]  s_logisimBus34;
   wire [6:0]  s_logisimBus36;
   wire [6:0]  s_logisimBus37;
   wire [6:0]  s_logisimBus38;
   wire [6:0]  s_logisimBus39;
   wire [6:0]  s_logisimBus40;
   wire [6:0]  s_logisimBus41;
   wire [2:0]  s_logisimBus5;
   wire [2:0]  s_logisimBus7;
   wire [2:0]  s_logisimBus9;
   wire        s_logisimNet10;
   wire        s_logisimNet11;
   wire        s_logisimNet12;
   wire        s_logisimNet15;
   wire        s_logisimNet2;
   wire        s_logisimNet21;
   wire        s_logisimNet23;
   wire        s_logisimNet25;
   wire        s_logisimNet3;
   wire        s_logisimNet30;
   wire        s_logisimNet35;
   wire        s_logisimNet4;
   wire        s_logisimNet6;
   wire        s_logisimNet8;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus13[6:0] = KEY;
   assign s_logisimNet2       = RST;
   assign s_logisimNet4       = CLK;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Display   = s_logisimBus24[63:0];
   assign WriteMode = s_logisimNet3;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus36[6:0]  =  {3'b111, 4'h7};


   // Constant
   assign  s_logisimBus37[6:0]  =  {3'b110, 4'h1};


   // Constant
   assign  s_logisimBus38[6:0]  =  {3'b111, 4'h3};


   // Constant
   assign  s_logisimBus39[6:0]  =  {3'b110, 4'h4};


   // Constant
   assign  s_logisimBus40[6:0]  =  {3'b010, 4'h0};


   // Constant
   assign  s_logisimBus41[6:0]  =  {3'b110, 4'h5};


   // Constant
   assign  s_logisimBus14[2:0]  =  3'b001;


   // Constant
   assign  s_logisimBus18[2:0]  =  3'b001;


   // Constant
   assign  s_logisimBus32[2:0]  =  3'b001;


   // Constant
   assign  s_logisimBus33[2:0]  =  3'b001;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE_BUS #(.BubblesMask(2'b00),
                 .NrOfBits(64))
      GATES_1 (.input1(s_logisimBus0[63:0]),
               .input2(s_logisimBus17[63:0]),
               .result(s_logisimBus24[63:0]));

   OR_GATE_BUS #(.BubblesMask(2'b00),
                 .NrOfBits(64))
      GATES_2 (.input1(s_logisimBus17[63:0]),
               .input2(s_logisimBus0[63:0]),
               .result(s_logisimBus20[63:0]));

   AND_GATE_BUS #(.BubblesMask(2'b01),
                  .NrOfBits(64))
      GATES_3 (.input1(s_logisimBus17[63:0]),
               .input2(s_logisimBus0[63:0]),
               .result(s_logisimBus26[63:0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet3),
               .input2(s_logisimNet23),
               .result(s_logisimBus34[0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet6),
               .input2(s_logisimNet23),
               .result(s_logisimBus34[1]));

   Multiplexer_2   PLEXERS_6 (.enable(1'b1),
                              .muxIn_0(s_logisimNet3),
                              .muxIn_1(s_logisimNet6),
                              .muxOut(s_logisimNet30),
                              .sel(s_logisimNet35));

   Multiplexer_bus_4 #(.nrOfBits(64))
      PLEXERS_7 (.enable(1'b1),
                 .muxIn_0(s_logisimBus0[63:0]),
                 .muxIn_1(s_logisimBus20[63:0]),
                 .muxIn_2(s_logisimBus26[63:0]),
                 .muxIn_3(64'd0),
                 .muxOut(s_logisimBus27[63:0]),
                 .sel(s_logisimBus34[1:0]));

   Multiplexer_bus_4 #(.nrOfBits(3))
      PLEXERS_8 (.enable(1'b1),
                 .muxIn_0(s_logisimBus1[2:0]),
                 .muxIn_1(s_logisimBus5[2:0]),
                 .muxIn_2(s_logisimBus19[2:0]),
                 .muxIn_3(3'd0),
                 .muxOut(s_logisimBus28[2:0]),
                 .sel(s_logisimBus31[1:0]));

   Multiplexer_bus_4 #(.nrOfBits(3))
      PLEXERS_9 (.enable(1'b1),
                 .muxIn_0(s_logisimBus9[2:0]),
                 .muxIn_1(s_logisimBus29[2:0]),
                 .muxIn_2(s_logisimBus7[2:0]),
                 .muxIn_3(3'd0),
                 .muxOut(s_logisimBus16[2:0]),
                 .sel(s_logisimBus22[1:0]));

   Multiplexer_2   PLEXERS_10 (.enable(1'b1),
                               .muxIn_0(s_logisimNet6),
                               .muxIn_1(s_logisimNet3),
                               .muxOut(s_logisimNet21),
                               .sel(s_logisimNet35));

   Comparator #(.nrOfBits(7),
                .twosComplement(1))
      ARITH_11 (.aEqualsB(s_logisimBus22[0]),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus13[6:0]),
                .dataB(s_logisimBus36[6:0]));

   Comparator #(.nrOfBits(7),
                .twosComplement(1))
      ARITH_12 (.aEqualsB(s_logisimBus31[1]),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus13[6:0]),
                .dataB(s_logisimBus37[6:0]));

   Comparator #(.nrOfBits(7),
                .twosComplement(1))
      ARITH_13 (.aEqualsB(s_logisimBus22[1]),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus13[6:0]),
                .dataB(s_logisimBus38[6:0]));

   Comparator #(.nrOfBits(7),
                .twosComplement(1))
      ARITH_14 (.aEqualsB(s_logisimBus31[0]),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus13[6:0]),
                .dataB(s_logisimBus39[6:0]));

   Comparator #(.nrOfBits(7),
                .twosComplement(1))
      ARITH_15 (.aEqualsB(s_logisimNet23),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus13[6:0]),
                .dataB(s_logisimBus40[6:0]));

   Comparator #(.nrOfBits(7),
                .twosComplement(1))
      ARITH_16 (.aEqualsB(s_logisimNet35),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus13[6:0]),
                .dataB(s_logisimBus41[6:0]));

   Adder #(.extendedBits(4),
           .nrOfBits(3))
      ARITH_17 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus1[2:0]),
                .dataB(s_logisimBus14[2:0]),
                .result(s_logisimBus5[2:0]));

   Subtractor #(.extendedBits(4),
                .nrOfBits(3))
      ARITH_18 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus1[2:0]),
                .dataB(s_logisimBus18[2:0]),
                .result(s_logisimBus19[2:0]));

   Adder #(.extendedBits(4),
           .nrOfBits(3))
      ARITH_19 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus9[2:0]),
                .dataB(s_logisimBus32[2:0]),
                .result(s_logisimBus29[2:0]));

   Subtractor #(.extendedBits(4),
                .nrOfBits(3))
      ARITH_20 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus9[2:0]),
                .dataB(s_logisimBus33[2:0]),
                .result(s_logisimBus7[2:0]));

   D_FLIPFLOP #(.invertClockEnable(0))
      WRITE (.clock(s_logisimNet4),
             .d(s_logisimNet30),
             .preset(s_logisimNet2),
             .q(s_logisimNet3),
             .qBar(),
             .reset(1'b0),
             .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(64))
      R1 (.clock(s_logisimNet4),
          .clockEnable(1'b1),
          .d(s_logisimBus27[63:0]),
          .q(s_logisimBus0[63:0]),
          .reset(s_logisimNet2),
          .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(3))
      RX (.clock(s_logisimNet4),
          .clockEnable(1'b1),
          .d(s_logisimBus28[2:0]),
          .q(s_logisimBus1[2:0]),
          .reset(s_logisimNet2),
          .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(3))
      RY (.clock(s_logisimNet4),
          .clockEnable(1'b1),
          .d(s_logisimBus16[2:0]),
          .q(s_logisimBus9[2:0]),
          .reset(s_logisimNet2),
          .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      ERASE (.clock(s_logisimNet4),
             .d(s_logisimNet21),
             .preset(1'b0),
             .q(s_logisimNet6),
             .qBar(),
             .reset(s_logisimNet2),
             .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   cursorDecoder   cursorDecoder_1 (.X(s_logisimBus1[2:0]),
                                    .Y(s_logisimBus9[2:0]),
                                    .cursorDisplay(s_logisimBus17[63:0]));

endmodule
