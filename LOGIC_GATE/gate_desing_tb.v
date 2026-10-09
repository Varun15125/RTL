

module gate_desing_tb();
    // declear var
    reg a,b;
    wire y;
    // desing call
    //  module_name 
    gate_desing dut (
        .a(a),
        .b(b),
        .y(y)
    );
    // simulate

    initial begin 
        a<=1'b0;
        b<=1'b0;

        #1;
        a<=1'b0;
        b<=1'b1;

        #1;
        a<=1'b1;
        b<=1'b0;

        #1;
        a<=1'b1;
        b<=1'b1;
        #1;
        $finish;
    end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,gate_desing_tb);
    end


endmodule
