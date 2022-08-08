/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of fpdt.dat, Mon Aug  8 17:21:58 2022
 *
 * ACPI Data Table [FPDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000   4]                    Signature : "FPDT"    [Firmware Performance Data Table]
[004h 0004   4]                 Table Length : 00000044
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 17
[00Ah 0010   6]                       Oem ID : "XMCC  "
[010h 0016   8]                 Oem Table ID : "XMCC1953"
[018h 0024   4]                 Oem Revision : 00000002
[01Ch 0028   4]              Asl Compiler ID : "    "
[020h 0032   4]        Asl Compiler Revision : 01000013


[024h 0036   2]                Subtable Type : 0000
[026h 0038   1]                       Length : 10
[027h 0039   1]                     Revision : 01
[028h 0040   4]                     Reserved : 00000000
[02Ch 0044   8]     FPDT Boot Record Address : 00000000CBF7F000

[034h 0052   2]                Subtable Type : 0001
[036h 0054   1]                       Length : 10
[037h 0055   1]                     Revision : 01
[038h 0056   4]                     Reserved : 00000000
[03Ch 0060   8]          S3PT Record Address : 00000000CCF7E000

Raw Table Data: Length 68 (0x44)

    0000: 46 50 44 54 44 00 00 00 01 17 58 4D 43 43 20 20  // FPDTD.....XMCC  
    0010: 58 4D 43 43 31 39 35 33 02 00 00 00 20 20 20 20  // XMCC1953....    
    0020: 13 00 00 01 00 00 10 01 00 00 00 00 00 F0 F7 CB  // ................
    0030: 00 00 00 00 01 00 10 01 00 00 00 00 00 E0 F7 CC  // ................
    0040: 00 00 00 00                                      // ....
