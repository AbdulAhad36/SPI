module spi_interface_slave(
	input sck,CE1
	input  MOSI,
	output reg MISO
	);

	reg [7:0] buffer;
	
	always@(posedge sck or negedge sck) begin

	if (CE1!) begin
		buffer <= { MOSI, buffer[7:0]};
	
	
	
	
