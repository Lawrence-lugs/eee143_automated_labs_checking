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
   wire       s_CLK;
   wire       s_RST;
   wire [2:0] s_pixelX;
   wire [2:0] s_pixelY;
   wire [1:0] s_stickX;
   wire [1:0] s_stickY;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** All signal adaptations are performed here                                  **
   *******************************************************************************/
   assign s_CLK       = 1'b0;
   assign s_RST       = 1'b0;
   assign s_stickX[0] = 1'b0;
   assign s_stickX[1] = 1'b0;
   assign s_stickY[0] = 1'b0;
   assign s_stickY[1] = 1'b0;

   /*******************************************************************************
   ** The toplevel component is connected here                                   **
   *******************************************************************************/
   xyTracker   CIRCUIT_0 (.CLK(s_CLK),
                          .RST(s_RST),
                          .pixelX(s_pixelX),
                          .pixelY(s_pixelY),
                          .stickX(s_stickX),
                          .stickY(s_stickY));
endmodule
