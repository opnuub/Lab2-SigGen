module counter #(
    parameter WIDTH = 8
) (
    input   logic               clk,
    input   logic               rst,
    input   logic               en,
    output  logic   [WIDTH-1:0] cout
);

always_ff @ (posedge clk)
    if (rst)                cout <= {WIDTH{1'b0}};
    else                    cout <= cout + {{WIDTH-1{1'b0}}, en};

endmodule
