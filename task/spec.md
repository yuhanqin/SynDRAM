# SynDRAM Digital-Input Benchmark Specification

Version 1.0 — Academic Release

## About This Specification

This open specification defines the digital-input protocol used by the SynDRAM benchmark. It is published for academic research, evaluation, education, and reproducibility. It defines the trace-visible interface, legal command and state behavior, configuration dependencies, and timing rules needed to generate and evaluate pin-level DRAM stimulus.

This document is the public protocol contract for SynDRAM. It defines the interface, commands, states, configuration fields, and timing relationships used by the benchmark.

---

# 1 Scope

This specification defines a digital, pin-level SynDRAM device configuration with one 8-Gb x24, single-rank device composed of two x12 sub-channels. It includes the protocol rules needed to generate and judge DRAM input traces, including raw command decoding, address routing, state, configuration, synchronization, and command timing.

DQ ODT and NT-ODT configuration-dependent timing are defined for this target device. CS0 and CS1 identify sub-channels, not ranks.

Each trace begins at a declared completed-initialization boundary with the device in Idle state and the selected operating configuration active.

---

# 2 Overview

## 2.1 Features

SynDRAM provides two independently addressed sub-channels, burst-oriented memory commands, configurable frequency set points, command-bus training, dynamic-efficiency operation, refresh and power states, and configuration-dependent command timing.

## 2.2 Functional Description

The defined device is one x24 SynDRAM die with two x12 sub-channels. Each sub-channel has four bank groups with four banks per bank group, its own CS, CA[3:0], CK pair, WCK pair, and twelve DQ pins. CA is sampled on both CK edges when qualified by CS; most functional commands occupy 2nCK. WCK:CK is 2:1 and WCK must follow the defined synchronization rules when restarted.

Accesses are burst oriented. ACT-1/ACT-2 select a bank and row before a defined read or write selects the bank and starting column. The trace boundary starts after required device initialization.

### 2.2.1 Pad Definition and Description

**Table 1 — Pad Definition and Description**

| Symbol | Type | Description | Note |
|---|---|---|---|
| CK0_t, CK0_c; CK1_t, CK1_c | Input | Clock: CK_t and CK_c are differential clock inputs. All Double Data Rate (DDR) Command/Address inputs are sampled on both crossing points of CK_t and CK_c. The first crossing point is the rising (falling) edge of CK_t (CK_c) and the second crossing point is the falling (rising) edge of CK_t (CK_c). Single Data Rate (SDR) CS is sampled on the crossing point that is the rising (falling) edge of CK_t (CK_c). One pair for each sub-channel. | |
| CS0, CS1 | Input | Chip Select: CS is part of the command code, and is sampled on the rising (falling) edge of CK_t (CK_c) unless the device is in Power Down mode where it becomes an asynchronous signal. | 1 |
| CA0[3:0], CA1[3:0] | Input | Command/Address Inputs: CA signals provide the command and address input according to the Command Truth Table. | 1 |
| DQ0[11:0], DQ1[11:0] | I/O | Data Input/Output: bidirectional data bus. | 1, 2 |
| WCK0_t, WCK0_c; WCK1_t, WCK1_c | Input | Data Clocks: WCK_t and WCK_c are differential clocks used for WRITE data capture and READ data output. One pair for each sub-channel. | 1 |

NOTE 1: Sub-channel 0 and sub-channel 1 have independent pads.

NOTE 2: SynDRAM has no DMI pin.

DQ and WCK inputs participate in write and command-bus-training behavior. Read completion is represented by its command, configuration, burst duration, and timing relationships.

### 2.2.2 Device Organization

#### 2.2.2.1 x24 Normal Mode

Normal mode exposes two independently pinned x12 sub-channels. Each sub-channel contains four bank groups with four banks per bank group and has its own CS, CA, CK, WCK, and DQ signals.

#### 2.2.2.2 x12 Dynamic Efficiency Mode

MR0 OP[3] identifies the primary and secondary sub-channels. MR1 OP[6] controls the Normal-to-Dynamic transition. In Dynamic Efficiency mode, the primary x12 interface accesses the two internal bank-group sets while the secondary external interface is inactive.

### 2.2.3 SynDRAM SDRAM Addressing

**Table 2 — SynDRAM SDRAM x12 Addressing for Normal (No-Efficiency) Mode**

| Sub-channel density | 4 Gb |
|---|---:|
| Number of banks in a bank group | 4 |
| Number of bank groups | 4 |
| Array prefetch | 256 |
| Number of rows | 16,384 |
| Number of columns | 64 |
| Page size | 2,048 bytes |
| Density | 4,294,967,296 bits |
| Bank address | BA0--BA1 |
| Bank-group address | BG0--BG1 |
| Row address | R0--R13 |
| Column address | C0--C5 |
| Native burst length | 24 |

The 4-Gb sub-channel column is defined because two such sub-channels form the selected 8-Gb die.

**Table 3 — SynDRAM SDRAM x12 Addressing for Efficiency Mode**

| Die density | 8 Gb |
|---|---:|
| Number of sub-channels | 2 |
| Number of banks in a bank group | 4 |
| Number of bank groups | 4 |
| Array prefetch | 256 |
| Number of rows | 16,384 |
| Number of columns | 64 |
| Page size | 2,048 bytes |
| Density | 8,589,934,592 bits |
| Bank address | BA0--BA1 |
| Bank-group address | BG0--BG1 |
| Row address | R0--R13 |
| Column address | C0--C5 |
| Native burst length | 24 |

## 2.3 Speed Grade

**Table 4 — SynDRAM Speed Grade and Support Function**

| Speed grade | Function | Status | 1600 Mbps | 8533 Mbps | Notes |
|---|---|---|---:|---:|---:|
| SynDRAM | VDD2C DVFSH | Disable | S | S | 1 |
| SynDRAM | VDD2D DVFSB | Disable | S | S | 2 |
| SynDRAM | VDD2D DVFSL | Disable | S | S | 3 |
| SynDRAM | VDDQ DVFSQ | Disable | S | S | 4 |

`S` means supported. VDD2C DVFSH is enabled or disabled by MR11 OP[2]; VDD2D DVFSB by MR11 OP[3]; VDD2D DVFSL by MR11 OP[4]; and VDDQ DVFSQ by MR11 OP[5]. DVFSQ must be enabled when DVFSL is enabled.

## 2.4 Data Packet Format

Transaction traces represent command placement, address and configuration attributes, burst length, WCK activity, and timing. DQ payload values are abstracted.

### 2.4.1 Read Burst Chunk and Order

#### 2.4.1.1 Read Transaction Representation

A read transaction records the input command, selected address, active configuration, burst duration, and scheduling constraints.

#### 2.4.1.2 Read Burst Chunk and Sequence

The defined command model distinguishes 32-byte BL24 and 64-byte BL48 access. BL24 has a fixed burst start order. BL48 uses C0 to select its burst start order. At data rates no greater than 6400 Mbps, BL48 is gapless; above 6400 Mbps it is interleaved with a 24-beat gap. Consequently FSP0 (1600 Mbps) exercises the gapless branch and FSP1 (8533 Mbps) exercises the interleaved branch.

Section 8 defines the command-spacing requirements for these burst sequences.

### 2.4.2 Write Burst Chunk and Order

The command model distinguishes fixed-order 32-byte BL24 writes and fixed-order 64-byte BL48 writes. Data rates up to 6400 Mbps use gapless BL48; higher data rates use interleaved BL48 with a 24-beat gap. The trace records the payload interval as WCK-qualified activity.

# 3 WCK Clocking

SynDRAM command/address input uses differential CK_t/CK_c. CA is sampled DDR at the defined CK crossings, while CS qualifies every other command cycle. The data interface uses a differential forwarded WCK_t/WCK_c pair per sub-channel. WCK operates at twice CK frequency and samples write-side DQ on both WCK crossings.

WCK must begin toggling before a defined write-data burst. A command carrying the WS operand can initiate WCK2CK synchronization; after synchronization the internal WCK phases are aligned for the burst.

## 3.1 Clocking and Interface Relationship

Trace evaluation uses CK/WCK phase, synchronization state, and the command and burst intervals that depend on them.

## 3.2 WCK2CK Sync Operation

A read with WS asserted consists of the static and toggling WCK preamble portions, WCK enable latency, the burst interval, and postamble.

**Table 5 — Example Clock and Interface Signal Frequency Relationship**

| Pin | Speed | Unit |
|---|---:|---|
| CK_t, CK_c | 2400 | MHz |
| Command/Address | 4800 | Mbps/pin |
| WCK_t, WCK_c | 4800 | MHz |
| DQ | 9600 | Mbps/pin |

## 3.3 WCK Clocking Relationships

External CK, CA, and WCK determine the internal phase and synchronization relationship used by command-timing evaluation.

---

# 4 Initialization and Training

## 4.1 Training

### 4.1.1 SynDRAM Command Bus Training (CBT)

#### 4.1.1.1 Introduction

CBT trains the CA[3:0] input using CK, CS qualification, and a long CA PRBS burst. The device samples CA on R1/F1/R2/F2 while CS is high. Functional commands do not execute while CBT is active.

CBT begins from the declared initialized state and trains CA sampling at the selected frequency set point.

#### 4.1.1.2 Entry and Exit for CBT Mode

CBT entry begins at low frequency with MRW-1/MRW-2 setting MR16 OP[6]=0B and MR16 OP[5:4] to the selected CBT FSP. Before MRW-2, WCK is at the valid static level, DQ[6:0] are valid, and DQ[11], DQ[10], and DQ[9] are low. After tCBTWCKPRE_static, WCK may toggle. DQ[11] rises only after tWCK2DQ11H; when its high level is sampled by WCK, the device switches to the selected CBT FSP.

For exit, CK first returns to the low-frequency point. DQ[11] then falls while tDQ11LCK, tWCK2DQ11H, and tDQ11HWCK are satisfied. After tCKSNOFF the host issues CK Sync NOP; after tCKSNC it issues MRW-1/MRW-2 with MR16 OP[5:4]=00B. DQ[11], DQ[10], DQ[9], and WCK remain valid through tMRD. The prior operational FSP is restored.

#### 4.1.1.3 Frequency Set Point (FSP) and Frequency Switching

MR13 OP[5:4] selects the FSP-WR set to be programmed before CBT. MR16 selects the CBT FSP used after DQ[11] is sampled high. DQ[11] low restores the FSP that was active before CBT. FSP0 operates at 1600 Mbps and FSP1 operates at 8533 Mbps.

#### 4.1.1.4 VREF CA and DQ Bus Input/Output Control During CBT Mode

DQ[6:0] carry the temporary VREF(CA) code and DQ[10] strobes its capture. DQ[7] is unused during input mode but remains at a valid level. DQ[6:0] remain stable for tDStrain+tDHtrain and DQ[10] remains high for tDHtrain. A VREF update is not accepted until tDQ11HWCK and tDQ112DQ after DQ[11] rises, and the new setting settles for `tVREF_LONG` or `tVREF_SHORT` before a new CA PRBS burst.

**Table 6 — Mapping of MR12 OP Code and DQ Numbers**

| Mapping | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---|---|---|---|---|---|---|---|
| MR12 OP code | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
| DQ Number | DQ[6] | DQ[5] | DQ[4] | DQ[3] | DQ[2] | DQ[1] | DQ[0] |

#### 4.1.1.5 CK Sync OFF and LFSR Reset

The frequency change on CBT entry/exit requires CK sync off and sync on. DQ[11] performs sync off; CK Sync NOP performs sync on after the frequency change. DQ[9], sampled using WCK, resets the LFSR and comparison state.

#### 4.1.1.6 Data Bit (DQ) Function during CBT

**Table 7 — Data Bit (DQ) Function during CBT**

| DQ Number | DQ Functions during CBT |
|---|---|
| DQ[6:0] | Input pins for setting VREF(CA) level |
| DQ[11] | FSP switching and CK Sync Off; CBT entry/exit |
| DQ[10] | Latch VREF setting; switch between DQ input and output modes |
| DQ[9] | Reset LFSR and comparison state |

#### 4.1.1.7 PRBS Generator for CBT

