/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : logisimTopLevelShell                                         **
 **                                                                          **
 *****************************************************************************/

module logisimTopLevelShell(  );

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire        s_CLK;
   wire [63:0] s_Display;
   wire [6:0]  s_KEY;
   wire        s_RST;
   wire        s_WriteMode;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** All signal adaptations are performed here                                  **
   *******************************************************************************/
   assign s_CLK    = 1'b0;
   assign s_KEY[0] = 1'b0;
   assign s_KEY[1] = 1'b0;
   assign s_KEY[2] = 1'b0;
   assign s_KEY[3] = 1'b0;
   assign s_KEY[4] = 1'b0;
   assign s_KEY[5] = 1'b0;
   assign s_KEY[6] = 1'b0;
   assign s_RST    = 1'b0;

   /*******************************************************************************
   ** The toplevel component is connected here                                   **
   *******************************************************************************/
   graphicsController   CIRCUIT_0 (.CLK(s_CLK),
                                   .Display(s_Display),
                                   .KEY(s_KEY),
                                   .RST(s_RST),
                                   .WriteMode(s_WriteMode));
endmodule
