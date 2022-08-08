/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt7.dat, Mon Aug  8 17:21:58 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000020A (522)
 *     Revision         0x01
 *     Checksum         0xA2
 *     OEM ID           "AMD"
 *     OEM Table ID     "AmdTable"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20130117 (538116375)
 */
DefinitionBlock ("", "SSDT", 1, "AMD", "AmdTable", 0x00000001)
{
    External (_SB_.PCI0.GP17.XHC0, DeviceObj)
    External (_SB_.PCI0.GP17.XHC1, DeviceObj)
    External (MSTP, MethodObj)    // 1 Arguments

    Scope (\_SB.PCI0.GP17.XHC0)
    {
        Name (D0U0, One)
        Name (D3U0, Zero)
        PowerResource (P0U0, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                MSTP (0x3C05)
                Return (D0U0) /* \_SB_.PCI0.GP17.XHC0.D0U0 */
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                MSTP (0x3C06)
                D0U0 = One
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                MSTP (0x3C08)
                D0U0 = Zero
            }
        }

        PowerResource (P3U0, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                MSTP (0x3C0A)
                Return (D3U0) /* \_SB_.PCI0.GP17.XHC0.D3U0 */
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                MSTP (0x3C0B)
                D3U0 = One
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                MSTP (0x3C0D)
                D3U0 = Zero
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            P0U0
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            P3U0
        })
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            MSTP (0x3C04)
            Return (0x04)
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            MSTP (0x3C01)
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            MSTP (0x3C03)
        }
    }

    Scope (\_SB.PCI0.GP17.XHC1)
    {
        Name (D0U1, One)
        Name (D3U1, Zero)
        PowerResource (P0U1, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                MSTP (0x3D05)
                Return (D0U1) /* \_SB_.PCI0.GP17.XHC1.D0U1 */
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                MSTP (0x3D06)
                D0U1 = One
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                MSTP (0x3D08)
                D0U1 = Zero
            }
        }

        PowerResource (P3U1, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                MSTP (0x3D0A)
                Return (D3U1) /* \_SB_.PCI0.GP17.XHC1.D3U1 */
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                MSTP (0x3D0B)
                D3U1 = One
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                MSTP (0x3D0D)
                D3U1 = Zero
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            P0U1
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            P3U1
        })
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            MSTP (0x3D04)
            Return (0x04)
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            MSTP (0x3D01)
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            MSTP (0x3D03)
        }
    }
}

