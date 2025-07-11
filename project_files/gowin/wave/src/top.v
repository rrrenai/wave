`include "pkg_audio_defs.vh"

module top (
    input wire MIC_BCLK,
    input wire MIC_WS,
    input wire MIC_SD,

    input wire SPI_SCLK,
    input wire SPI_CS_N,
    input wire SPI_MOSI,
    output wire SPI_MISO,

    output wire HP_L_PWM,
    
    input wire OSC_IN,
    input wire RST_BTN
);

    wire clk_sys;
    wire locked;
    pll_sysclk u_pull (.clki(OSC_IN), .clkop(clk_sys), .lock(locked));

    wire rst_n = locked && !RST_BTN;

    wire [15:0] pcm_data;
    wire pcm_valid;
    wire fifo_full, fifo_empty;
    wire fifo_rd_en;

    tdm_rx u_rx (
        .blck(MIC_BCLK),
        .lrclk(MIC_WS),
        .sd_in(MIC_SD),
        .rst_n(rst_n),
        .pcm_data(pcm_data),
        .pcm_valid(pcm_valid),
        .fifo_full(fifo_full)
    );

    dual_clock_fifo u_fifo (
        .wr_clk(MIC_BCLK),
        .wr_en(pcm_valid),
        .din(pcm_data),
        .full(fifo_full),

        .rd_clk(clk_sys),
        .rd_en(fifo_rd_en),
        .dout(pcm_data_out),
        .empty(fifo_empty)
    );

    wire [15:0] pi_din;
    wire pi_wr_en, pi_full;

    spi_bridge u_spi (
        .sclk(SPI_SCLK),
        .cs_n(SPI_CS_N),
        .mosi(SPI_MOSI),
        .miso(SPI_MISO),

        .mic_dout(pcm_data_out),
        .mic_empty(fifo_empty),
        .mic_rd_en(fifo_rd_en),

        .pi_dn(pi_din),
        .pi_wr_en(pi_wr_en),
        .pi_full(1'b0),

        .clk_sys(clk_sys),
        .rst_n(rst_n)
    );

    reg [15:0] last_sample;
    always @(posedge clk_sys) begin
        if (pi_wr_en) last_sample <= pi_din;
    end

    pwn_audio_out u_pwm (
        .clk(clk_sys),
        .rst_n(rst_n),
        .sample_in(last_sample),
        .pwm_out(HP_L_PWM)
    );
    
endmodule