The generator is PRBS16 with polynomial X^16 + X^14 + X^9 + X^4 + 1 and default seed 16'h4411. Every fourth LFSR bit supplies CA; the least-significant phases supply rising-edge CA and the most-significant phases supply falling-edge CA.

**Table 8 — LFSR Pattern**

| PRBS state | CA_F2[3] | CA_F2[2] | CA_F2[1] | CA_F2[0] | CA_R2[3] | CA_R2[2] | CA_R2[1] | CA_R2[0] | CA_F1[3] | CA_F1[2] | CA_F1[1] | CA_F1[0] | CA_R1[3] | CA_R1[2] | CA_R1[1] | CA_R1[0] |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 16'h4411 | 0 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 1 |
| 16'h8300 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 16'h4180 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 16'h20c0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| 16'h1060 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 0 | 0 |
| 16'h0830 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 0 |
| 16'h0418 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | 0 | 0 |
| 16'h020c | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | 0 |
| 16'h0106 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 |

The generator restarts from 16'h4411 when re-enabled; the first transmitted CA pattern with CS high is 16'h8300.

#### 4.1.1.8 Command Bus Training Sequence

CA sampling occurs while CS is asserted, using R1/F1/R2/F2 as in normal command input. Before a burst, the host resets LFSR/comparison state with a DQ[9] pulse and then drives the matching PRBS sequence on CA.

#### 4.1.1.9 Training Sequence Steps for Single-Rank Systems

The defined sequence is:

1. Select FSP1 through FSP-WR and program its defined high-frequency settings. 2. Select CBT for FSP1 in MR16 and issue MRW-1/MRW-2. 3. Drive DQ[11] high, switch CK to the FSP1 rate, and issue CK Sync NOP. 4. If VREF(CA) is updated, drive DQ[6:0] and strobe DQ[10] with the defined setup, hold, and settling times. 5. Pulse DQ[9], then drive a CS-qualified CA PRBS burst. 6. Return CK to FSP0, drive DQ[11] low, issue CK Sync NOP, and issue the CBT-exit MRW-1/MRW-2. 7. Keep CBT control pins valid through tMRD, write any selected value to the operational FSP register, then switch to FSP1 for normal operation.

# 5 SynDRAM State Model

The state model identifies the persistent and temporary states used by trace generation and evaluation. The Command Truth Table, command-operation rules, mode-register state, and timing tables jointly determine input legality.

## 5.1 Persistent States

The persistent states are Idle, Bank Active, Power Down, Self Refresh, Dynamic Efficiency, and Command Bus Training. Bank state is maintained independently for every bank in each sub-channel.

## 5.2 Command Transitions

ACT-1/ACT-2 moves the selected bank from Idle to Bank Active. Read and Write operate on an active bank. Auto Precharge and PRE return the selected bank to Idle. REFdb and REFab perform refresh from valid idle-bank conditions. SRE/SRX enter and exit Self Refresh; PDE/PDX enter and exit Power Down. MRR, MRW/FSP, CAS/WCK2CK synchronization, and CBT use temporary command states with their specified completion times.

## 5.3 State-Transition Rules

- Idle means all banks are precharged.
- Bank Active may enter CAS/WCK2CK synchronization before a Read or Write.
- A dual-bank refresh may proceed when both selected banks satisfy its idle and timing preconditions.
- State transitions observe the mode-register configuration and the command-timing rules in Sections 6--10.

---

# 6 Mode Register

SynDRAM has an independent mode-register set for each sub-channel. The two sub-channels operate at the same frequency.

## 6.1 Mode Register Assignment and Definition in SynDRAM SDRAM

**Table 9 — Mode Register Assignment in SynDRAM SDRAM**

| MR# | MA[6:0] | Access | OP[7] | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---:|---|---|---|---|---|---|---|---|---|---|
| 0 | 00H | R | Density per die | Density per die | Density per die | Density per die | Sub-Ch. | Eff. Status | Type | Type |
| 1 | 01H | R/W | Eff. Latency | Eff. CTL | WLS | RL/WL/nWTP/nRTP/nACU | RL/WL/nWTP/nRTP/nACU | RL/WL/nWTP/nRTP/nACU | RL/WL/nWTP/nRTP/nACU | RL/WL/nWTP/nRTP/nACU |
| 4 | 04H | R | Don't care | Don't care | Don't care | RM | RM | RM | RM | RM |
| 10 | 0AH | W | RDQS PST Length | RDQS PST Length | RDQS PST Mode | RDQS PRE | RDQS PRE | RDQS PRE | RDQS RT | RDQS PS |
| 11 | 0BH | W | Don't care | WCK FM | DVFSQ | DVFSL | DVFSB | DVFSH | RFU | RFU |
| 12 | 0CH | R/W | RFU | VREF(CA) | VREF(CA) | VREF(CA) | VREF(CA) | VREF(CA) | VREF(CA) | VREF(CA) |
| 13 | 0DH | R/W | FSP-OP | FSP-OP | FSP-WR | FSP-WR | Don't care | Don't care | Don't care | Don't care |
| 16 | 10H | W | RFU | CBT Select | CBT | CBT | Don't care | Don't care | RFU | RFU |
| 19 | 13H | R/W | RFU | RFU | Don't care | Don't care | Don't care | DQ ODT | DQ ODT | DQ ODT |
| 20 | 14H | R/W | RFU | RFU | DQ WR NT-ODT | DQ WR NT-ODT | DQ WR NT-ODT | DQ NT-ODT | DQ NT-ODT | DQ NT-ODT |
| 22 | 16H | W | WCK PST | WCK PST | WCK ON | CK Mode | WCK Mode | WCK Mode | RDQS | RDQS |
| 25 | 19H | W | Optimized Refresh Mode | Don't care | Don't care | Don't care | RFU | RFU | RFU | RFU |
| 26 | 1AH | W | RFU | RFU | Don't care | Don't care | WSOE | Don't care | Don't care | Don't care |

## 6.2 Mode Register Definition

### 6.2.1 MR0

**Table 10 — MR0 Register Information**

| OP[7] | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---|---|---|---|---|---|---|---|
| Density per die | Density per die | Density per die | Density per die | Sub-Ch | Eff. status | Type | Type |

**Table 11 — MR0 Definition**

| Function | Register type | Operand | Defined data |
|---|---|---|---|
| Type (support data rate) | Read-only | OP[1:0] | `00B`: up to 10667 Mbps |
| Efficiency-mode status | Read-only | OP[2] | `0B`: device is switchable between Normal and Dynamic Efficiency |
| Sub-channel indicator | Read-only | OP[3] | `0B`: SC0/Primary; `1B`: SC1/Secondary |
| Density per die | Read-only | OP[7:4] | `0010B`: 8 Gb |

### 6.2.2 MR1

**Table 12 — MR1 Register Information**

| OP[7] | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---|---|---|---|---|---|---|---|
| Eff. Latency | Eff. CTL | WLS | RL/WL/nWTP/nRTP/nACU | RL/WL/nWTP/nRTP/nACU | RL/WL/nWTP/nRTP/nACU | RL/WL/nWTP/nRTP/nACU | RL/WL/nWTP/nRTP/nACU |

**Table 13 — MR1 Definition**

| Function | Register type | Operand | Defined data |
|---|---|---|---|
| RL/WL/nWTP/nRTP/nACU | R/W | OP[4:0] | See Tables 15--16 |
| WLS | R/W | OP[5] | `0B`: Write Latency Set A |
| Efficiency control | R/W | OP[6] | `0B`: Normal; `1B`: Dynamic Efficiency |
| Efficiency latency | Read-only | OP[7] | `0B`: Normal latency; `1B`: Efficiency-mode latency |

**Table 14 — RL/WL/nWTP/nRTP/nACU Setting Summary**

| Operating mode | Read DBI | Efficiency Mode | DVFSL | Write Link Protection | Read Link Protection |
|---|---|---|---|---|---|
| Normal | Disable | Disable | Disable | Disable | Disable |
| Dynamic Efficiency | Disable | Enable | Disable | Disable | Disable |

**Table 15 — RL/WL/nWTP/nRTP/nACU, Efficiency Disabled**

| MR1 OP[4:0] | RL [nCK] | WL Set A [nCK] | nWTP [nCK] | nRTP BL24 [nCK] | nRTP BL48 [nCK] | nACU [nCK] |
|---|---:|---:|---:|---:|---:|---:|
| `00001B` | 9 | 6 | 6 | 7 | 13 | 9 |
| `01011B` | 46 | 22 | 26 | 11 | 23 | 47 |

**Table 16 — RL/WL/nWTP/nRTP/nACU, Efficiency Enabled**

| MR1 OP[4:0] | RL [nCK] | WL Set A [nCK] | nWTP [nCK] | nRTP BL24 [nCK] | nRTP BL48 [nCK] | nACU [nCK] |
|---|---:|---:|---:|---:|---:|---:|
| `00001B` | 10 | 6 | 6 | 7 | 13 | 9 |
| `01011B` | 50 | 22 | 30 | 11 | 23 | 47 |

### 6.2.3 MR4

**Table 17 — MR4 Register Information**

| OP[7] | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---|---|---|---|---|---|---|---|
| Don't care | Don't care | Don't care | Refresh Multiplier | Refresh Multiplier | Refresh Multiplier | Refresh Multiplier | Refresh Multiplier |

**Table 18 — MR4 Definition**

| Function | Register type | Operand | Defined data |
|---|---|---|---|
| Refresh Multiplier (RM) | Read-only | OP[4:0] | `01001B`: 1x |

The defined code supplies the 1x multiplier used by `tREFI`, `tREFIdb`, and `tREFW` and by defined maximum-`tRAS` rules.

### 6.2.4 MR10

**Table 19 — MR10 Register Information**

| OP[7] | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---|---|---|---|---|---|---|---|
| RDQS PST Length | RDQS PST Length | RDQS PST Mode | RDQS PRE | RDQS PRE | RDQS PRE | RDQS RT | RDQS PS |

**Table 20 — MR10 Definition**

| Function | Register type | Operand | Defined data |
|---|---|---|---|
| RDQS PS (RDQS Pre-Shift) | Write-only | OP[0] | `0B`: 0*tWCK (default) |
| RDQS RT (RDQS to WCK Ratio) | Write-only | OP[1] | `0B`: WCK:RDQS ratio = 1:1 (default) |
| RDQS PRE (RD Pre-amble Length) | Write-only | OP[4:2] | `000B`: 4*tWCK static, 0*tWCK toggle (default); `001B`: 2*tWCK static, 2*tWCK toggle |
| RDQS PST Mode (RDQS Post-amble Mode) | Write-only | OP[5] | `0B`: Toggle Mode (default); `1B`: Static Mode |
| RDQS PST Length (RDQS Post-amble Length) | Write-only | OP[7:6] | `00B`: 0.5*tWCK (default); `01B`: 2.5*tWCK; `10B`: 4.5*tWCK; `11B`: Reserved |

Operation uses the bank selected by MR13 OP[7:6] (FSP-OP). Writes to an inactive bank take effect when that bank becomes active. The selected postamble length supplies tRPST in the timing expressions; MR22's WCK postamble must exceed this length.

### 6.2.5 MR11

**Table 21 — MR11 Register Information**

| OP[7] | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---|---|---|---|---|---|---|---|
| Don't care | WCK FM | DVFSQ | DVFSL | DVFSB | DVFSH | RFU | RFU |

**Table 22 — MR11 Definition**

| Function | Register type | Operand | Defined data |
|---|---|---|---|
| DVFSH | Write-only | OP[2] | `0B`: disabled |
| DVFSB | Write-only | OP[3] | `0B`: disabled |
| DVFSL | Write-only | OP[4] | `0B`: disabled |
| DVFSQ | Write-only | OP[5] | `0B`: disabled |
| WCK Frequency Mode | Write-only | OP[6] | FSP0: `0B` low-frequency mode; FSP1: `1B` high-frequency mode |

FSP staging and activation are governed by MR13; the four DVFS controls have fixed-zero values.

### 6.2.6 MR12

**Table 23 — MR12 Register Information**

| OP[7] | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---|---|---|---|---|---|---|---|
| RFU | VREF(CA) | VREF(CA) | VREF(CA) | VREF(CA) | VREF(CA) | VREF(CA) | VREF(CA) |

**Table 24 — MR12 Definition**

