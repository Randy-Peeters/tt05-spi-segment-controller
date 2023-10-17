`default_nettype none

module tt_um_randypeeters_spi_segment_controller_top(
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

assign uo_out[0] = ui_in[0];

assign uio_oe       = 8'b11111111;
assign uio_out      = 8'b11111111;
assign uo_out[7:2]  = 6'b111111;

LOL tst(.clk(clk), .out(uo_out[1]));

endmodule
