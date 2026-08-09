# Johnson Counter Using Verilog HDL

## 📌 Project Overview

This project implements a 4-bit Johnson Counter using Verilog HDL.

A Johnson Counter, also called a Twisted Ring Counter, is a type of
shift register in which the inverted output of the last flip-flop is
fed back to the input of the first flip-flop.

For a 4-bit Johnson Counter, there are 8 unique states.

The counter sequence is:

0000 → 0001 → 0011 → 0111 → 1111 → 1110 → 1100 → 1000 → 0000

---

## 🎯 Objectives

- Design a 4-bit Johnson Counter using Verilog HDL
- Understand the working principle of a twisted ring counter
- Implement a synchronous counter
- Implement reset functionality
- Verify the design using a testbench
- Generate and analyze simulation waveforms
- Upload the complete project to GitHub

---

## 🧠 What is a Johnson Counter?

A Johnson Counter is a shift register where the inverted output of
the last flip-flop is connected to the input of the first flip-flop.

It is also known as:

- Twisted Ring Counter
- Switch-tail Ring Counter

For an N-bit Johnson Counter, the number of unique states is:

2N

Therefore, a 4-bit Johnson Counter has:

8 unique states

---

## ⚙️ Design Specifications

| Parameter | Value |
|-----------|-------|
| Counter Type | Johnson Counter |
| Number of Bits | 4 |
| HDL | Verilog |
| Clock | Positive Edge |
| Reset | Active High |
| Number of States | 8 |
| Initial State | 0000 |

---

## 🔌 Input Signals

### `clk`

Clock signal used to control the counter.

### `reset`

Active-high reset signal.

When reset is HIGH, the counter is initialized to:

```text
0000