| Function | Register type | Operand | Defined data |
|---|---|---|---|
| CA VREF setting | R/W | OP[6:0] | See Table 25 |

**Table 25 — Defined CA VREF Encodings**

| MR12 OP[6:0] | CA VREF percentage |
|---|---:|
| `1010000B` | 50.0% |
| `1010001B` | 50.5% |

The temporary DQ[6:0]/DQ[10] update path during CBT is defined.

### 6.2.7 MR13

**Table 26 — MR13 Register Information**

| OP[7] | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---|---|---|---|---|---|---|---|
| FSP-OP | FSP-OP | FSP-WR | FSP-WR | Don't care | Don't care | Don't care | Don't care |

**Table 27 — MR13 Definition**

| Function | Register type | Operand | Defined data |
|---|---|---|---|
| FSP-WR | R/W | OP[5:4] | `00B`: FSP0; `01B`: FSP1 |
| FSP-OP | R/W | OP[7:6] | `00B`: FSP0; `01B`: FSP1 |

FSP-WR identifies the staged-write set; FSP-OP identifies the active set.

### 6.2.8 MR16

**Table 28 — MR16 Register Information**

| OP[7] | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---|---|---|---|---|---|---|---|
| RFU | CBT Select | CBT | CBT | Don't care | Don't care | RFU | RFU |

**Table 29 — MR16 Definition**

| Function | Register type | Operand | Defined data |
|---|---|---|---|
| CBT | Write-only | OP[5:4] | `00B`: normal operation; `01B`: CBT with FSP0; `10B`: CBT with FSP1 |
| CBT Select | Write-only | OP[6] | `0B`: CBT |

### 6.2.9 MR19

**Table 30 — MR19 Register Information**

| OP[7] | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---|---|---|---|---|---|---|---|
| RFU | RFU | Don't care | Don't care | Don't care | DQ ODT | DQ ODT | DQ ODT |

**Table 31 — MR19 Definition**

| Function | Register type | Operand | Defined data |
|---|---|---|---|
| DQ ODT | R/W | OP[2:0] | `000B`: disabled (default); `001B`: RZQ/1; `010B`: RZQ/2; `011B`: RZQ/3; `100B`: RZQ/4; `101B`: RZQ/5; `110B`: RZQ/6; `111B`: RFU |

DQ ODT selects the disabled or enabled digital command-timing matrices in Section 8.3. Writing an inactive set point leaves active operation unchanged. SynDRAM defines FSP0 and FSP1.

### 6.2.10 MR20

**Table 32 — MR20 Register Information**

| OP[7] | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---|---|---|---|---|---|---|---|
| RFU | RFU | DQ WR NT-ODT | DQ WR NT-ODT | DQ WR NT-ODT | DQ NT-ODT | DQ NT-ODT | DQ NT-ODT |

**Table 33 — MR20 Definition**

| Function | Register type | Operand | Defined data |
|---|---|---|---|
| DQ NT-ODT | R/W | OP[2:0] | `000B`: disabled (default); `001B`: RZQ/1; `010B`: RZQ/2; `011B`: RZQ/3; `100B`: RZQ/4; `101B`: RZQ/5; `110B`: RZQ/6; `111B`: RFU |
| DQ WR NT-ODT | R/W | OP[5:3] | `000B`: disabled (default) |

Inactive set-point contents may change without affecting active operation. Only FSP0/FSP1 are defined. DQ NT-ODT's target-device timing effects are defined.

### 6.2.11 MR22

**Table 34 — MR22 Register Information**

| OP[7] | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---|---|---|---|---|---|---|---|
| WCK PST | WCK PST | WCK ON | CK Mode | WCK Mode | WCK Mode | RDQS | RDQS |

**Table 35 — MR22 Definition**

| Function | Register type | Operand | Defined data |
|---|---|---|---|
| RDQS | Write-only | OP[1:0] | `00B`: disabled; `01B`: RDQS_t enabled (default); `10B`: RDQS_t and RDQS_c enabled; `11B`: RDQS_c enabled |
| WCK Mode | Write-only | OP[3:2] | `00B`: differential |
| CK Mode | Write-only | OP[4] | `0B`: differential |
| WCK Always-On | Write-only | OP[5] | `0B`: disabled; `1B`: enabled |
| WCK postamble | Write-only | OP[7:6] | `00B`: 2.5 x tWCK (default); `01B`: 4.5 x tWCK; `10B`: 6.5 x tWCK; `11B`: reserved |

The WCK postamble setting applies identically to read and write operation timing.

RDQS configuration is defined as a timing selector, not as a DUT-output correctness target. WCK Always-On remains modifiable.

### 6.2.12 MR25

**Table 36 — MR25 Register Information**

| OP[7] | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---|---|---|---|---|---|---|---|
| Optimized Refresh Mode | Don't care | Don't care | Don't care | RFU | RFU | RFU | RFU |

**Table 37 — MR25 Definition**

| Function | Register type | Operand | Defined data |
|---|---|---|---|
| Optimized Refresh Mode | Write-only | OP[7] | `0B`: disabled |

### 6.2.13 MR26

**Table 38 — MR26 Register Information**

| OP[7] | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---|---|---|---|---|---|---|---|
| RFU | RFU | Don't care | Don't care | WSOE | Don't care | Don't care | Don't care |

**Table 39 — MR26 Definition**

| Function | Register type | Operand | Defined data |
|---|---|---|---|
| WCK Sync-Off Extension Enable (WSOE) | Write-only | OP[3] | `0B`: disabled; `1B`: enabled |

## 6.3 Mode-Register State Rules

- Each sub-channel owns an independent register set.
- Dynamic Efficiency uses the broadcast and coherence rules in Section 7.8.11.
- Fixed operands are observable command preconditions.

---

# 7 Command and Operation

This chapter defines the commands accepted by SynDRAM and their state transitions.

## 7.1 Command Truth Table

**Table 40 — Command Truth Table**

| SDRAM command | CS | CA0 | CA1 | CA2 | CA3 | CK_t edge | Notes |
|---|---|---|---|---|---|---|---|
| DESELECT (DES) | L | X | X | X | X | R1 | 2 |
|  | X | X | X | X | X | F1 | 2 |
| NO OPERATION (NOP) | H | L | L | L | V | R1 | 1, 2 |
|  | X | L | L | L | V | F1 | 1, 2 |
|  | H | X | X | X | X | R2 | 1, 2 |
|  | X | X | X | X | X | F2 | 1, 2 |
| POWER DOWN ENTRY (PDE) | H | L | L | L | V | R1 | 1, 2, 9 |
|  | X | L | H | L | V | F1 | 1, 2, 9 |
|  | H | X | X | X | X | R2 | 1, 2, 9 |
|  | X | X | X | X | X | F2 | 1, 2, 9 |
| SELF REFRESH ENTRY (SRE) | H | L | L | L | V | R1 | 1, 2, 8 |
|  | X | L | L | H | PD | F1 | 1, 2, 8 |
|  | H | X | X | X | X | R2 | 1, 2, 8 |
|  | X | X | X | X | X | F2 | 1, 2, 8 |
| SELF REFRESH EXIT (SRX) | H | L | L | L | V | R1 | 1, 2 |
|  | X | L | H | H | V | F1 | 1, 2 |
|  | H | X | X | X | X | R2 | 1, 2 |
|  | X | X | X | X | X | F2 | 1, 2 |
| PRECHARGE (PRE), per/all bank | H | L | L | L | V | R1 | 1, 2, 3, 5, 12 |
|  | X | H | H | V | SC | F1 | 1, 2, 3, 5, 12 |
|  | H | V | V | V | AB | R2 | 1, 2, 3, 5, 12 |
|  | X | BA0 | BA1 | BG0 | BG1 | F2 | 1, 2, 3, 5, 12 |
| REFRESH (REF), dual/all bank | H | L | L | L | V | R1 | 1, 2, 3, 5, 11, 12 |
|  | X | H | L | L | SC | F1 | 1, 2, 3, 5, 11, 12 |
|  | H | dBG0 | dBG1 | V | AB | R2 | 1, 2, 3, 5, 11, 12 |
|  | X | BA0 | BA1 | BG0 | BG1 | F2 | 1, 2, 3, 5, 11, 12 |
| ACTIVATE-1 (ACT-1) | H | H | H | H | V | R1 | 1, 2, 3, 4, 12 |
|  | X | H | V | V | SC | F1 | 1, 2, 3, 4, 12 |
|  | H | R11 | R12 | R13 | V | R2 | 1, 2, 3, 4, 12 |
|  | X | BA0 | BA1 | BG0 | BG1 | F2 | 1, 2, 3, 4, 12 |
| ACTIVATE-2 (ACT-2) | H | H | H | H | V | R1 | 1, 2, 4 |
|  | X | L | R8 | R9 | R10 | F1 | 1, 2, 4 |
|  | H | R4 | R5 | R6 | R7 | R2 | 1, 2, 4 |
|  | X | R0 | R1 | R2 | R3 | F2 | 1, 2, 4 |
| WRITE BL24 (WR-S) | H | H | L | H | WS | R1 | 1, 2, 3, 6, 10, 12, 14 |
|  | X | C0 | C1 | AP | SC | F1 | 1, 2, 3, 6, 10, 12, 14 |
|  | H | C2 | C3 | C4 | C5 | R2 | 1, 2, 3, 6, 10, 12, 14 |
|  | X | BA0 | BA1 | BG0 | BG1 | F2 | 1, 2, 3, 6, 10, 12, 14 |
| WRITE BL48 (WR-L) | H | L | L | H | WS | R1 | 1, 2, 3, 6, 10, 12, 14 |
|  | X | L | C1 | AP | SC | F1 | 1, 2, 3, 6, 10, 12, 14 |
|  | H | C2 | C3 | C4 | C5 | R2 | 1, 2, 3, 6, 10, 12, 14 |
|  | X | BA0 | BA1 | BG0 | BG1 | F2 | 1, 2, 3, 6, 10, 12, 14 |
| READ BL24 (RD-S) | H | H | H | L | WS | R1 | 1, 2, 3, 6, 10, 12, 14 |
|  | X | C0 | C1 | AP | SC | F1 | 1, 2, 3, 6, 10, 12, 14 |
|  | H | C2 | C3 | C4 | C5 | R2 | 1, 2, 3, 6, 10, 12, 14 |
|  | X | BA0 | BA1 | BG0 | BG1 | F2 | 1, 2, 3, 6, 10, 12, 14 |
| READ BL48 (RD-L) | H | L | H | L | WS | R1 | 1, 2, 3, 6, 10, 12, 14 |
|  | X | C0 | C1 | AP | SC | F1 | 1, 2, 3, 6, 10, 12, 14 |
|  | H | C2 | C3 | C4 | C5 | R2 | 1, 2, 3, 6, 10, 12, 14 |
|  | X | BA0 | BA1 | BG0 | BG1 | F2 | 1, 2, 3, 6, 10, 12, 14 |
| CAS | H | H | L | L | WS | R1 | 1, 2, 7, 14 |
|  | X | H | H | H | WS_OFF | F1 | 1, 2, 7, 14 |
|  | H | V | V | V | V | R2 | 1, 2, 7, 14 |
|  | X | V | V | V | V | F2 | 1, 2, 7, 14 |
| MODE REGISTER READ (MRR) | H | H | L | L | WS | R1 | 1, 2, 10, 12, 13 |
|  | X | L | H | H | SC | F1 | 1, 2, 10, 12, 13 |
|  | H | MA4 | MA5 | MA6 | MA7 | R2 | 1, 2, 10, 12, 13 |
|  | X | MA0 | MA1 | MA2 | MA3 | F2 | 1, 2, 10, 12, 13 |
| MODE REGISTER WRITE-1 (MRW-1) | H | H | L | L | V | R1 | 1, 2, 15 |
|  | X | L | L | H | BC | F1 | 1, 2, 15 |
|  | H | MA4 | MA5 | MA6 | MA7 | R2 | 1, 2, 15 |
|  | X | MA0 | MA1 | MA2 | MA3 | F2 | 1, 2, 15 |
| MODE REGISTER WRITE-2 (MRW-2) | H | H | L | L | V | R1 | 1, 2 |
|  | X | H | H | L | V | F1 | 1, 2 |
|  | H | OP4 | OP5 | OP6 | OP7 | R2 | 1, 2 |
|  | X | OP0 | OP1 | OP2 | OP3 | F2 | 1, 2 |

