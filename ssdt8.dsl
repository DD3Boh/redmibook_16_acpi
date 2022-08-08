/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt8.dat, Mon Aug  8 17:21:58 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000080 (128)
 *     Revision         0x01
 *     Checksum         0xDE
 *     OEM ID           "XMCC  "
 *     OEM Table ID     "XMCC1953"
 *     OEM Revision     0x00000002 (2)
 *     Compiler ID      "    "
 *     Compiler Version 0x01000013 (16777235)
 */
DefinitionBlock ("", "SSDT", 1, "XMCC  ", "XMCC1953", 0x00000002)
{
    External (_SB_.PCI0.GP18.SATA, DeviceObj)

    Scope (\_SB.PCI0.GP18.SATA)
    {
        Device (PRT0)
        {
            Name (_ADR, 0xFFFF)  // _ADR: Address
            Name (NOP, Buffer (0x07)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         // .......
            })
            Name (SGTF, Buffer (0x07)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5         // .......
            })
            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (Zero)
                {
                    Return (SGTF) /* \_SB_.PCI0.GP18.SATA.PRT0.SGTF */
                }
                Else
                {
                    Return (NOP) /* \_SB_.PCI0.GP18.SATA.PRT0.NOP_ */
                }
            }
        }
    }
}

