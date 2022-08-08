/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt3.dat, Mon Aug  8 17:21:58 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000822 (2082)
 *     Revision         0x01
 *     Checksum         0xC2
 *     OEM ID           "AMD"
 *     OEM Table ID     "AmdTable"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20130117 (538116375)
 */
DefinitionBlock ("", "SSDT", 1, "AMD", "AmdTable", 0x00000001)
{
    /*
     * iASL Warning: There was 1 external control method found during
     * disassembly, but only 0 were resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.PCI0.LPC0.EC0_, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.RBRM, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.WBRM, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M310, FieldUnitObj)
    External (M320, FieldUnitObj)

    Scope (\_SB)
    {
        Device (UBTC)
        {
            Name (_HID, EisaId ("USBC000"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0CA0"))  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DDN, "USB Type C")  // _DDN: DOS Device Name
            Name (_ADR, Zero)  // _ADR: Address
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PCI0.LPC0.EC0
            })
            Name (CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
            })
            Device (CR01)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (PLD1, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x91, 0x0C, 0x80, 0x02, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLD1) /* \_SB_.UBTC.CR01.PLD1 */
                }
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRS, \_SB.UBTC._Y11._BAS, CBAS)  // _BAS: Base Address
                Local0 = M310 /* External reference */
                CBAS = (Local0 + 0x1D)
                Return (CRS) /* \_SB_.UBTC.CRS_ */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            OperationRegion (USBC, SystemMemory, M320, 0x30)
            Field (USBC, ByteAcc, Lock, Preserve)
            {
                VER1,   8, 
                VER2,   8, 
                RSV1,   8, 
                RSV2,   8, 
                CCI0,   8, 
                CCI1,   8, 
                CCI2,   8, 
                CCI3,   8, 
                CTL0,   8, 
                CTL1,   8, 
                CTL2,   8, 
                CTL3,   8, 
                CTL4,   8, 
                CTL5,   8, 
                CTL6,   8, 
                CTL7,   8, 
                MGI0,   8, 
                MGI1,   8, 
                MGI2,   8, 
                MGI3,   8, 
                MGI4,   8, 
                MGI5,   8, 
                MGI6,   8, 
                MGI7,   8, 
                MGI8,   8, 
                MGI9,   8, 
                MGIA,   8, 
                MGIB,   8, 
                MGIC,   8, 
                MGID,   8, 
                MGIE,   8, 
                MGIF,   8, 
                MGO0,   8, 
                MGO1,   8, 
                MGO2,   8, 
                MGO3,   8, 
                MGO4,   8, 
                MGO5,   8, 
                MGO6,   8, 
                MGO7,   8, 
                MGO8,   8, 
                MGO9,   8, 
                MGOA,   8, 
                MGOB,   8, 
                MGOC,   8, 
                MGOD,   8, 
                MGOE,   8, 
                MGOF,   8
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("6f8398c2-7ca4-11e4-ad36-631042b5008f") /* Unknown UUID */))
                {
                    If ((ToInteger (Arg2) == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x07                                             // .
                        })
                    }
                    ElseIf ((ToInteger (Arg2) == One))
                    {
                        \_SB.PCI0.LPC0.EC0.WBRM (MGO0, 0x30)
                        \_SB.PCI0.LPC0.EC0.WBRM (MGO1, 0x31)
                        \_SB.PCI0.LPC0.EC0.WBRM (MGO2, 0x32)
                        \_SB.PCI0.LPC0.EC0.WBRM (MGO3, 0x33)
                        \_SB.PCI0.LPC0.EC0.WBRM (MGO4, 0x34)
                        \_SB.PCI0.LPC0.EC0.WBRM (MGO5, 0x35)
                        \_SB.PCI0.LPC0.EC0.WBRM (MGO6, 0x36)
                        \_SB.PCI0.LPC0.EC0.WBRM (MGO7, 0x37)
                        \_SB.PCI0.LPC0.EC0.WBRM (MGO8, 0x38)
                        \_SB.PCI0.LPC0.EC0.WBRM (MGO9, 0x39)
                        \_SB.PCI0.LPC0.EC0.WBRM (MGOA, 0x3A)
                        \_SB.PCI0.LPC0.EC0.WBRM (MGOB, 0x3B)
                        \_SB.PCI0.LPC0.EC0.WBRM (MGOC, 0x3C)
                        \_SB.PCI0.LPC0.EC0.WBRM (MGOD, 0x3D)
                        \_SB.PCI0.LPC0.EC0.WBRM (MGOE, 0x3E)
                        \_SB.PCI0.LPC0.EC0.WBRM (MGOF, 0x3F)
                        \_SB.PCI0.LPC0.EC0.WBRM (CTL0, 0x18)
                        \_SB.PCI0.LPC0.EC0.WBRM (CTL1, 0x19)
                        \_SB.PCI0.LPC0.EC0.WBRM (CTL2, 0x1A)
                        \_SB.PCI0.LPC0.EC0.WBRM (CTL3, 0x1B)
                        \_SB.PCI0.LPC0.EC0.WBRM (CTL4, 0x1C)
                        \_SB.PCI0.LPC0.EC0.WBRM (CTL5, 0x1D)
                        \_SB.PCI0.LPC0.EC0.WBRM (CTL6, 0x1E)
                        \_SB.PCI0.LPC0.EC0.WBRM (CTL7, 0x1F)
                        \_SB.PCI0.LPC0.EC0.WBRM (0xE0, 0x40)
                    }
                    ElseIf ((ToInteger (Arg2) == 0x02))
                    {
                        0x20 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGI0
                        0x21 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGI1
                        0x22 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGI2
                        0x23 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGI3
                        0x24 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGI4
                        0x25 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGI5
                        0x26 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGI6
                        0x27 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGI7
                        0x28 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGI8
                        0x29 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGI9
                        0x2A = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGIA
                        0x2B = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGIB
                        0x2C = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGIC
                        0x2D = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGID
                        0x2E = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGIE
                        0x2F = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        MGIF
                        0x10 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        VER1
                        0x11 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        VER2
                        0x12 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        RSV1
                        0x13 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        RSV2
                        0x14 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        CCI0
                        0x15 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        CCI1
                        0x16 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        CCI2
                        0x17 = \_SB.PCI0.LPC0.EC0.RBRM /* External reference */
                        CCI3
                        \_SB.PCI0.LPC0.EC0.WBRM (Zero, 0x14)
                        \_SB.PCI0.LPC0.EC0.WBRM (Zero, 0x17)
                    }
                }

                Return (Zero)
            }
        }
    }
}