1. Commands use CS at R1/R2 and CA[3:0] at R1/F1/R2/F2; ACT and MRW each require two commands.
2. `V` is a defined H/L level and `X` is don't-care.
3. BG[1:0]/BA[1:0] select the bank.
4. ACT-1 precedes ACT-2 and ACT-2 must arrive within 8 clock cycles (`tAAD`); the intervening-command restrictions apply.
5. `AB=1` applies PRE/REF to all banks and makes the bank address don't-care.
6. `AP=1` requests auto-precharge for the associated RD/WR bank.
7. CAS carries WCK `WS`/`WS_OFF` control.
8. `PD=1` combines SRE and PDE.
9. PDE obeys the Power-Down timing rules.
10. RD/WR/MRR carry the `WS` synchronization operand.
11. `dBG[1:0]` with BA/BG identifies the second bank for dual-bank refresh; `RFM` is fixed low for REF.
12. In Dynamic Efficiency mode, `SC` selects SC0 or SC1 for commands that carry this operand.
13. Dynamic-Efficiency MRR routing is defined in Section 7.8.1.
14. With WSOE enabled, a gapless CAS with `WS=WS_OFF=0` extends synchronization.
15. `BC=1` requests a broadcast MRW to SC0 and SC1 where permitted.

For the fixed 4-Gb-per-sub-channel / 8-Gb-die geometry, only R0--R13 form the row address.

The truth table defines each command by row, edge, pin, operand, and address placement.

## 7.2 Every Other Cycle Command Input

### 7.2.1 Command Input

A command begins only on an even CK_t rising edge. The controller establishes and tracks even/odd CK cycles after CK synchronization; CS is sampled for a new command only on even CK_t rising edges.

### 7.2.2 CK Sync and Sync-Off Operation

CK synchronization ends at reset, Power-Down entry, FSP-OP switching including during CBT, DEFF secondary-interface sleep, or the declared initial-state boundary. Section 7.8.11 defines wake-up synchronization for Dynamic Efficiency.

When CK is not synchronized, only DES may precede the NOP that begins CK synchronization. After that NOP, only DES is allowed throughout `tCKSNC`.

**Table 41 — CK Synchronization AC Parameter**

| Parameter | Symbol | Min/Max | Value | Unit | Note |
|---|---|---|---|---|---|
| CK synchronization period | tCKSNC | Min | `1 + EVEN(3 ns / tCK)` | nCK | 1 |

`EVEN` rounds upward to the next even integer. The Power-Down, FSP, CBT, and reset sections define their respective stop and restart preconditions.

## 7.3 WCK Operation

### 7.3.1 WCK2CK Synchronization Operation

Because WCK runs at twice CK, the WCK divider can begin aligned or misaligned. WCK2CK synchronization establishes the aligned state required before defined RD/WR/MRR data activity. A command with `WS=1` is prohibited while WCK is already synchronized.

The two defined modes are Auto-Sync-Off (`MR22 OP[5]=0`) and WCK Always-On (`MR22 OP[5]=1`). The mode may change only while WCK2CK synchronization is off. In Auto-Sync-Off, synchronization expires under the defined sync-off timing; in Always-On, it remains until CAS(`WS_OFF=1`), defined Power-Down/Self-Refresh Power-Down, or reset.

### 7.3.2 Auto-Sync-Off Mode

RD, WR, or MRR with `WS=1` initiates synchronization. The controller starts driving WCK at L/H before the applicable `tWCKENL`, supplies the required static/toggling preamble, and continues toggling through `tWCKPST`.

**Table 42 — WCK2CK Sync Parameters for RD/MRR**

| Data-rate range [Mbps] | CK range [MHz] | Defined latency sets [nCK] | Defined tWCKENL_RD sets [nCK] | tWCKPRE_static [nCK] | tWCKPRE_toggle_RD Half [nCK] | tWCKPRE_toggle_RD Full [nCK] | tWCKPRE_total_RD [nCK] |
|---|---|---|---|---:|---:|---:|---:|
| >1067, <=1600 | >267, <=400 | Normal 9; Dynamic 10 | Normal 2; Dynamic 3 | 2 | 0 | 5 | 7 |
| >7500, <=8533 | >1875, <=2133 | Normal 46; Dynamic 50 | Normal 26; Dynamic 30 | 8 | 2 | 10 | 20 |

**Table 43 — WCK2CK Sync Parameters for WR**

| Data-rate range [Mbps] | CK range [MHz] | Write latency Set A [nCK] | tWCKENL_WR Set A [nCK] | tWCKPRE_static [nCK] | tWCKPRE_toggle_WR Half [nCK] | tWCKPRE_toggle_WR Full [nCK] | tWCKPRE_total_WR [nCK] |
|---|---|---:|---:|---:|---:|---:|---:|
| >1067, <=1600 | >267, <=400 | 6 | 2 | 2 | 0 | 2 | 4 |
| >7500, <=8533 | >1875, <=2133 | 22 | 8 | 8 | 2 | 4 | 14 |

CAS with `WS=1` is a standalone early-synchronization command. Subsequent commands follow the CAS constraints in Section 8.5.

**Table 44 — WCK2CK Sync Parameters for CAS**

| Data-rate range [Mbps] | CK range [MHz] | MR1 OP[4:0] | tWCKENL_FS [nCK] | tWCKPRE_static [nCK] |
|---|---|---|---:|---:|
| >1067, <=1600 | >267, <=400 | `00001B` | 2 | 2 |
| >7500, <=8533 | >1875, <=2133 | `01011B` | 10 | 8 |

For Auto-Sync-Off, CAS(`WS_OFF=1`) is prohibited until the following minimum period from the prior defined operation has elapsed:

| Operation | Minimum sync-off period |
|---|---|
| RD or MRR | `RL + BL/n_min + RD(tWCKPST/tCK)` |
| WR | `WL + BL/n_min + RD(tWCKPST/tCK)` |

### 7.3.3 WCK Always-On Mode

With `MR22 OP[5]=1`, only standalone CAS(`WS=1`) may initiate WCK2CK synchronization; RD/WR/MRR with `WS=1` is prohibited. Once synchronized, the controller keeps WCK toggling at full rate until CAS(`WS_OFF=1`), defined Power-Down/Self-Refresh Power-Down, or reset. After synchronization is lost, a new synchronization sequence is required before data activity.

CAS(`WS_OFF=1`) is allowed only while no RD/WR/MRR data operation is ongoing and after the applicable sync-off period.

**Table 45 — WCK Stop AC Timing**

| Parameter | Symbol | Min/Max | Value | Unit |
|---|---|---|---|---|
| Valid WCK requirement after CAS(`WS_OFF`) | tWCKSTOP | Min | `Max(2 nCK, 6 ns)` | — |
| CAS OFF to CAS WS delay | tCASOFF2WS | Min | 4 | nCK |

### 7.3.4 WCK2CK Sync-Off Timing Definition

If the maximum is exceeded, the next RD/WR/MRR must carry `WS=1`. WCK toggling continues at least through the applicable `WL/RL + BL/n_min + RD(tWCKPST/tCK)` period.

**Table 46 — WCK2CK Sync-Off Timing for WR, RD, and MRR**

| Current | Next | Bank relation | Without new sync: Min | Without new sync: Max | With new sync: Min |
|---|---|---|---|---|---|
| WR | WR | Any | `BL/n` | `WL + BL/n_min + RD(tWCKPST/tCK)` | preceding maximum + 1 nCK |
| WR | RD | Same BG | Not allowed | Not allowed | `WL + BL/n_max + RU(tWTR_L/tCK)` |
| WR | RD | Different BG | Not allowed | Not allowed | `WL + BL/n_min + RU(tWTR_S/tCK)` |
| WR | MRR | — | Not allowed | Not allowed | `WL + BL/n_max + RU(tWTR_L/tCK)` |
| RD | WR | Same BG | `tRTW` | `RL + BL/n_min + RD(tWCKPST/tCK)` | preceding maximum + 1 nCK |
| RD | WR | Different BG | `tRTW` | `RL + BL/n_min + RD(tWCKPST/tCK)` | preceding maximum + 1 nCK |
| RD | RD | Any | `BL/n` | `RL + BL/n_min + RD(tWCKPST/tCK)` | — |
| RD | MRR | — | Not allowed | Not allowed | `RL + BL/n_max + RD(tWCKPST/tCK) + 1` |
| MRR | WR | — | `tRTW + 2` | `RL + BL/n_min + RD(tWCKPST/tCK)` | preceding maximum + 1 nCK |
| MRR | RD | — | Not allowed | Not allowed | `RL + BL/n_max + RD(tWCKPST/tCK) + 1` |
| MRR | MRR | — | `tMRR` | `RL + BL/n_min + RD(tWCKPST/tCK)` | preceding maximum + 1 nCK |

Every result is rounded up to an even nCK command boundary. A second `WS=1` cannot be issued while synchronization remains on.

### 7.3.5 WCK Sync-Off Extension

WSOE requires `MR26 OP[3]=1` and is mutually exclusive with WCK Always-On, so `MR22 OP[5]` must be zero before WSOE is enabled. After synchronization has been established, a gapless CAS with `WS=0` and `WS_OFF=0` extends the current sync-off window until the next defined RD/WR/MRR with `WS=0`. It changes only sync-off timing, not postamble behavior.

**Table 47 — CAS Decode with WSOE Enabled**

| MR26 OP[3] | CAS WS | CAS WS_OFF | Function |
|---:|---:|---:|---|
| 1 | 0 | 0 | WCK Sync-Off Extension |

**Table 48 — Acceptable WSOE Issue Period**

| Previous command | Minimum CAS delay | Maximum CAS delay |
|---|---|---|
| WR-S or WR-L | >= 2 nCK | < WL |
| RD-S or RD-L | >= 2 nCK | < RL |
| MRR | >= 2 nCK | < RL |

## 7.4 Row Operation

### 7.4.1 Activate Command

ACT consists of ACT-1 followed by ACT-2 to the same bank and row. ACT-2 must occur within 8 clock cycles (`tAAD`); only CAS, WR, RD, MRR, PRE-to-another-bank, and REF-to-another-bank may intervene. Another ACT-1 cannot precede the required ACT-2.

RD is permitted at `tRCDr` and WR at `tRCDw` after activation. PRE closes an active bank. Same-bank ACT-to-ACT observes `tRC`; different-bank ACT-to-ACT observes `tRRD`; active time observes the defined minimum and maximum `tRAS`.

With a frequency change in the window, elapsed time is accumulated across the actual CK periods of each segment.

### 7.4.2 Precharge Operation

PRE closes one selected bank or all banks. A bank selected by per-bank PRE is available after `tRPpb`; all banks selected by all-bank PRE are available after `tRPab`. PRE to an already idle bank is allowed, but the applicable `tRP` still precedes the next ACT, SRE, or REF.

**Table 49 — Precharge Bank Selection, 4 BG x 4 Banks**

| AB | BG1 | BG0 | BA1 | BA0 | Precharged bank(s) |
|---:|---:|---:|---:|---:|---|
| 0 | 0 | 0 | 0 | 0 | BG0, Bank 0 only |
| 0 | 0 | 0 | 0 | 1 | BG0, Bank 1 only |
| 0 | 0 | 0 | 1 | 0 | BG0, Bank 2 only |
| 0 | 0 | 0 | 1 | 1 | BG0, Bank 3 only |
| 0 | 0 | 1 | 0 | 0 | BG1, Bank 0 only |
| 0 | 0 | 1 | 0 | 1 | BG1, Bank 1 only |
| 0 | 0 | 1 | 1 | 0 | BG1, Bank 2 only |
| 0 | 0 | 1 | 1 | 1 | BG1, Bank 3 only |
| 0 | 1 | 0 | 0 | 0 | BG2, Bank 0 only |
| 0 | 1 | 0 | 0 | 1 | BG2, Bank 1 only |
| 0 | 1 | 0 | 1 | 0 | BG2, Bank 2 only |
| 0 | 1 | 0 | 1 | 1 | BG2, Bank 3 only |
| 0 | 1 | 1 | 0 | 0 | BG3, Bank 0 only |
| 0 | 1 | 1 | 0 | 1 | BG3, Bank 1 only |
| 0 | 1 | 1 | 1 | 0 | BG3, Bank 2 only |
| 0 | 1 | 1 | 1 | 1 | BG3, Bank 3 only |
| 1 | V | V | V | V | All banks |

