module all_gates_tb;
wire and_out, nand_out, or_out, nor_out, xor_out, xnor_out, not_out;
reg a, b;
all_gates allg( and_out, nand_out, or_out, nor_out, xor_out, xnor_out, not_out, a,b);
initial begin
$dumpfile("all_gates_tb.vcd");
$dumpvars;
    a=0; b=0;
#10 a=0; b=1;
#10 a=1; b=0;
#10 a=1; b=1;
#10
$finish;
end
endmodule