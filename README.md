# Design SPI Slave with Single Port RAM

This project implements an SPI slave module that communicates with a single-port RAM. The SPI slave receives data from a master device, storing and retrieving data to and from the RAM.

## Project Overview

The SPI slave module is designed to handle data transfer between a master and a slave device using the SPI protocol. The single-port RAM module is used for data storage and retrieval. The project integrates both modules to enable SPI communication with a memory block.

### Features

- **SPI Slave Module**: Manages SPI protocol and data transfer.
- **Single Port RAM**: Handles data storage and retrieval.
- **Wrapper Module**: Integrates the SPI Slave and RAM modules for seamless communication.

### Modules

1. **SPI Slave Module**:
   - **Inputs**: MOSI, SS_n, clk, rst_n
   - **Outputs**: MISO, rx_data, rx_valid, tx_data, tx_valid

2. **Single Port RAM Module**:
   - **Inputs**: din, clk, rst_n, rx_valid
   - **Outputs**: dout, tx_valid

3. **Wrapper Module**:
   - Integrates the SPI Slave and RAM modules.
   - Manages data transfer between the master device and the RAM.

### Ports and Signals

#### SPI Slave Ports

| Port Name | Type   | Size    | Description                     |
|-----------|--------|---------|---------------------------------|
| MOSI      | Input  | 1 bit   | Master Out Slave In (Data from master) |
| MISO      | Output | 1 bit   | Master In Slave Out (Data to master)   |
| SS_n      | Input  | 1 bit   | Slave Select (Active Low)              |
| clk       | Input  | 1 bit   | Clock signal                          |
| rst_n     | Input  | 1 bit   | Active Low Reset signal               |
| rx_data   | Output | 10 bit  | Received data from master             |
| rx_valid  | Output | 1 bit   | Indicates valid received data         |
| tx_data   | Input  | 10 bit  | Data to be transmitted to master      |
| tx_valid  | Input  | 1 bit   | Indicates valid data to transmit      |

#### RAM Ports

| Port Name | Type   | Size    | Description                     |
|-----------|--------|---------|---------------------------------|
| din       | Input  | 10 bit  | Data input                      |
| clk       | Input  | 1 bit   | Clock signal                    |
| rst_n     | Input  | 1 bit   | Active Low Reset signal         |
| rx_valid  | Input  | 1 bit   | Indicates valid data input      |
| dout      | Output | 8 bit   | Data output                     |
| tx_valid  | Output | 1 bit   | Indicates valid data output     |

### Operation

The SPI slave module receives data from the master device and processes it based on the SPI protocol. The most significant bits of the input data (`din[9:8]`) determine the operation to be performed:

- **00**: Write - Holds `din[7:0]` as a write address.
- **01**: Write - Writes `din[7:0]` to the memory at the held write address.
- **10**: Read - Holds `din[7:0]` as a read address.
- **11**: Read - Reads data from the memory at the held read address and outputs it on `dout`.


## Some Snippets :
- Elaborated Design Schematic : 
<img width="1036" height="468" alt="elaborated_pro3" src="https://github.com/user-attachments/assets/e695fae5-4399-4b72-8667-419df4d8fa8c" />

- Synthesis Schematic : 
<img width="1021" height="393" alt="synthesis_pro2" src="https://github.com/user-attachments/assets/f44fa5a5-177e-4ad1-a6c9-c12232bcc757" />

Device After Implementation on FPGA Artex7 - Basys 3
- ![Screenshot 2024-08-04 154803](https://github.com/user-attachments/assets/eb3574d8-77dd-4279-8838-15c725a914b8)
- ![Screenshot 2024-08-04 154853](https://github.com/user-attachments/assets/14729c9f-c0b5-4f6c-9514-44b12c1d1b68)

### Simulation Waveforms

Simulation waveforms are provided to verify the correct operation of the SPI slave and RAM modules. The waveforms show the timing of signals such as `clk`, `rst_n`, `din`, `dout`, `rx_valid`, and `tx_valid`. These waveforms were generated using a Verilog testbench and simulated using industry-standard tools such as **ModelSim** or **Vivado Simulator** [^1^].

### Timing and Utilization Reports

The project includes timing and utilization reports for different encoding schemes (Gray, Sequential, and One-Hot). The reports show the setup, hold, and pulse width slack values, as well as the resource utilization on the target FPGA. These reports were generated using **Xilinx Vivado** for synthesis and implementation [^2^].

#### Timing Report Summary

| Encoding       | Worst Negative Setup Slack (WNS) | Worst Hold Slack (WHS) | Worst Pulse Width Slack (WPWS) |
|----------------|----------------------------------|------------------------|--------------------------------|
| Gray           | 5.591 ns                        | 0.084 ns               | 4.500 ns                       |
| Sequential     | 5.752 ns                        | 0.044 ns               | 4.500 ns                       |
| One-Hot        | 5.547 ns                        | 0.104 ns               | 4.500 ns                       |

### Conclusion

The One-Hot encoding scheme provides the best timing margins for both setup and hold constraints, making it the preferred choice for high-frequency operation [^3^].

---

### Repository Structure

- **RTL**: Contains the Verilog source code for the SPI slave, RAM, and wrapper modules.
- **Testbench**: Contains the testbench code for simulation.
- **Simulation**: Includes simulation waveforms and results.
- **Reports**: Contains timing and utilization reports.
- **Constraints**: FPGA constraint files for synthesis and implementation.

---

### How to Run

1. Clone the repository.
2. Open the project in your preferred FPGA tool (e.g., **Vivado**).
3. Synthesize and implement the design.
4. Run the testbench to verify functionality.
5. Generate the bitstream and program the FPGA.

---

### License

This project was developed as part of a coursework under the supervision of **Eng. Kareem Waseem**.
