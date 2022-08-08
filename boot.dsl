/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of boot.dat, Mon Aug  8 17:21:58 2022
 *
 * ACPI Data Table [BOOT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000   4]                    Signature : "BOOT"    [Simple Boot Flag Table]
[004h 0004   4]                 Table Length : 00000028
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 61
[00Ah 0010   6]                       Oem ID : "XMCC  "
[010h 0016   8]                 Oem Table ID : "XMCC1953"
[018h 0024   4]                 Oem Revision : 00000002
[01Ch 0028   4]              Asl Compiler ID : "    "
[020h 0032   4]        Asl Compiler Revision : 01000013

[024h 0036   1]          Boot Register Index : 44
[025h 0037   3]                     Reserved : 000000

Raw Table Data: Length 40 (0x28)

    0000: 42 4F 4F 54 28 00 00 00 01 61 58 4D 43 43 20 20  // BOOT(....aXMCC  
    0010: 58 4D 43 43 31 39 35 33 02 00 00 00 20 20 20 20  // XMCC1953....    
    0020: 13 00 00 01 44 00 00 00                          // ....D...
