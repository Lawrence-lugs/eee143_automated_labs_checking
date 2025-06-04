/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : cursorDecoder                                                **
 **                                                                          **
 *****************************************************************************/

module cursorDecoder( X,
                      Y,
                      cursorDisplay );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [2:0] X;
   input [2:0] Y;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [63:0] cursorDisplay;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [2:0]  s_logisimBus0;
   wire [63:0] s_logisimBus1;
   wire [7:0]  s_logisimBus11;
   wire [2:0]  s_logisimBus2;
   wire        s_logisimNet12;
   wire        s_logisimNet13;
   wire        s_logisimNet14;
   wire        s_logisimNet15;
   wire        s_logisimNet16;
   wire        s_logisimNet17;
   wire        s_logisimNet18;
   wire        s_logisimNet19;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus0[2:0] = Y;
   assign s_logisimBus2[2:0] = X;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign cursorDisplay = s_logisimBus1[63:0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Demultiplexer_bus_8 #(.nrOfBits(8))
      PLEXERS_1 (.demuxIn(s_logisimBus11[7:0]),
                 .demuxOut_0(s_logisimBus1[63:56]),
                 .demuxOut_1(s_logisimBus1[55:48]),
                 .demuxOut_2(s_logisimBus1[47:40]),
                 .demuxOut_3(s_logisimBus1[39:32]),
                 .demuxOut_4(s_logisimBus1[31:24]),
                 .demuxOut_5(s_logisimBus1[23:16]),
                 .demuxOut_6(s_logisimBus1[15:8]),
                 .demuxOut_7(s_logisimBus1[7:0]),
                 .enable(1'b1),
                 .sel(s_logisimBus2[2:0]));

   Decoder_8   PLEXERS_2 (.decoderOut_0(s_logisimBus11[0]),
                          .decoderOut_1(s_logisimBus11[1]),
                          .decoderOut_2(s_logisimBus11[2]),
                          .decoderOut_3(s_logisimBus11[3]),
                          .decoderOut_4(s_logisimBus11[4]),
                          .decoderOut_5(s_logisimBus11[5]),
                          .decoderOut_6(s_logisimBus11[6]),
                          .decoderOut_7(s_logisimBus11[7]),
                          .enable(1'b1),
                          .sel(s_logisimBus0[2:0]));


endmodule
