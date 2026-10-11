module  TB;

reg S,P,V;
wire LED;

 comckt DUT(
    .S(S),
    .P(P),
    .V(V),
    .LED(LED)
 );
 initial
 begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
 end

 initial
 begin
    S=1'b0;
    P=1'b1;
    V=1'b0;
    #10;
    S=1'b0;
    P=1'b1;
    V=1'b1;
    #10;
end
endmodule