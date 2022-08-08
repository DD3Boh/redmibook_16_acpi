/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of bgrt.dat, Mon Aug  8 17:21:58 2022
 *
 * ACPI Data Table [BGRT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000   4]                    Signature : "BGRT"    [Boot Graphics Resource Table]
[004h 0004   4]                 Table Length : 00000038
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : B9
[00Ah 0010   6]                       Oem ID : "INSYDE"
[010h 0016   8]                 Oem Table ID : "H2O BIOS"
[018h 0024   4]                 Oem Revision : 00000001
[01Ch 0028   4]              Asl Compiler ID : "ACPI"
[020h 0032   4]        Asl Compiler Revision : 00040000

[024h 0036   2]                      Version : 0001
[026h 0038   1]       Status (decoded below) : 01
                                   Displayed : 1
                          Orientation Offset : 0
[027h 0039   1]                   Image Type : 00
[028h 0040   8]                Image Address : 00000000B3604000
[030h 0048   4]                Image OffsetX : 0000038E
[034h 0052   4]                Image OffsetY : 000001F4

Raw Table Data: Length 56 (0x38)

    0000: 42 47 52 54 38 00 00 00 01 B9 49 4E 53 59 44 45  // BGRT8.....INSYDE
    0010: 48 32 4F 20 42 49 4F 53 01 00 00 00 41 43 50 49  // H2O BIOS....ACPI
    0020: 00 00 04 00 01 00 01 00 00 40 60 B3 00 00 00 00  // .........@`.....
    0030: 8E 03 00 00 F4 01 00 00                          // ........
