module gate_design_tb();
    reg a, b;
    wire y;

    // Instantiate the design under test
    gate_design dut (
        .a(a),
        .b(b),
        .y(y)
    );

    // Stimulus block
    initial begin 
        a = 1'b0;
        b = 1'b0;
        #10;
        a = 1'b0;
        b = 1'b1;
        #10;
        a = 1'b1;
        b = 1'b0;
        #10;
        a = 1'b1;
        b = 1'b1;
        #10;
        $display("Simulation finished successfully.");
        $finish;
    end

    // VCD Dump block
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, gate_design_tb);
    end
endmodule