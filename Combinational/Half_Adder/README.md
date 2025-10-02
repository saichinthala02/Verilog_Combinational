# Full Adder in Verilog

This contains the implementation of a 1-bit Full Adder in Verilog using three different modeling styles:

- Dataflow Modeling → full_adder_dataflow.v  
- Behavioral Modeling → full_adder_behavioral.v  
- Structural (Gate-level) Modeling → full_adder_structural.v  

It also includes:  
- Testbench → tb_full_adder.v  
- ModelSim run script → run.do

## ⚙️ Full Adder Function

A **Full Adder** adds three 1-bit inputs:  
- **a** → First input  
- **b** → Second input  
- **cin** → Carry input  

It produces two outputs:  
- **sum** → Sum of inputs  
- **cout** → Carry output  

| a | b | cin | sum | cout |
|---|---|-----|-----|------|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

---

## Usage Notes

In the testbench (tb_full_adder.v), you must change the include statement to select which Full Adder model you want to test.
Example:

`include "full_adder_dataflow.v"      // Dataflow model

//`include "full_adder_behavioral.v"  // Uncomment for Behavioral model

//`include "full_adder_structural.v"  // Uncomment for Structural model