The bank becomes idle only after the applicable precharge completes.

**Table 50 — Read-Latency Table Selection**

| Operating point | Link Protection | DVFSL |
|---|---|---|
| SynDRAM | Disabled | Disabled |

**Table 51 — Read and Read-to-Precharge Latencies**

| MR1 OP[4:0] | Data-rate range [Mbps] | CK range [MHz] | RL Normal [nCK] | RL Dynamic [nCK] | nRTP BL24 [nCK] | nRTP BL48 [nCK] |
|---|---|---|---:|---:|---:|---:|
| `00001B` | >1067, <=1600 | >267, <=400 | 9 | 10 | 7 | 13 |
| `01011B` | >7500, <=8533 | >1875, <=2133 | 46 | 50 | 11 | 23 |

Each MR1 code is legal within its listed frequency interval.

For WR with auto-precharge, `nWTP` begins after `WL + BL/n_max`, measured from the second CK_t rising edge of the WR command.

**Table 52 — nWTP Table Selection**

| Operating mode | DVFSL | Write Link Protection | Efficiency Mode |
|---|---|---|---|
| Normal | Disabled | Disabled | Disabled |
| Dynamic Efficiency | Disabled | Disabled | Enabled |

**Table 53 — nWTP with Efficiency Disabled**

| MR1 OP[4:0] | Data-rate range [Mbps] | CK range [MHz] | nWTP [nCK] |
|---|---|---|---:|
| `00001B` | >1067, <=1600 | >267, <=400 | 6 |
| `01011B` | >7500, <=8533 | >1875, <=2133 | 26 |

**Table 54 — nWTP with Efficiency Enabled**

| MR1 OP[4:0] | Data-rate range [Mbps] | CK range [MHz] | nWTP [nCK] |
|---|---|---|---:|
| `00001B` | >1067, <=1600 | >267, <=400 | 6 |
| `01011B` | >7500, <=8533 | >1875, <=2133 | 30 |

## 7.5 Read/Write Operations

### 7.5.1 Read Operation

RD-S selects BL24 and RD-L selects BL48. The raw command supplies `WS`, `C0`, `C[5:1]`, `AP`, `SC`, BG, and BA exactly as defined by Table 40 and the Section 2.2.3 address rules. The bank must be active, the column access must observe `tCCD` and bank-group relationships, and WCK must already be synchronized or be synchronized by the command where Auto-Sync-Off permits.

The trace records command choice, burst length, address, bank relationship, AP, WS, WCK activity, and command timing. RDQS mode and postamble configuration contribute to input-command timing.

### 7.5.2 RDQS Mode — defined timing configuration

MR22 OP[1:0] selects enabled RDQS outputs. MR10 selects preamble, postamble mode, and postamble length. The WCK:RDQS ratio is 1:1 and RDQS pre-shift is zero. The selected MR10 postamble length supplies tRPST; MR22 requires tWCKPST to exceed tRPST.

### 7.5.3 Write Operation

WR-S selects BL24 and WR-L selects BL48. It uses the same raw-address, bank, AP, SC, and synchronization structure as RD. Section 8 defines WR-to-WR, WR-to-RD, and bank-group-dependent timing. The trace records the command and required WCK input interval.

### 7.5.4 Read and Read-to-Precharge Latencies

These latencies are measured from the second CK_t rising edge of RD.

**Table 55 — Read-Latency Table Selection**

| Operating point | Link Protection | DVFSL |
|---|---|---|
| SynDRAM | Disabled | Disabled |

**Table 56 — Read Latencies**

| MR1 OP[4:0] | Data-rate range [Mbps] | CK range [MHz] | RL Normal [nCK] | RL Dynamic [nCK] | nRTP [nCK] |
|---|---|---|---:|---:|---|
| `00001B` | >1067, <=1600 | >267, <=400 | 9 | 10 | TBD |
| `01011B` | >7500, <=8533 | >1875, <=2133 | 46 | 50 | TBD |

The generic `nRTP` entries in this table are TBD. Burst-specific `nRTP` values are defined in Table 51.

### 7.5.5 Write Latency

WL is measured from the second CK_t rising edge of WR.

**Table 57 — Write Latency**

| MR1 OP[4:0] | Data-rate range [Mbps] | CK range [MHz] | WL Set A [nCK] | Unit |
|---|---|---|---:|---|
| `00001B` | >1067, <=1600 | >267, <=400 | 6 | nCK |
| `01011B` | >7500, <=8533 | >1875, <=2133 | 22 | nCK |

MR1 OP[5] is fixed to Set A.

## 7.6 Refresh Operation

### 7.6.1 Refresh Command

SynDRAM supports all-bank REF (`REFab`) and dual-bank REF (`REFdb`). `REFdb` names two different bank groups with one BA value; it is illegal when BG equals dBG or when a bank repeats before all 16 banks have been covered by eight REFdb commands. The order of the eight distinct bank pairs is otherwise unconstrained.

Reset, SRX, and REFab reset the dual-bank counter to zero. After eight REFdb commands the bank counter wraps and the refresh-row counter advances. A REFab may interrupt a partial REFdb cycle, refresh all banks at the current row counter, reset the bank counter, and advance the row counter for the following refresh command.

**Table 58 — Bank and Refresh-Counter Increment Examples**

| # | Sub # | Command | dBG1 | dBG0 | BG1 | BG0 | BA1 | BA0 | Refreshed banks | Bank counter | Row counter |
|---:|---:|---|---:|---:|---:|---:|---:|---:|---|---|---|
| 0 | 0 | Reset, SRX, or REFab | — | — | — | — | — | — | — | To 0 | — |
| 1 | 1 | REFdb | 1 | 0 | 0 | 0 | 0 | 0 | 0/8 | 0 to 1 | n |
| 2 | 2 | REFdb | 1 | 0 | 0 | 0 | 0 | 1 | 1/9 | 1 to 2 | n |
| 3 | 3 | REFdb | 1 | 0 | 0 | 0 | 1 | 0 | 2/10 | 2 to 3 | n |
| 4 | 4 | REFdb | 1 | 0 | 0 | 0 | 1 | 1 | 3/11 | 3 to 4 | n |
| 5 | 5 | REFdb | 1 | 1 | 0 | 1 | 0 | 0 | 4/12 | 4 to 5 | n |
| 6 | 6 | REFdb | 1 | 1 | 0 | 1 | 0 | 1 | 5/13 | 5 to 6 | n |
| 7 | 7 | REFdb | 1 | 1 | 0 | 1 | 1 | 0 | 6/14 | 6 to 7 | n |
| 8 | 8 | REFdb | 1 | 1 | 0 | 1 | 1 | 1 | 7/15 | 7 to 0 | n |
| 9 | 1 | REFdb | 0 | 1 | 0 | 0 | 0 | 0 | 0/4 | 0 to 1 | n+1 |
| 10 | 2 | REFdb | 1 | 1 | 1 | 0 | 0 | 1 | 9/13 | 1 to 2 | n+1 |
| ... | ... | ... | — | — | — | — | — | — | — | — | — |
| 15 | 7 | REFdb | 0 | 1 | 0 | 0 | 1 | 1 | 3/7 | 6 to 7 | n+1 |
| 16 | 8 | REFdb | 1 | 1 | 1 | 0 | 1 | 1 | 11/15 | 7 to 0 | n+1 |
| 17 | 1 | REFdb | 1 | 0 | 0 | 0 | 0 | 0 | 0/8 | 0 to 1 | n+2 |
| 18 | 2 | REFdb | 1 | 0 | 0 | 0 | 0 | 1 | 1/9 | 1 to 2 | n+2 |
| 19 | 3 | REFdb | 1 | 0 | 0 | 0 | 1 | 0 | 2/10 | 2 to 3 | n+2 |
| 20 | 0 | REFab | V | V | V | V | V | V | 0--15 | To 0 | n+2 |
| 21 | 1 | REFdb | 1 | 0 | 0 | 0 | 1 | 0 | 2/10 | 0 to 1 | n+3 |
| 22 | 2 | REFdb | 1 | 1 | 0 | 1 | 0 | 1 | 5/13 | 1 to 2 | n+3 |

Every REF target bank must be idle. Non-refreshed banks remain accessible during `tRFCdb`; all banks are unavailable during `tRFCab`.

**Table 59 — REF Scheduling Separation Requirements**

| Symbol / minimum delay | From | To |
|---|---|---|
| tRFCab | REFab | REFab, ACT to any bank, or REFdb |
| tRFCdb | REFdb | REFab or ACT to the same bank pair |
| tdbR2act | REFdb | ACT to a different bank pair |
| tRRD | ACT | REFdb, or ACT to a different bank than the prior ACT |
| tdbR2dbR | REFdb | REFdb |

An ACT followed by REFab is prohibited because all banks must be idle. REFdb after ACT is permitted only when its bank pair is idle.

At the fixed 1x rate, at most eight REFab-equivalent refreshes may be postponed. If eight are postponed consecutively, the interval between the surrounding refresh commands is at most `9 x tREFI`. At most eight additional refreshes may be pulled in; pulling in more than eight does not reduce the number of later regular refreshes. At most 16 REF commands may be issued within `2 x tREFI`. Additional refresh commands remain legal and execute normally, but do not count as postponed or pulled-in refresh commands.

**Table 60 — REF Timing Constraints at 1x**

| MR4 OP[4:0] | Max multiplier | Effective interval | Max pulled-in/postponed REFab | Max interval | Max REFab in burst | Burst interval | REFdb equivalence |
|---|---|---|---:|---|---:|---|---|
| `01001B` | 1x | `1 x tREFI` | 8 | `9 x tREFI` | 16 | `2 x tREFI` | 1/8 REFab |

### 7.6.2 Dual tdbR2dbR Parameters

SynDRAM defines short and long REFdb-to-REFdb delays according to the selected bank relationship. Section 8 places both parameters in the command-timing matrices.

### 7.6.3 Refresh Requirement

**Table 61 — Refresh Requirements for the 8-Gb Configuration**

| Requirement | Symbol | 8-Gb value | Unit |
|---|---|---:|---|
| Banks per sub-channel | — | 16 | — |
| Refresh window, 1x | tREFW | 32 | ms |
| Required REF commands per tREFW | R | 8192 | — |
| Average REFab interval, 1x | tREFI | 3.906 | us |
| Average REFdb interval, 1x | tREFidb | 488 | ns |
| All-bank refresh cycle | tRFCab | 210 | ns |
| Dual-bank refresh cycle | tRFCdb | 140 | ns |
| REFdb to REFdb, different bank, short | tdbR2dbR_S | 47 | ns |
| REFdb to REFdb, different bank, long | tdbR2dbR_L | 90 | ns |
| REFdb to ACT, different bank | tdbR2act | 7.5 | ns |

Refresh tracking is independent per sub-channel. `R` is 8192.

### 7.6.4 Self Refresh Operation

SRE requires the defined idle/precharge and command-timing preconditions. `PD=1` enters Self-Refresh Power-Down. SRX resets the dual-bank refresh counter; ordinary commands resume only after their defined exit constraints.

Self Refresh may be entered with at most eight postponed refreshes. During Self Refresh, the postponed and pulled-in counts do not change. After exit, the total number postponed before and after Self Refresh must never exceed eight.

After SRX, at least one REFab or eight REFdb commands must be issued before a subsequent SRE. These commands do not count toward the regular refreshes required by `tREFI` and do not modify postponed or pulled-in counts, but they do count toward the maximum number of refreshes permitted within `2 x tREFI`.

During Self Refresh, CK may stop with CS low, CK_t low, and CK_c high. Restart also observes the defined input-clock rules. Output behavior is outside the scope of this specification subset.

**Table 62 — Self Refresh AC Timing**

