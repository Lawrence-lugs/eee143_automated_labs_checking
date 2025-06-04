/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Demultiplexer_bus_8                                          **
 **                                                                          **
 *****************************************************************************/

module Demultiplexer_bus_8( demuxIn,
                            demuxOut_0,
                            demuxOut_1,
                            demuxOut_2,
                            demuxOut_3,
                            demuxOut_4,
                            demuxOut_5,
                            demuxOut_6,
                            demuxOut_7,
                            enable,
                            sel );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter nrOfBits = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [nrOfBits-1:0] demuxIn;
   input                enable;
   input [2:0]          sel;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [nrOfBits-1:0] demuxOut_0;
   output [nrOfBits-1:0] demuxOut_1;
   output [nrOfBits-1:0] demuxOut_2;
   output [nrOfBits-1:0] demuxOut_3;
   output [nrOfBits-1:0] demuxOut_4;
   output [nrOfBits-1:0] demuxOut_5;
   output [nrOfBits-1:0] demuxOut_6;
   output [nrOfBits-1:0] demuxOut_7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   assign demuxOut_0   = (enable&(sel == 3'b000 )) ? demuxIn : 0;
   assign demuxOut_1   = (enable&(sel == 3'b001 )) ? demuxIn : 0;
   assign demuxOut_2   = (enable&(sel == 3'b010 )) ? demuxIn : 0;
   assign demuxOut_3   = (enable&(sel == 3'b011 )) ? demuxIn : 0;
   assign demuxOut_4   = (enable&(sel == 3'b100 )) ? demuxIn : 0;
   assign demuxOut_5   = (enable&(sel == 3'b101 )) ? demuxIn : 0;
   assign demuxOut_6   = (enable&(sel == 3'b110 )) ? demuxIn : 0;
   assign demuxOut_7   = (enable&(sel == 3'b111 )) ? demuxIn : 0;
endmodule
