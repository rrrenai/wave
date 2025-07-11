`ifndef PKG_AUDIO_DEFS_VH
`define PKG_AUDIO_DEFS_VH

parameter integer SAMPLE_RATE = 48_000;
parameter integer TDM_CHANNELS = 8;
parameter integer WORD_LEN = 24; // 24-bit left justified
parameter integer BCLK_FREQ = SAMPLE_RATE*WORD_LEN*TDM_CHANNELS; // 9.216 MHz
parameter integer PCM_WIDTH = 16; 

`endif 