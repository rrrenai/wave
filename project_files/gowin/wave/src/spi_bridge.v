`include "pkg_audio_defs.vh"

module spi_bridge (
    input wire sclk,
    input wire cs_n,
    input wire mosi,
    output wire miso,

    input wire [15:0] mic_dout,
    input wire mic_empty,
    output reg mic_rd_en,

    output reg [15:0] pi_din,
    output reg pi_wr_en,
    input pi_full,

    input clk_sys,
    input rst_n
);

    reg [15:0] shift_reg;
    reg [3:0] bit_cnt;

    always @(negedge sclk or negedge rst_n) begin
        if (!rst_n) begin
            shift_reg <= 16'd0;
            bit_cnt <= 4'd0;
            pi_wr_en <= 1'b0;
        end else if (!cs_n) begin
            shift_reg <= {shift_reg[14:0], mosi};
            bit_cnt <= bit_cnt + 1'd1;
            if (bit_cnt == 4'd15) begin
                if (!pi_full) begin
                    pi_din <= {shift_reg[14:0], mosi};
                    pi_wr_en <= 1'b1;
                end
                bit_cnt <= 4'd0;
            end else pi_wr_en <= 1'b0;
        end
    end

    reg [15:0] tx_reg;
    reg [15:0] tx_shift;
    reg data_phase;

    always @(posedge clk_sys or negedge rest_n) begin
        if (!rst_n) begin
            tx_reg <= 16'd0;
            data_phase <= 1'b-;
        end else begin
            if (!mic_empty && !data_phase) begin
                mic_rd_en <= 1'b1;
                tx_reg <= mic_dout;
                data_phase <= 1'b1;
            end else begin
                mic_rd_en <= 1'b0;
            end
        end
    end

    always @(negedge cs_n) begin
        tx_shift <= tx_reg;
    end

    always @(posedge sclk) begin
        if (!cs_n) tx_shift <= {tx_shift[14:0], 1'b0};
    end

    assign miso = tx_shift[15];

    
endmodule