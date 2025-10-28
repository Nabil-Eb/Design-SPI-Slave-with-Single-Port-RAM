vlib work
vlog SPI_WRAPPER.v SPI_SLAVE.v RAM.v SPI_WRAPPER_TB.v
vsim -voptargs=+acc work.spi_wrapper_tb
add wave -position insertpoint  \
sim:/spi_wrapper_tb/clk \
sim:/spi_wrapper_tb/rst_n \
sim:/spi_wrapper_tb/MOSI \
sim:/spi_wrapper_tb/SS_n \
sim:/spi_wrapper_tb/MISO 
add wave -position insertpoint  \
sim:/spi_wrapper_tb/dut/spi_slave_ins/tx_valid \
sim:/spi_wrapper_tb/dut/spi_slave_ins/tx_data \
sim:/spi_wrapper_tb/dut/spi_slave_ins/rx_valid \
sim:/spi_wrapper_tb/dut/spi_slave_ins/rx_data
run -all