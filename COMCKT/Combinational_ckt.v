//Cobinational ckt to glow led
module comckt(S,P,V,LED);

input S,P,V;
output LED;                                         

//Dataflow modeling
assign LED = (~S)&(P)&(V);
endmodule