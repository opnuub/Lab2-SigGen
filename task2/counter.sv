module counter #(
    parameter WIDTH = 8
) (
    input   logic               clk,
    input   logic               rst,
    input   logic               en,
    input   logic   [WIDTH-1:0] incr,
    output  logic   [WIDTH-1:0] cout
);

always_ff @ (posedge clk)
    if (rst)                cout <= {WIDTH{1'b0}};
    else                    cout <= cout + incr;

endmodule
