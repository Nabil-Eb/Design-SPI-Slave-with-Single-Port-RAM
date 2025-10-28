module spi_wrapper(
    input MOSI , SS_n ,
    input clk , rst_n ,
    output MISO
);
wire tx_valid,rx_valid;
wire [7:0] tx_data;
wire[9:0] rx_data;
spi_slave spi_slave_ins (.clk(clk),.rst_n(rst_n),.SS_n(SS_n),.MOSI(MOSI),.tx_valid(tx_valid),.tx_data(tx_data),.MISO(MISO),.rx_valid(rx_valid),.rx_data(rx_data));
ram ram_ins (.clk(clk),.rst_n(rst_n),.din(rx_data),.rx_valid(rx_valid),.dout(tx_data),.tx_valid(tx_valid));
endmodule