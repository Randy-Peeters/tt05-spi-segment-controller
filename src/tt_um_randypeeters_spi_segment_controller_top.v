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


assign uio_oe[7:1]      = 7'b0000000; //MAYBE CHANGE
assign uio_out[7:1]     = 7'b1111111; //MAYBE CHANGE
assign uo_out           = 8'b11111111; //MAYBE CHANGE

assign uio_oe[0]        = 1'b1;     //Assign the UIO_0 as output for the MISO.

spi spi_instance(.rst_n(rst_n), .sck(ui_in[0]), .mosi(ui_in[1]), .miso(uio_out[0]));


endmodule
