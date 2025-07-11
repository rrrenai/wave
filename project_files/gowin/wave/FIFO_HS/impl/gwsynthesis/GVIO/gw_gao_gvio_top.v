module gw_gao_gvio(
    rst_n,
    error,
    w_en,
    \w_data[15] ,
    \w_data[14] ,
    \w_data[13] ,
    \w_data[12] ,
    \w_data[11] ,
    \w_data[10] ,
    \w_data[9] ,
    \w_data[8] ,
    \w_data[7] ,
    \w_data[6] ,
    \w_data[5] ,
    \w_data[4] ,
    \w_data[3] ,
    \w_data[2] ,
    \w_data[1] ,
    \w_data[0] ,
    r_en,
    \r_data[31] ,
    \r_data[30] ,
    \r_data[29] ,
    \r_data[28] ,
    \r_data[27] ,
    \r_data[26] ,
    \r_data[25] ,
    \r_data[24] ,
    \r_data[23] ,
    \r_data[22] ,
    \r_data[21] ,
    \r_data[20] ,
    \r_data[19] ,
    \r_data[18] ,
    \r_data[17] ,
    \r_data[16] ,
    \r_data[15] ,
    \r_data[14] ,
    \r_data[13] ,
    \r_data[12] ,
    \r_data[11] ,
    \r_data[10] ,
    \r_data[9] ,
    \r_data[8] ,
    \r_data[7] ,
    \r_data[6] ,
    \r_data[5] ,
    \r_data[4] ,
    \r_data[3] ,
    \r_data[2] ,
    \r_data[1] ,
    \r_data[0] ,
    clk,
    \w_data_d[31] ,
    \w_data_d[30] ,
    \w_data_d[29] ,
    \w_data_d[28] ,
    \w_data_d[27] ,
    \w_data_d[26] ,
    \w_data_d[25] ,
    \w_data_d[24] ,
    \w_data_d[23] ,
    \w_data_d[22] ,
    \w_data_d[21] ,
    \w_data_d[20] ,
    \w_data_d[19] ,
    \w_data_d[18] ,
    \w_data_d[17] ,
    \w_data_d[16] ,
    \w_data_d[15] ,
    \w_data_d[14] ,
    \w_data_d[13] ,
    \w_data_d[12] ,
    \w_data_d[11] ,
    \w_data_d[10] ,
    \w_data_d[9] ,
    \w_data_d[8] ,
    \w_data_d[7] ,
    \w_data_d[6] ,
    \w_data_d[5] ,
    \w_data_d[4] ,
    \w_data_d[3] ,
    \w_data_d[2] ,
    \w_data_d[1] ,
    \w_data_d[0] ,
    gvio_test,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input rst_n;
input error;
input w_en;
input \w_data[15] ;
input \w_data[14] ;
input \w_data[13] ;
input \w_data[12] ;
input \w_data[11] ;
input \w_data[10] ;
input \w_data[9] ;
input \w_data[8] ;
input \w_data[7] ;
input \w_data[6] ;
input \w_data[5] ;
input \w_data[4] ;
input \w_data[3] ;
input \w_data[2] ;
input \w_data[1] ;
input \w_data[0] ;
input r_en;
input \r_data[31] ;
input \r_data[30] ;
input \r_data[29] ;
input \r_data[28] ;
input \r_data[27] ;
input \r_data[26] ;
input \r_data[25] ;
input \r_data[24] ;
input \r_data[23] ;
input \r_data[22] ;
input \r_data[21] ;
input \r_data[20] ;
input \r_data[19] ;
input \r_data[18] ;
input \r_data[17] ;
input \r_data[16] ;
input \r_data[15] ;
input \r_data[14] ;
input \r_data[13] ;
input \r_data[12] ;
input \r_data[11] ;
input \r_data[10] ;
input \r_data[9] ;
input \r_data[8] ;
input \r_data[7] ;
input \r_data[6] ;
input \r_data[5] ;
input \r_data[4] ;
input \r_data[3] ;
input \r_data[2] ;
input \r_data[1] ;
input \r_data[0] ;
input clk;
input \w_data_d[31] ;
input \w_data_d[30] ;
input \w_data_d[29] ;
input \w_data_d[28] ;
input \w_data_d[27] ;
input \w_data_d[26] ;
input \w_data_d[25] ;
input \w_data_d[24] ;
input \w_data_d[23] ;
input \w_data_d[22] ;
input \w_data_d[21] ;
input \w_data_d[20] ;
input \w_data_d[19] ;
input \w_data_d[18] ;
input \w_data_d[17] ;
input \w_data_d[16] ;
input \w_data_d[15] ;
input \w_data_d[14] ;
input \w_data_d[13] ;
input \w_data_d[12] ;
input \w_data_d[11] ;
input \w_data_d[10] ;
input \w_data_d[9] ;
input \w_data_d[8] ;
input \w_data_d[7] ;
input \w_data_d[6] ;
input \w_data_d[5] ;
input \w_data_d[4] ;
input \w_data_d[3] ;
input \w_data_d[2] ;
input \w_data_d[1] ;
input \w_data_d[0] ;
inout gvio_test;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire rst_n;
wire error;
wire w_en;
wire \w_data[15] ;
wire \w_data[14] ;
wire \w_data[13] ;
wire \w_data[12] ;
wire \w_data[11] ;
wire \w_data[10] ;
wire \w_data[9] ;
wire \w_data[8] ;
wire \w_data[7] ;
wire \w_data[6] ;
wire \w_data[5] ;
wire \w_data[4] ;
wire \w_data[3] ;
wire \w_data[2] ;
wire \w_data[1] ;
wire \w_data[0] ;
wire r_en;
wire \r_data[31] ;
wire \r_data[30] ;
wire \r_data[29] ;
wire \r_data[28] ;
wire \r_data[27] ;
wire \r_data[26] ;
wire \r_data[25] ;
wire \r_data[24] ;
wire \r_data[23] ;
wire \r_data[22] ;
wire \r_data[21] ;
wire \r_data[20] ;
wire \r_data[19] ;
wire \r_data[18] ;
wire \r_data[17] ;
wire \r_data[16] ;
wire \r_data[15] ;
wire \r_data[14] ;
wire \r_data[13] ;
wire \r_data[12] ;
wire \r_data[11] ;
wire \r_data[10] ;
wire \r_data[9] ;
wire \r_data[8] ;
wire \r_data[7] ;
wire \r_data[6] ;
wire \r_data[5] ;
wire \r_data[4] ;
wire \r_data[3] ;
wire \r_data[2] ;
wire \r_data[1] ;
wire \r_data[0] ;
wire clk;
wire \w_data_d[31] ;
wire \w_data_d[30] ;
wire \w_data_d[29] ;
wire \w_data_d[28] ;
wire \w_data_d[27] ;
wire \w_data_d[26] ;
wire \w_data_d[25] ;
wire \w_data_d[24] ;
wire \w_data_d[23] ;
wire \w_data_d[22] ;
wire \w_data_d[21] ;
wire \w_data_d[20] ;
wire \w_data_d[19] ;
wire \w_data_d[18] ;
wire \w_data_d[17] ;
wire \w_data_d[16] ;
wire \w_data_d[15] ;
wire \w_data_d[14] ;
wire \w_data_d[13] ;
wire \w_data_d[12] ;
wire \w_data_d[11] ;
wire \w_data_d[10] ;
wire \w_data_d[9] ;
wire \w_data_d[8] ;
wire \w_data_d[7] ;
wire \w_data_d[6] ;
wire \w_data_d[5] ;
wire \w_data_d[4] ;
wire \w_data_d[3] ;
wire \w_data_d[2] ;
wire \w_data_d[1] ;
wire \w_data_d[0] ;
wire tms_pad_i;
wire tck_pad_i;
wire tdi_pad_i;
wire tdo_pad_o;
wire tms_i_c;
wire tck_i_c;
wire tdi_i_c;
wire tdo_o_c;
wire [9:0] gvio_control0;
wire [9:0] gao_control0;
wire gvio_gao_jtag_tck;
wire gvio_gao_jtag_reset;
wire run_test_idle_er1;
wire run_test_idle_er2;
wire gvio_gao_shift_dr_capture_dr;
wire gvio_gao_update_dr;
wire pause_dr;
wire gvio_gao_enable_er1;
wire gvio_gao_enable_er2;
wire gvio_gao_jtag_tdi;
wire gvio_tdo_er1;
wire gao_tdo_er1;
wire tdo_er1;
wire tdo_select;

MUX2 mux2_inst(
    .O(tdo_er1),
    .I0(gvio_tdo_er1),
    .I1(gao_tdo_er1),
    .S0(tdo_select)
);

GW_JTAG  u_gw_jtag(
    .tms_pad_i(tms_pad_i),
    .tck_pad_i(tck_pad_i),
    .tdi_pad_i(tdi_pad_i),
    .tdo_pad_o(tdo_pad_o),
    .tck_o(gvio_gao_jtag_tck),
    .test_logic_reset_o(gvio_gao_jtag_reset),
    .run_test_idle_er1_o(run_test_idle_er1),
    .run_test_idle_er2_o(run_test_idle_er2),
    .shift_dr_capture_dr_o(gvio_gao_shift_dr_capture_dr),
    .update_dr_o(gvio_gao_update_dr),
    .pause_dr_o(pause_dr),
    .enable_er1_o(gvio_gao_enable_er1),
    .enable_er2_o(gvio_gao_enable_er2),
    .tdi_o(gvio_gao_jtag_tdi),
    .tdo_er1_i(tdo_er1),
    .tdo_er2_i(1'b0)
);

gw_gvio_con_top  u_gvio_icon_top(
    .tck_i(gvio_gao_jtag_tck),
    .tdi_i(gvio_gao_jtag_tdi),
    .tdo_o(gvio_tdo_er1),
    .rst_i(gvio_gao_jtag_reset),
    .control0(gvio_control0[9:0]),
    .enable_i(gvio_gao_enable_er1),
    .shift_dr_capture_dr_i(gvio_gao_shift_dr_capture_dr),
    .update_dr_i(gvio_gao_update_dr),
    .tdo_select(tdo_select)
);

gw_gvio_top_0  u_gvio0_top(
    .control(gvio_control0[9:0]),
    .probe_in0({rst_n,\w_data_d[31] ,\w_data_d[30] ,\w_data_d[29] ,\w_data_d[28] ,\w_data_d[27] ,\w_data_d[26] ,\w_data_d[25] ,\w_data_d[24] ,\w_data_d[23] ,\w_data_d[22] ,\w_data_d[21] ,\w_data_d[20] ,\w_data_d[19] ,\w_data_d[18] ,\w_data_d[17] ,\w_data_d[16] ,\w_data_d[15] ,\w_data_d[14] ,\w_data_d[13] ,\w_data_d[12] ,\w_data_d[11] ,\w_data_d[10] ,\w_data_d[9] ,\w_data_d[8] ,\w_data_d[7] ,\w_data_d[6] ,\w_data_d[5] ,\w_data_d[4] ,\w_data_d[3] ,\w_data_d[2] ,\w_data_d[1] ,\w_data_d[0] }),
    .probe_out0(gvio_test)
);

gw_con_top  u_icon_top(
    .tck_i(gvio_gao_jtag_tck),
    .tdi_i(gvio_gao_jtag_tdi),
    .tdo_o(gao_tdo_er1),
    .rst_i(gvio_gao_jtag_reset),
    .control0(gao_control0[9:0]),
    .enable_i(gvio_gao_enable_er1),
    .shift_dr_capture_dr_i(gvio_gao_shift_dr_capture_dr),
    .update_dr_i(gvio_gao_update_dr)
);

ao_top_0  u_la0_top(
    .control(gao_control0[9:0]),
    .trig0_i(rst_n),
    .data_i({rst_n,error,w_en,\w_data[15] ,\w_data[14] ,\w_data[13] ,\w_data[12] ,\w_data[11] ,\w_data[10] ,\w_data[9] ,\w_data[8] ,\w_data[7] ,\w_data[6] ,\w_data[5] ,\w_data[4] ,\w_data[3] ,\w_data[2] ,\w_data[1] ,\w_data[0] ,r_en,\r_data[31] ,\r_data[30] ,\r_data[29] ,\r_data[28] ,\r_data[27] ,\r_data[26] ,\r_data[25] ,\r_data[24] ,\r_data[23] ,\r_data[22] ,\r_data[21] ,\r_data[20] ,\r_data[19] ,\r_data[18] ,\r_data[17] ,\r_data[16] ,\r_data[15] ,\r_data[14] ,\r_data[13] ,\r_data[12] ,\r_data[11] ,\r_data[10] ,\r_data[9] ,\r_data[8] ,\r_data[7] ,\r_data[6] ,\r_data[5] ,\r_data[4] ,\r_data[3] ,\r_data[2] ,\r_data[1] ,\r_data[0] }),
    .clk_i(clk)
);

endmodule