| Parameter | Symbol | Min/Max | Value | Unit |
|---|---|---|---|---|
| SRE to PDE | tESPD | Min | 2 | nCK |
| Minimum Self Refresh time | tSR | Min | `Max(15 ns, 4 nCK)` | ns |
| SRX to ordinary valid commands | tXSR | Min | `tRFCab + Max(7.5 ns, 4 nCK)` | ns |
| Valid CK after SRE | tSRECK | Min | `Max(5 ns, 3 nCK)` | ns |
| Valid CK before valid command | tCKSSR | Min | `2 x tCK + tXP` | ns |

MRR and MRW-1 may be issued during `tXSR` at the defined delay; MRW-2 remains the second half of an MRW transaction and cannot be issued as a standalone command immediately after SRX.

**Table 63 — SRX Command Constraints**

| Current command | Next command | Minimum [nCK] | Maximum |
|---|---|---:|---|
| SRX | MRR | 2 | — |
| SRX | MRW-1 | 2 | — |
| SRX | MRW-2 | Illegal | Illegal |

## 7.7 Power Down

### 7.7.1 Power-Down Entry and Exit

PDE enters basic Power Down after the applicable current-command constraint. On exit, CK is made valid before CS rises; the first command is the NOP that restores CK synchronization, followed by the defined `tXP` delay. WCK2CK synchronization is lost across Power Down and must be re-established before later RD/WR/MRR activity.

**Table 64 — Power-Down AC Timing**

| Parameter | Symbol | Min/Max | Value | Unit |
|---|---|---|---|---|
| PDE to CS high | tCSPD | Min | `10.0 ns + 1 tCK` | ns |
| Valid command to PDE | tCMDPD | Min | `Max(1.75 ns, 4 nCK)` | ns |
| Valid CK after PDE | tCSLCK | Min | `Max(5 ns, 4 nCK)` | ns |
| Valid CK before CS high | tCKCSH | Min | `Max(1.75 ns, 4 nCK)` | ns |
| Valid-low CA before CS high | tCACSH | Min | 1.75 | ns |
| Power-Down exit to NOP | tXP | Min | `Max(7 ns, 4 nCK)` | ns |
| CS-high pulse at exit | tCSH | Min | 3 | ns |
| CS-low duration at exit | tCSL | Min | 4 | ns |
| CA-low duration at exit | tCSCAL | Min | 1.75 | ns |
| MRW to PDE | tMRWPD | Min | `Max(14 ns, 6 nCK)` | ns |

**Table 65 — Power-Down Entry Command Constraints**

| Current command | Next command | Minimum timing |
|---|---|---|
| ACT-2 | PDE | `tCMDPD` |
| PRE all-bank | PDE | `nACU + tCMDPD` |
| PRE per-bank | PDE | `nACU + tCMDPD` |
| RD, DQ ODT disabled | PDE | `RL + RU(tWCK2DQO(max)/tCK) + BL/n_max + RU(tWCKPST/tCK)` |
| RD, DQ ODT enabled | PDE | `ODTLon_RD + RU(tODT_RDon(max)/tCK) + 2` |
| RD with AP, DQ ODT disabled | PDE | `Max(RL + RU(tWCK2DQO(max)/tCK) + BL/n_max + RU(tWCKPST/tCK), nRTP + nACU + tCMDPD)` |
| RD with AP, DQ ODT enabled | PDE | `Max(ODTLon_RD + RU(tODT_RDon(max)/tCK) + 2, nRTP + nACU + tCMDPD)` |
| WR | PDE | `WL + RU(tWCK2DQI(max)/tCK) + BL/n_max + nWTP + nACU` |
| WR with AP | PDE | `WL + RU(tWCK2DQI(max)/tCK) + BL/n_max + nWTP + nACU + tCMDPD` |
| MRR, DQ ODT disabled | PDE | `RL + RU(tWCK2DQO(max)/tCK) + BL/n_max + RU(tWCKPST/tCK)` |
| MRR, DQ ODT enabled | PDE | `ODTLon_RD + RU(tODT_RDon(max)/tCK) + 2` |
| MRW-2 | PDE | `tMRWPD` |
| CAS(`WS=1`) | PDE | `tCMDPD` |
| CAS(`WS_OFF=1`) | PDE | `tCMDPD` |
| CAS(`WS=0, WS_OFF=0`) | PDE | `tCMDPD` |

`tWCK2DQO(max)` and `tWCK2DQI(max)` select their LF/HF forms through MR11 OP[6].

## 7.8 Other Operation

### 7.8.1 Mode Register Read

MRR supplies a mode-register address through the raw two-cycle command. It is legal while all banks are idle or while one or more banks are active, and it returns to the same bank state. The trace records the MRR command, address, SC routing, WCK synchronization, and command spacing.

### 7.8.2 Mode Register Write

MRW is the ordered pair MRW-1 then MRW-2. MRW-1 carries the register address and optional broadcast control; MRW-2 carries OP[7:0]. Only DES is allowed during the applicable `tMRW`/`tMRD` exclusion interval. Writing a read-only register does not change device functionality. MRW is legal from all-banks-idle or bank-active state and returns to the same bank state unless the written defined field explicitly causes a mode transition.

**Table 66 — Mode-Register Read/Write AC Timing**

| Parameter | Symbol | Min/Max | Value | Unit |
|---|---|---|---|---|
| Additional Power-Down-exit delay to MRR | tMRRI | Min | TBD | ns |
| MRR command period | tMRR | Min | 12 | nCK |
| MRW command period | tMRW | Min | `Max(10 ns, 4 nCK)` | ns |
| Mode-register-set delay | tMRD | Min | `Max(14 ns, 4 nCK)` | ns |

`tMRRI` contains `tCKSNC`.

**Table 67 — MRR/MRW State Transitions**

| Current state | Command | Intermediate state | Next state |
|---|---|---|---|
| All banks idle | MRR | Mode-register reading, all banks idle | All banks idle |
| All banks idle | MRW | Mode-register writing, all banks idle | All banks idle |
| Bank(s) active | MRR | Mode-register reading, bank(s) active | Bank(s) active |
| Bank(s) active | MRW | Mode-register writing, bank(s) active | Bank(s) active |

MRR timing is measured from the preceding RD, WR, or Power-Down exit command. MRW timing is measured across the ordered MRW-1/MRW-2 sequence.

### 7.8.3 Frequency Set Point

SynDRAM uses FSP0 and FSP1. FSP-dependent parameters are staged by MR13 FSP-WR and activated together by MR13 FSP-OP. MR13 owns both staging and activation.

Changing FSP loses CK synchronization. After the MR13 FSP-OP change, only DES is allowed through the defined change/restart windows; the host changes CK in the defined frequency-change interval and issues NOP to restore CK sync.

**Table 68 — FSP AC Timing**

| Item | Symbol | Min/Max | Value | Unit |
|---|---|---|---|---|
| FSP switching time | tFC_Short | Min | 200 | ns |
| FSP switching time | tFC_Long | Min | 250 | ns |
| Valid CK after entering FSP change | tCKFSPE | Min | `Max(7.5 ns, 4 nCK)` | — |
| Valid CK before first valid command after change | tCKFSPX | Min | `Max(7.5 ns, 4 nCK)` | — |

**Table 69 — tFC Value Mapping**

| Application | From FSP-OP0 | To FSP-OP1 |
|---|---|---|
| tFC_Short | Base | A single step-size increment/decrement |
| tFC_Long | Base | Two or more step-size increments/decrements |

For `tCKFSPE` and `tCKFSPX`, `tCK` is the CK period at the operating frequency when the MRW is issued.

### 7.8.4 On-Die Termination

DQ termination configuration supplies parameters to the digital timing rules. ODTLon is measured from the second rising edge of the WRITE command to the asynchronous turn-on reference. ODTLoff is measured from the same command reference to the turn-off reference.

**Table 70 — ODTLon and ODTLoff Latency Values**

| Data Rate (Mbps) | Lower CK limit > (MHz) | Upper CK limit <= (MHz) | ODTLon [nCK], ALL mode | ODTLoff [nCK], BL24 | ODTLoff [nCK], BL48 |
|---|---|---|---|---|---|
| 1600 | 267 | 400 | WL-2 | TBD | TBD |
| 8533 | 1875 | 2133 | WL-8 | TBD | TBD |

ODTLoff is parameterized as `WL + BL/n_min + RU(tWCK2DQI(max)/tCK)`; the numeric BL24 and BL48 entries are TBD.

**Table 71 — Asynchronous ODT Turn-On and Turn-Off Timing**

| Parameter | ALL Operation Frequency | Unit |
|---|---|---|
| tODTon,min | 1.5 | ns |
| tODTon,max | 3.5 | ns |
| tODToff,min | 1.5 | ns |
| tODToff,max | 3.5 | ns |

### 7.8.5 Non-Target ODT

MR20 OP[2:0] controls DQ NT-ODT and OP[5:3] controls DQ WR NT-ODT. The FSP register ownership in Chapter 6 applies. The latency and asynchronous parameters below supply digital timing values for target-device READ and WRITE operations.

**Table 72 — Target ODT Status for Defined DRAM States**

| Current DRAM State | Target DRAM termination selector | Note |
|---|---|---|
| Power Down | MR20 OP[2:0] | |
| Self-Refresh Power Down | MR20 OP[2:0] | |
| Pre-charge / Active Standby | MR20 OP[2:0] | |
| Write | MR19 OP[2:0] | |
| Read / MRR | PDDS/PUDS | |

### 7.8.6 Target-Device NT-ODT Control

MR20 OP[2:0] enables sustained NT termination except while the target's DQ input receiver or output driver is active. RDQS termination is absent for disabled RDQS pins and while an enabled pin's output driver is active. Selectors written to an inactive FSP take effect when that FSP becomes active.

### 7.8.7 Asynchronous NT-ODT Timing

On a target WRITE, termination switches from the MR20 setting to the MR19 setting and returns after the write interval. On READ/MRR it is suspended while output drivers are active and subsequently returns to the MR20 setting. The latency tables below define the digital timing references.

### 7.8.8 NT-ODT Behavior for Write Operation

**Table 73 — ODTLon and ODTLoff Latency Values for Write**

| Data Rate (Mbps) | Lower CK limit > (MHz) | Upper CK limit <= (MHz) | ODTLon [nCK], ALL mode | ODTLoff [nCK], BL24 | ODTLoff [nCK], BL48 |
|---|---|---|---|---|---|
| 1600 | 267 | 400 | WL-2 | WL+7 | WL+13 |
| 8533 | 1875 | 2133 | WL-8 | WL+8 | WL+20 |

**Table 74 — Asynchronous NT-ODT Turn-On and Turn-Off Timing for Write**

| Parameter | ALL Operation Frequency | Unit |
|---|---|---|
| tODTon,min | 1.5 | ns |
| tODTon,max | 3.5 | ns |
| tODToff,min | 1.5 | ns |
| tODToff,max | 3.5 | ns |

### 7.8.9 NT-ODT Behavior for Read Operation

**Table 75 — ODTLon_RD_DQ and ODTLoff_RD_DQ Latency Values for Read**

| Data Rate (Mbps) | Lower CK limit > (MHz) | Upper CK limit <= (MHz) | ODTLoff_RD_DQ [nCK], ALL mode | ODTLon_RD_DQ [nCK], BL24 | ODTLon_RD_DQ [nCK], BL48 |
|---|---|---|---|---|---|
| 1600 | 267 | 400 | RL-2 | RL+7 | RL+13 |
| 8533 | 1875 | 2133 | RL-8 | RL+10 | RL+22 |

**Table 76 — ODTLon_RD_RDQS and ODTLoff_RD_RDQS Latency Values for Read with RDQS Enabled, PS=0 and PRE=000B/001B**

| Data Rate (Mbps) | Lower CK limit > (MHz) | Upper CK limit <= (MHz) | ODTLoff_RD_RDQS [nCK], ALL mode | ODTLon_RD_RDQS [nCK], BL24 | ODTLon_RD_RDQS [nCK], BL48 |
|---|---|---|---|---|---|
| 1600 | 267 | 400 | RL-4 | RL+9 | RL+15 |
| 8533 | 1875 | 2133 | RL-10 | RL+12 | RL+24 |

**Table 77 — Asynchronous NT-ODT Turn-On and Turn-Off Timing for Read**

