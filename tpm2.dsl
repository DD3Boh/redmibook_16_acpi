/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of tpm2.dat, Mon Aug  8 17:21:58 2022
 *
 * ACPI Data Table [TPM2]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000   4]                    Signature : "TPM2"    [Trusted Platform Module hardware interface Table]
[004h 0004   4]                 Table Length : 00000034
[008h 0008   1]                     Revision : 04
[009h 0009   1]                     Checksum : B2
[00Ah 0010   6]                       Oem ID : "XMCC  "
[010h 0016   8]                 Oem Table ID : "XMCC1953"
[018h 0024   4]                 Oem Revision : 00000002
[01Ch 0028   4]              Asl Compiler ID : "    "
[020h 0032   4]        Asl Compiler Revision : 01000013

[024h 0036   2]               Platform Class : 0000
[026h 0038   2]                     Reserved : 0000
[028h 0040   8]              Control Address : 00000000FDE10510
[030h 0048   4]                 Start Method : 02 [ACPI Start Method]

/**** ACPI table terminates in the middle of a data structure! (dump table) */

Raw Table Data: Length 52 (0x34)

    0000: 54 50 4D 32 34 00 00 00 04 B2 58 4D 43 43 20 20  // TPM24.....XMCC  
    0010: 58 4D 43 43 31 39 35 33 02 00 00 00 20 20 20 20  // XMCC1953....    
    0020: 13 00 00 01 00 00 00 00 10 05 E1 FD 00 00 00 00  // ................
    0030: 02 00 00 00                                      // ....
