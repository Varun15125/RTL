# Combinational LED Circuit

`Combinational_ckt.v` implements `LED = ~S & P & V`. The testbench in
`Combinational_tb.v` checks two input cases and writes waveform data to
`dump.vcd`.

Compile and run with Icarus Verilog from this folder:

```sh
iverilog -s TB -o out.vvp Combinational_ckt.v Combinational_tb.v
vvp out.vvp
```