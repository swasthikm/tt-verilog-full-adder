<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This circuit implements a two-bit adder, where each input has one bit.

`A + B + Cin = S with Cout`

## How to test

Switching A, B, Cin result in following Sum and Cout value.


| Cin     | A       | B      | S      | Cout   |
|---------|---------|--------|--------|--------|
| 0       | 0       | 0      | 0      | 0      |
| 0       | 0       | 1      | 1      | 0      |
| 0       | 1       | 0      | 1      | 0      |
| 0       | 1       | 1      | 0      | 1      |
| 1       | 0       | 0      | 1      | 0      |
| 1       | 0       | 1      | 0      | 1      |
| 1       | 1       | 0      | 0      | 1      |
| 1       | 1       | 1      | 1      | 1      |

## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