| Parameter | ALL Operation Frequency | Unit |
|---|---|---|
| tODT_RDon,min | 1.5 | ns |
| tODT_RDon,max | 3.5 | ns |
| tODT_RDoff,min | 1.5 | ns |
| tODT_RDoff,max | 3.5 | ns |

### 7.8.10 Input Clock Stop and Frequency Change

Input frequency may change only when each CK cycle satisfies `tCK(abs)min`, refresh obligations continue, all banks are idle, the device is in Idle/REFdb/ REFab state, prior MRR/MRW and data bursts have completed, and `tRP`, `tMRW`, and `tMRR` have elapsed. CS stays low and WCK2CK synchronization is off. After the change, valid `tCH(abs)`/`tCL(abs)` cycles continue for at least `2 x tCK + tXP` before normal operation. Any required FSP switch additionally obeys Section 7.8.3 and is prohibited while Dynamic Efficiency is active.

CK may stop under the same defined idle, refresh, completion, CS-low, and sync-off preconditions, with CK_t held low and CK_c high. RD/WR with AP requires four extra CK cycles after its defined `nRTP`/`nWTP` completion condition. REFab, REFdb, and SRX require `Max(9 ns, 6 nCK)` additional clocks before CK stops.

ODTLoff uses the applicable write or read expression defined in Sections 7.8.8 and 7.8.9.

### 7.8.11 Efficiency Mode

#### 7.8.11.1 Dynamic Efficiency

The fixed device is switchable between Normal (`MR1 OP[6]=0`) and Dynamic Efficiency (`MR1 OP[6]=1`). In Dynamic Efficiency, the primary SC interface remains active and routes commands to either SC's 16-bank array using the `SC` operand; the secondary interface accepts no host commands. Refresh obligations remain independent for both 16-bank arrays.

Entry is allowed from standby-idle or active-idle state through an MRW to MR1 OP[6] on the primary interface. FSP and CK-frequency changes are prohibited while Dynamic Efficiency is active.

**Table 78 — Dynamic-Efficiency Functional Behavior**

| Function | Defined DEFF behavior |
|---|---|
| Entry | Primary-SC MRW sets MR1 OP[6] to 1 |
| Exit | Primary-SC MRW sets MR1 OP[6] to 0 |
| Power Down | Entry/exit allowed only without changing CK frequency |
| Self Refresh | Prohibited |
| MRR | Uses `SC` to select the target array/sub-channel identity |
| MRW | Limited to the defined allowed field in Table 80 |

PDE/exit preserves the same CK frequency.

**Table 79 — Identical Fields before DEFF Entry**

| MR | OP[7] | OP[6] | OP[5] | OP[4] | OP[3] | OP[2] | OP[1] | OP[0] |
|---:|---|---|---|---|---|---|---|---|
| 1 | Efficiency latency | Don't care | WLS | RL/WL/nWTP/nRTP/nACU | RL/WL/nWTP/nRTP/nACU | RL/WL/nWTP/nRTP/nACU | RL/WL/nWTP/nRTP/nACU | RL/WL/nWTP/nRTP/nACU |
| 11 | Don't care | Don't care | DVFSQ | DVFSL | DVFSB | DVFSH | Don't care | Don't care |
| 13 | FSP-OP | FSP-OP | FSP-WR | FSP-WR | Don't care | Don't care | Don't care | Don't care |
| 25 | Optimized Refresh Enable | Don't care | Don't care | Don't care | Don't care | Don't care | Don't care | Don't care |

MR11 DVFS bits and MR25 OP[7] are fixed zero; matching values in both register sets are entry preconditions.

**Table 80 — MRW-Allowed Fields during DEFF**

| MR | Access | OP[7] | OP[6] | OP[5] | OP[4:0] |
|---:|---|---|---|---|---|
| 1 | R/W | Don't care | Efficiency Control | Don't care | Don't care |

Therefore WSOE remains modifiable only in Normal Mode.

After entry, all defined SC-targeting commands use the primary physical interface. `AB=1` affects all banks of the SC selected by `SC`, not both arrays. An exit MRW wakes the secondary interface; its first CK-sync NOP waits at least `tMRD + tXP` after exit, and subsequent valid commands wait `tCKSNC` after that NOP.

### 7.8.12 Mode-Register Write Control for Efficiency Mode

In Dynamic Efficiency, MRW-1 makes its `BCST` operand effective. `BCST=0` updates the target MR in the primary register set; `BCST=1` performs an internal broadcast update to both SC register sets. This rule applies to the MR1 exit/control write performed while DEFF is active.

**Table 81 — MRW-1 Command in DEFF Mode**

| SDRAM command | CS | CA0 | CA1 | CA2 | CA3 | CK_t edge |
|---|---|---|---|---|---|---|
| MRW-1 | H | H | L | L | V | R1 |
|  | X | L | L | H | BCST | F1 |
|  | H | MA4 | MA5 | MA6 | MA7 | R2 |
|  | X | MA0 | MA1 | MA2 | MA3 | F2 |

`BCST=0` updates the primary target; `BCST=1` writes OP[7:0] from the associated MRW-2 to the addressed MR in both SC register sets.

---

# 8 Command and Timing Constraints

## 8.1 Effective Burst Length (BL/n) Definition

**Table 82 — Effective Burst Length Definition**

| WCK frequency | Bank relation | BL24 BL/n | BL24 BL/n_min | BL24 BL/n_max | BL48 BL/n | BL48 BL/n_min | BL48 BL/n_max | Unit |
|---|---|---|---|---|---|---|---|---|
| <=3200 MHz | Same BG | 6 | 6 | 6 | 12 | 12 | 12 | nCK |
| <=3200 MHz | Different BG | 6 | 6 | 6 | 12 | 12 | 12 | nCK |
| >3200 MHz | Same BG | `Max(6, RU(tCCD_L/tCK))` | 6 | 12 | `12 + RU(tCCD_L/tCK)` | 18 | 24 | nCK |
| >3200 MHz | Different BG | 6 | 6 | 12 | 6 | 18 | 24 | nCK |

`BL/n` is the minimum column-to-column cycle time, `BL/n_min` is minimum DQ-bus transfer time, and `BL/n_max` is the column-array cycle time. All are CK-domain quantities.

## 8.2 tCCD

**Table 83 — Same-BG tCCD**

| Data-rate range [Mbps] | CK range [MHz] | BL24 BL/n [nCK] | BL48 BL/n [nCK] |
|---|---|---:|---:|
| >1067, <=1600 | >267, <=400 | 6 | 12 |
| >7500, <=8533 | >1875, <=2133 | 8 | 20 |

The two defined rows deliberately exercise both sides of the 3200-MHz WCK boundary in Table 82.

## 8.3 Command Timing Constraints

**Table 84 — Same Bank, Same BG, DQ ODT Disabled**

| Current / Next | ACT | RD | WR | PRE |
|---|---|---|---|---|
| ACT | Illegal | `RU(tRCDr/tCK)` | `RU(tRCDw/tCK)` | `RU(tRAS/tCK)` |
| RD, BL24/BL48 | Illegal | `BL/n` | `tRTW` | `nRTP` |
| WR, BL24/BL48 | Illegal | `WL + BL/n_max + RU(tWTR_L/tCK)` | `BL/n` | `WL + BL/n_max + nWTP` |
| PRE | `RU(tRP/tCK)` | Illegal | Illegal | 4 |

**Table 85 — Different Banks, Same BG, DQ ODT Disabled**

| Current / Next | ACT | RD | WR | PRE |
|---|---|---|---|---|
| ACT | `RU(tRRD/tCK)` | 2 | 2 | 2 |
| RD, BL24/BL48 | 2 | `BL/n` | `tRTW` | 2 |
| WR, BL24/BL48 | 2 | `WL + BL/n_max + RU(tWTR_L/tCK)` | `BL/n` | 2 |
| PRE | 2 | 2 | 2 | 4 |

**Table 86 — Different Banks, Different BG, DQ ODT Disabled**

| Current / Next | ACT | RD | WR | PRE |
|---|---|---|---|---|
| ACT | `RU(tRRD/tCK)` | 2 | 2 | 2 |
| RD, BL24/BL48 | 2 | `BL/n` | `tRTW` | 2 |
| WR, BL24/BL48 | 2 | `WL + BL/n_min + RU(tWTR_S/tCK)` | `BL/n` | 2 |
| PRE | 2 | 2 | 2 | 4 |

**Table 87 — Command Timing Constraints for Same Banks in Same Bank Group, DQ ODT Enabled**

| Current CMD | Next CMD: ACTIVE | READ | WRITE | PRECHARGE |
|---|---|---|---|---|
| READ (BL24 or BL48) | Illegal | BL/n | tRTW | nRTP |

Note 1: tRTW depends on the selectors and timing definitions in Section 8.3.1. Note 2: An even-nCK command gap is required by the every-other-nCK protocol.

**Table 88 — Command Timing Constraints for Different Banks in Same Bank Group, DQ ODT Enabled**

| Current CMD | Next CMD: ACTIVE | READ | WRITE | PRECHARGE |
|---|---|---|---|---|
| READ (BL24 or BL48) | 2 | BL/n | tRTW | 2 |

Note 1: tRTW depends on Section 8.3.1. Note 2: An even-nCK command gap is required.

**Table 89 — Command Timing Constraints for Different Banks in Different Bank Group, DQ ODT Enabled**

| Current CMD | Next CMD: ACTIVE | READ | WRITE | PRECHARGE |
|---|---|---|---|---|
| READ (BL24 or BL48) | 2 | BL/n | tRTW | 2 |

Note 1: tRTW depends on Section 8.3.1. Note 2: An even-nCK command gap is required.

### 8.3.1 RD-to-WR Constraint (tRTW)

DQ ODT and NT-ODT selectors are restored; DFE remains disabled.

**Table 90 — tRTW for Same/Different Banks in the Same BG**

| NT-ODT | DQ ODT | tRTW | Unit |
|---|---|---|---|
| Disabled | Disabled | `RL + BL/n_max + RU(tWCK2DQO(max)/tCK) - WL` | nCK |
| Enabled | Disabled | `RL + BL/n_max + RU(tWCK2DQO(max)/tCK) - WL` | nCK |
| Disabled | Enabled | `RL + BL/n_max + RU(tWCK2DQO(max)/tCK) + RD(tRPST/tCK) - ODTLon - RD(tODTon(min)/tCK) + 1` | nCK |
| Enabled | Enabled | `RL + BL/n_max + RU(tWCK2DQO(max)/tCK) + RD(tRPST/tCK) - ODTLon - RD(tODTon(min)/tCK) + 1` | nCK |

**Table 91 — tRTW for Different Banks in Different BGs**

| NT-ODT | DQ ODT | tRTW | Unit |
|---|---|---|---|
| Disabled | Disabled | `RL + BL/n_min + RU(tWCK2DQO(max)/tCK) - WL` | nCK |
| Enabled | Disabled | `RL + BL/n_min + RU(tWCK2DQO(max)/tCK) - WL` | nCK |
| Disabled | Enabled | `RL + BL/n_min + RU(tWCK2DQO(max)/tCK) + RD(tRPST/tCK) - ODTLon - RD(tODTon(min)/tCK) + 1` | nCK |
| Enabled | Enabled | `RL + BL/n_min + RU(tWCK2DQO(max)/tCK) + RD(tRPST/tCK) - ODTLon - RD(tODTon(min)/tCK) + 1` | nCK |

`tWCK2DQO(max)` uses the defined LF/HF WCK frequency mode.

## 8.4 Auto-Precharge Command Timing Constraints

**Table 92 — AP Constraints, Same Bank in Same BG**

| Current / Next | ACT | RD or RD-AP | WR or WR-AP | PRE | PRE all |
|---|---|---|---|---|---|
| RD with AP, BL24/BL48 | `nRTP + RU(tRPpb/tCK)` | Illegal | Illegal | Illegal | `nRTP` |
| WR with AP, BL24/BL48 | `WL + BL/n_max + nWTP + RU(tRPpb/tCK)` | Illegal | Illegal | Illegal | `WL + BL/n_max + nWTP` |

**Table 93 — AP Constraints, Different Banks in Same BG**

