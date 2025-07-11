module pwn_audio_out #(
    parameter WIDTH = 16
)(
    input clk,
    input rst_n,
    input signed [WIDTH - 1:0] sample_in,
    output pwm_out
);

    reg signed [WIDTH:0] acc;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
        acc <= 0;
        else
            acc <= acc + sample_in - { {WIDTH - 1{1'b0}}, pwm_out }; 
    end
    assign pwm_out = acc[WIDTH];
    
endmodule