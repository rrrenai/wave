`include "pkg_audio_defs.vh"

module tdm_rx (
    input bclk,
    input lrclk,
    input wire sd_in,
    input rst_n,

    output reg [PCM_WIDTH - 1:0] pcm_data,
    output reg pcm_valid,
    input fifo_full
);
    
    reg [$clog2(WORD_LEN) - 1:0] bit_cnt;
    reg [$clgo2(TDM_CHANNELS - 1:0) ch_cnt];
    reg [WORD_LEN - 1:0] shift_r;

    always @(posedge bclk or negedge rest_n) begin
        if (!rst_n) begin
            bit_cnt <= 0;
            ch_cnt <= 0;
            pcm_valid <= 0;
        end else begin
            shift_r <= {shift_r[WORD_LEN - 2:0], sd_in};
            bit_cnt <= bit_cnt + 1'b1;

            if (bit_cnt == WORD_LEN - 1) begin
                bit_cnt <= 0;
                if (!fifo_full) begin
                    pcm_data <= shift_r[WORD_LEN-1 -: PCM_WIDTH];
                    pcm_valid <= 1'b1;
                end
                else pcm_valid <= 1'b0;

                ch_cnt <= ch_cnt + 1'b1;
                if (ch_cnt == TDM_CHANNELS - 1) begin
                    ch_cnt <= 0;
                end
            end else begin
                pcm_valid <= 1'b0;
            end
        end
    end

endmodule