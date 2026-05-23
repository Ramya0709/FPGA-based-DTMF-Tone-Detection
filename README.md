# FPGA-based-DTMF-Tone-Detection
FPGA-based DTMF tone detection using the Goertzel Algorithm in Verilog HDL.

## Overview: 
This project implements a Dual-Tone Multi-Frequency (DTMF) tone detection system on FPGA using the Goertzel Algorithm. The system detects telephone keypad tones in real time and identifies the corresponding pressed key based on frequency analysis.

The design is implemented using Verilog and is targeted for FPGA platforms for efficient and high-speed digital signal processing applications.

## Tools and Technologies used
 * Verilog HDL
 * Xilinx Vivado
 * Kintex KC705 FPGA board

## Introduction to DTMF
DTMF (Dual-Tone Multi-Frequency) is the signaling technique used in telephone systems. Each key on a telephone keypad generates a combination of two frequencies:
  * One frequency from the low-frequency group
  * One frequency from the high-frequency group
The receiver detects these frequencies and determines the pressed key.

#### Standard DTMF Frequencies

| Key | Low Frequency (Hz) | High Frequency (Hz) |
|-----|-------------------|--------------------|
| 1   | 697               | 1209               |
| 2   | 697               | 1336               |
| 3   | 697               | 1477               |
| 4   | 770               | 1209               |
| 5   | 770               | 1336               |
| 6   | 770               | 1477               |
| 7   | 852               | 1209               |
| 8   | 852               | 1336               |
| 9   | 852               | 1477               |
| 0   | 941               | 1336               |
| *   | 941               | 1209               |
| #   | 941               | 1477               |

## Goertzel Algorithm
The Goertzel Algorithm is an efficient algorithm used to detect specific frequency components in a signal. Compared to FFT, it is computationally efficient when only a few target frequencies need to be detected, making it ideal for DTMF applications.
#### Advantages of Goertzel Algorithm
  * Low hardware complexity
  * Efficient frequency detection
  * Suitable for FPGA implementation
  * Reduced computational requirements
## Applications
  * Password-based security systems
  * Telephone signaling systems
  * Remote access systems
  * Interactive Voice Response (IVR)
  * FPGA-based DSP applications
