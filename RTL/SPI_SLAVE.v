module spi_slave #(
    parameter IDLE      = 0, 
    parameter CHK_CMD   = 1,
    parameter WRITE     = 2,
    parameter READ_ADD  = 3,
    parameter READ_DATA = 4
)(
    input        clk,
    input        rst_n,
    input        SS_n,
    input        MOSI,
    input        tx_valid,
    input  [7:0] tx_data,
    output reg   MISO,
    output reg   rx_valid,
    output reg [9:0] rx_data
);

    // state memory
    reg [2:0] cs, ns;
    reg       READ_TYPE;
    reg [3:0] counter;

   always @(posedge clk) begin
       if (!rst_n)
            cs <= IDLE;
        else
            cs <= ns;
    end

    // Next state logic
   always @(*) begin
    case(cs)
        IDLE: begin
            if (~SS_n) begin
                ns = CHK_CMD;
            end
            else begin
                ns = IDLE;
            end
        end
        CHK_CMD: begin
            if (SS_n) begin
                ns = IDLE;
            end
            else begin
                if (~MOSI) begin
                    ns = WRITE;
                end
                else begin
                    if (~READ_TYPE) begin
                        ns = READ_ADD;
                    end
                    else begin
                        ns = READ_DATA;
                    end
                end
            end
        end
        WRITE: begin
            if (SS_n) begin
                ns = IDLE;
            end
            else begin
                ns = WRITE;
            end
        end
        READ_ADD: begin
            if (SS_n) begin
                ns = IDLE;
            end
            else begin
                ns = READ_ADD;
            end
        end
        READ_DATA: begin
            if (SS_n) begin
                ns = IDLE;
            end
            else begin
                ns = READ_DATA;
            end
        end
        default: ns = IDLE;
    endcase
end

    //output logic
    always @(posedge clk) begin
        if (!rst_n) begin
            counter   <= 0;
            rx_data   <= 0;
            rx_valid  <= 0;
            MISO      <= 0;
            READ_TYPE <= 0;
        end else begin
            rx_valid <= 0;
            if (~SS_n) begin
                case (cs)
                    READ_ADD,
                    WRITE: begin
                        rx_data <= {rx_data[8:0], MOSI};
                        if (counter == 9) begin
                            rx_valid <= 1;
                            counter <= 0;
                            if (cs == READ_ADD)
                                READ_TYPE <= 1;
                        end
                        else counter <= counter + 1;
                    end

                    READ_DATA: begin
                        if (tx_valid) begin
                            MISO <= tx_data[7 - counter];
                            counter <= counter + 1;

                            if (counter > 7) begin
                                counter <= 0;
                                READ_TYPE <= 0;
                                MISO <= 0;
                            end
                        end
                        else begin
                            rx_data <= {rx_data[8:0], MOSI};
                            if (counter == 9) begin
                                rx_valid <= 1;
                                counter <= 0;
                                READ_TYPE <= 0;
                            end
                            else counter <= counter + 1;
                        end
                    end
                endcase
            end else begin
                
                counter <= 0;
            end
        end
    end

endmodule


