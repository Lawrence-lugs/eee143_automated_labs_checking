/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : dffButJK                                                     **
 **                                                                          **
 *****************************************************************************/

module dffButJK( CLK,
                 D,
                 Q,
                 logisimClockTree0 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       CLK;
   input       D;
   input [4:0] logisimClockTree0;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output Q;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_logisimNet0;
   wire s_logisimNet1;
   wire s_logisimNet2;
   wire s_logisimNet3;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet2 = D;
   assign s_logisimNet3 = CLK;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Q = s_logisimNet0;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // NOT Gate
   assign s_logisimNet1 = ~s_logisimNet2;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   J_K_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_1 (.clock(logisimClockTree0[4]),
                .j(s_logisimNet2),
                .k(s_logisimNet1),
                .preset(1'b0),
                .q(s_logisimNet0),
                .qBar(),
                .reset(1'b0),
                .tick(logisimClockTree0[2]));


endmodule