| Current / Next | ACT | RD or RD-AP | WR or WR-AP | PRE | PRE all |
|---|---|---|---|---|---|
| RD with AP, BL24/BL48 | 2 | `BL/n` | `tRTW` | 2 | `nRTP` |
| WR with AP, BL24/BL48 | 2 | `WL + BL/n_max + RU(tWTR_L/tCK)` | `BL/n` | 2 | `WL + BL/n_max + nWTP` |

**Table 94 — AP Constraints, Different Banks in Different BGs**

| Current / Next | ACT | RD or RD-AP | WR or WR-AP | PRE | PRE all |
|---|---|---|---|---|---|
| RD with AP, BL24/BL48 | 2 | `BL/n` | `tRTW` | 2 | `nRTP` |
| WR with AP, BL24/BL48 | 2 | `WL + BL/n_min + RU(tWTR_S/tCK)` | `BL/n` | 2 | `WL + BL/n_max + nWTP` |

All values are nCK.

## 8.5 CAS Command Timing Constraints

**Table 95 — Constraints after CAS(WS=1)**

| Current command | Next command | Minimum [nCK] | Maximum |
|---|---|---|---|
| CAS(`WS=1, WS_OFF=0`) | PDE | `tCMDPD` | — |
|  | ACT-1 | 2 | — |
|  | ACT-2 | 2 | — |
|  | PRE per/all bank | 2 | — |
|  | REFdb/REFab | 2 | — |
|  | WR-S/WR-L | 2 | — |
|  | RD-S/RD-L | 2 | — |
|  | CAS(`WS=1`) | Illegal | Illegal |
|  | CAS(`WS_OFF=1`) | `Max(TBD, tWCKENL_CAS + tWCKPRE_Static)` | — |
|  | SRE | 2 | — |
|  | SRX | 2 | — |
|  | MRW-1 | 2 | — |
|  | MRW-2 | Illegal | Illegal |
|  | MRR | 2 | — |

Duplicate WCK2CK synchronization initiation is illegal. ACT-2 is illegal unless its ACT-1 was issued before the current CAS. Valid WCK continues until the next command; a new synchronization is required if sync has expired. An even-nCK command gap is required.

**Table 96 — Constraints after CAS(WS_OFF=1)**

| Current command | Next command | Minimum [nCK] | Maximum |
|---|---|---|---|
| CAS(`WS=0, WS_OFF=1`) | PDE | `tCMDPD` | — |
|  | ACT-1 | 2 | — |
|  | ACT-2 | 2 | — |
|  | PRE per/all bank | 2 | — |
|  | REFdb/REFab | 2 | — |
|  | WR-S/WR-L | TBD | — |
|  | RD-S/RD-L | TBD | — |
|  | CAS(`WS=1`) | TBD | — |
|  | CAS(`WS_OFF=1`) | Illegal | — |
|  | SRE | 2 | — |
|  | SRX | 2 | — |
|  | MRW-1 | 2 | — |
|  | MRW-2 | Illegal | Illegal |
|  | MRR | TBD | — |

For WR, RD, CAS(`WS=1`), and MRR after CAS(`WS_OFF=1`), a new WCK2CK synchronization with `WS=1` must accompany the next command; otherwise the operation is illegal. An even-nCK command gap is required.

**Table 97 — Constraints to CAS(WS/WS_OFF)**

| Current command | Next command | Minimum [nCK] | Maximum |
|---|---|---|---|
| PDE | CAS(`WS=1`) or CAS(`WS_OFF=1`) | Illegal | Illegal |
| ACT-1 | CAS(`WS=1`) or CAS(`WS_OFF=1`) | 2 | — |
| ACT-2 | CAS(`WS=1`) or CAS(`WS_OFF=1`) | 2 | — |
| PRE per/all bank | CAS(`WS=1`) or CAS(`WS_OFF=1`) | 2 | — |
| REFdb/REFab | CAS(`WS=1`) or CAS(`WS_OFF=1`) | 2 | — |
| WR-S/WR-L | CAS(`WS=1`) or CAS(`WS_OFF=1`) | `WL + BL/n_min + RD(tWCKPST/tCK) + 1` | — |
| RD-S/RD-L | CAS(`WS=1`) or CAS(`WS_OFF=1`) | `RL + BL/n_min + RD(tWCKPST/tCK) + 1` | — |
| SRE | CAS(`WS=1`) or CAS(`WS_OFF=1`) | 2 | — |
| SRX | CAS(`WS=1`) or CAS(`WS_OFF=1`) | `tXSR` | — |
| MRW-1 | CAS(`WS=1`) or CAS(`WS_OFF=1`) | Illegal | Illegal |
| MRW-2 | CAS(`WS=1`) or CAS(`WS_OFF=1`) | `tMRD` | — |
| MRR | CAS(`WS=1`) or CAS(`WS_OFF=1`) | `RL + BL/n_min + RD(tWCKPST/tCK) + 1` | — |

## 8.6 MRR/MRW Timing Constraints

**Table 98 — MRR/MRW Timing Constraints**

| From command | To command | Minimum delay | Unit |
|---|---|---|---|
| MRR | MRR | `tMRR` | — |
| MRR | RD/RD-AP | `RL + BL/n_max + RD(tWCKPST/tCK) + 1` | — |
| MRR | WR/WR-AP | `tRTW + 2` | nCK |
| MRR | MRW | `RL + BL/n_max + Max(RU(tWCK2DQO(max)/tCK), RD(tWCKPST(max)/tCK)) + 2` | nCK |
| RD | MRR | `RL + BL/n_max + RD(tWCKPST/tCK) + 1` | nCK |
| RD-AP | MRR | `RL + nRTP + nACU + Max(RU(7.5 ns/tCK), 6 nCK)` | — |
| WR | MRR | `WL + BL/n_max + RU(tWTR_L/tCK)` | nCK |
| WR-AP | MRR | `WL + BL/n_max + RU(tWTR_L/tCK) + nACU + 2` | nCK |
| MRW | MRR | `tMRD` | — |
| PDX | MRR | `tXP + tMRRI` | — |
| MRW | RD/RD-AP | `tMRD` | — |
| MRW | WR/WR-AP | `tMRD` | — |
| MRW | MRW | `tMRW` | — |
| RD | MRW | `RL + RU(tWCK2DQO(max)/tCK) + BL/n_max + Max(7.5 ns, 6 nCK)` | nCK |
| RD-AP | MRW | `RL + RU(tWCK2DQO(max)/tCK) + BL/n_max + Max(7.5 ns, 6 nCK) + nRTP - 6` | nCK |
| WR | MRW | `WL + BL/n_max + Max(RU(7.5 ns/tCK), 6 nCK)` | nCK |
| WR-AP | MRW | `WL + BL/n_max + Max(RU(7.5 ns/tCK), 6 nCK) + nWTP + nACU + 2` | nCK |
| PRE/PRE-all | MRW | `nACU + 2` | nCK |

The prior command selects `BL/n` or `BL/n_max`; tRTW uses Section 8.3.1.

Note 4: When NT-ODT is enabled (MR20 OP[2:0] != 000B), and the ensuing MRW changes a register listed in Table 99, the MRR-to-MRW minimum is `RL + BL/n_max + Max(RU(tWCK2DQO(max)/tCK), RD(tWCKPST(max)/tCK)) + RU(ODT_RDon(max)) + 3` nCK.

**Table 99 — Defined Registers Affecting WCK/Input Timing**

| Function | MR and operand |
|---|---|
| RL/WL/nWTP/nRTP/nACU | MR1 OP[4:0] |
| RDQS postamble mode | MR10 OP[5] |
| WCK postamble | MR22 OP[7:6] |
| RDQS preamble | MR10 OP[4:2] |
| RDQS postamble length | MR10 OP[7:6] |
| RDQS pre-shift | MR10 OP[0] |
| WCK frequency mode | MR11 OP[6] |
| WCK Always-On | MR22 OP[5] |
| RDQS | MR22 OP[1:0] |
| WCK mode | MR22 OP[3:2] |
| DQ NT-ODT | MR20 OP[2:0] |

Table 99 lists the mode-register fields that affect WCK and input timing.

# 9 Core AC Timing Parameters

## 9.1 Operating-Mode Timing

**Table 100 — Core AC Timing Table Selection**

| Operating mode | DVFSL | Link ECC/EDC | Efficiency Mode |
|---|---|---|---|
| Normal | Disabled | Disabled | Disabled |
| Dynamic Efficiency | Disabled | Disabled | Enabled |

**Table 101 — Core AC Timing, Efficiency Disabled**

| Item | Symbol | Min/Max | Value, CK up to 2667 MHz | Unit |
|---|---|---|---|---|
| Same-bank ACT-to-ACT | tRC | Min | `tRAS + tRPab` after all-bank PRE; `tRAS + tRPpb` after per-bank PRE | — |
| ACT-to-WR | tRCDw | Min | `Max(8 ns, 2 nCK)` | — |
| ACT-to-RD | tRCDr | Min | `Max(18 ns, 2 nCK)` | — |
| Activation-counter update time | tACU | Min | 22 | ns |
| All-bank row precharge | tRPab | Min | `nACU + Max(21 ns, 4 nCK)` | — |
| Per-bank row precharge | tRPpb | Min | `nACU + Max(18 ns, 4 nCK)` | — |
| Row active time | tRAS | Min | `Max(20 ns, 4 nCK)` | — |
| Row active time | tRAS | Max | `Min((9 x tREFI x Refresh Multiplier) - tACU, 70.2 us - tACU)` | — |
| WR-to-PRE | tWTP | Min | `Max(12 ns, 6 nCK)` | — |
| ACT bank A to ACT bank B | tRRD | Min | `Max(3.75 ns, 4 nCK)` | — |
| Four-bank ACT window | tFAW | Min | `4 x tRRD` | — |
| RD-to-PRE | tRTP | Min | `BL/n + 1.25 ns` | — |
| WR-to-RD, different BG | tWTR_S | Min | `Max(6.25 ns, 6 nCK)` | — |
| WR-to-RD, same BG | tWTR_L | Min | `Max(12 ns, 6 nCK)` | — |
| PRE-to-PRE | tPPD | Min | 4 | nCK |

`nACU` is supplied by Table 102, and the maximum-`tRAS` expression closes to the fixed MR4 1x Refresh Multiplier.

**Table 102 — nACU at the Two Fixed Operating Points**

| Data-rate range [Mbps] | CK range [MHz] | nACU [nCK] |
|---|---|---:|
| >1067, <=1600 | >267, <=400 | 9 |
| >7500, <=8533 | >1875, <=2133 | 47 |

`nACU = RU(tACU/tCK)` at the minimum CK period of the selected speed-grade row.

**Table 103 — Core AC Overrides, Dynamic Efficiency Enabled**

| Item | Symbol | Min/Max | Value, CK up to 2667 MHz | Unit |
|---|---|---|---|---|
| WR-to-PRE | tWTP | Min | `Max(14 ns, 6 nCK)` | — |
| WR-to-RD, different BG | tWTR_S | Min | `Max(8.25 ns, 6 nCK)` | — |
| WR-to-RD, same BG | tWTR_L | Min | `Max(14 ns, 6 nCK)` | — |

# 10 WCK-to-DQ Timing Parameters

## 10.1 tWCK2DQ Parameters

**Table 104 — tWCK2DQ AC Parameters**

| Parameter | Symbol | Up to 1600 Mbps | >1600, <=4800 Mbps | >4800, <=10667 Mbps | >10667 Mbps | Min/Max | Units |
|---|---|---:|---|---:|---|---|---|
| DQ to WCK input offset | tWCK2DQI_HF | 250/600 | 250/600 | 250/600 | TBD | Min/Max | ps |
| DQ to WCK input offset | tWCK2DQI_LF | 300/900 | 300/900 | N/A | N/A | Min/Max | ps |
| DQ to WCK output offset | tWCK2DQO_HF | 650/1600 | 650/1600 | 650/1600 | TBD | Min/Max | ps |
| DQ to WCK output offset | tWCK2DQO_LF | 650/1900 | 650/1900 | N/A | N/A | Min/Max | ps |

The command-spacing expressions use maxima of 900 ps and 1900 ps at FSP0, and 600 ps and 1600 ps at FSP1, for input and output offset respectively. Output offset is a numeric operand in the corresponding input-command interval.

---
