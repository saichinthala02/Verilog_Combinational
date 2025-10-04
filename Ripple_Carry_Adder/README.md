# 4-Bit Full Adder in Verilog Using Half Adders

## Project Overview

This project implements a **4-bit full adder** in Verilog using a hierarchical approach:

1. **Half Adder** – Basic 1-bit adder.
2. **Full Adder** – Built using two half adders.
3. **4-Bit Adder** – Constructed by cascading 4 full adders (ripple-carry).

A testbench is included to simulate random inputs and verify functionality.

---

## Modules Description

### 1. Half Adder

```verilog
module half_adder(a,b,sum,carry);
	input a,b;
	output sum,carry;

	assign sum = a^b;
	assign carry = a&b;
endmodule
```

* **Inputs:** `a`, `b` (1-bit each)
* **Outputs:** `sum` (XOR), `carry` (AND)
* Sum: `sum = a XOR b`
* Carry: `carry = a AND b`

---

### 2. Full Adder using Half Adders

```verilog
module full_adder(a,b,c,sum,carry);
	input a,b,c;
	output sum,carry;
	wire w1,w2,w3;

	half_adder h1(a,b,w1,w2);
	half_adder h2(w1,c,sum,w3);

	or(carry,w2,w3);
endmodule
```

* **Inputs:** `a`, `b` (operands), `c` (carry-in)
* **Outputs:** `sum`, `carry`
* **Logic:**

  1. First half-adder: add `a` and `b` → `w1` (sum), `w2` (carry)
  2. Second half-adder: add `w1` and `c` → `sum`, `w3` (carry)
  3. Carry-out: `carry = w2 OR w3`

---

### 3. 4-Bit Full Adder

```verilog
module top_4bit(a,b,c,sum,carry);
	input [3:0]a,b;
	input c;
	output [3:0] sum;
	output carry;
	wire w1,w2,w3;

	full_adder f1(a[0],b[0],c,sum[0],w1);
	full_adder f2(a[1],b[1],w1,sum[1],w2);
	full_adder f3(a[2],b[2],w2,sum[2],w3);
	full_adder f4(a[3],b[3],w3,sum[3],carry);
endmodule
```

* **Inputs:** `a`, `b` (4-bit operands), `c` (carry-in)
* **Outputs:** `sum` (4-bit), `carry` (final carry-out)
* **Logic:** Uses ripple-carry method. Each full adder’s carry is the next adder’s carry-in.

---

### 4. Testbench

```verilog
module test;
	reg [3:0]a,b;
	reg c;
	wire [3:0] sum;
	wire carry;
	top_4bit dut(a,b,c,sum,carry);

	initial begin
		$display("----------------------------------");
		$display("  a       b     c    sum    carry");
		$display("----------------------------------");
		repeat(10) begin
			c=1'b0;
			{a,b}=$random;
			#2 $display("%b    %b    %b    %b    %b",a,b,c,sum,carry);
		end
		$display("----------------------------------");
	end
endmodule
```

* Generates random 4-bit values for `a` and `b`
* Initializes carry-in `c = 0`
* Displays 10 test cases

---

## Simulation Output Example

```
----------------------------------
  a       b     c    sum    carry
----------------------------------
0010    0100    0    0110    0
1000    0001    0    1001    0
0000    1001    0    1001    0
0110    0011    0    1001    0
0000    1101    0    1101    0
1000    1101    0    0101    1
0110    0101    0    1011    0
0001    0010    0    0011    0
0000    0001    0    0001    0
0000    1101    0    1101    0
----------------------------------
```

---

## Key Points

1. Hierarchical design improves modularity and readability.
2. Ripple-carry adders are simple but have propagation delay.
3. Testbench demonstrates random input verification.
4. Can be extended to N-bit adders using the same structure.

---

---

## Conclusion

This project demonstrates **basic digital design hierarchy** in Verilog. It shows modular design using half adders → full adder → 4-bit ripple-carry adder, along with functional testing using a testbench.
