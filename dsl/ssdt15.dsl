/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt15.dat, Mon Aug  8 17:21:58 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000005A1 (1441)
 *     Revision         0x01
 *     Checksum         0xDF
 *     OEM ID           "AMD"
 *     OEM Table ID     "AmdTable"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20130117 (538116375)
 */
DefinitionBlock ("", "SSDT", 1, "AMD", "AmdTable", 0x00000001)
{
    /*
     * iASL Warning: There were 2 external control methods found during
     * disassembly, but only 0 were resolved (2 unresolved). Additional
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
    External (_SB_.PCI0.LPC0.EC0_.ECMD, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (MSTP, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (TPOS, UnknownObj)

    OperationRegion (AOAR, SystemMemory, 0xFED81E00, 0x0100)
    Field (AOAR, AnyAcc, Lock, Preserve)
    {
        Offset (0x76), 
            ,   3, 
        PWRD,   1
    }

    Scope (\_SB)
    {
        Device (PEP)
        {
            Name (_HID, "AMDI0005")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0D80") /* Windows-compatible System Power Management Controller */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (DEVL, Package (0x03)
            {
                Zero, 
                0x25, 
                Package (0x25)
                {
                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C000", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C001", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C002", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C003", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C004", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C005", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C006", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C007", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C008", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C009", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C00A", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C00B", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C00C", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C00D", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C00E", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PLTF.C00F", 
                        One, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GPP0", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GPP1", 
                        0x02, 
                        One
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GPP4", 
                        0x02, 
                        One
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GPP0.VGA", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GPP0.HDAU", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GPP1.WLAN", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GPP2.NVME", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GPP3.RTL8", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GPP3.RUSB", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GP17.VGA", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GP17.AZAL", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GP17.ACP", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GP17.HDAU", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GP17.XHC0", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GP17.XHC1", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GP17.XHC0.RHUB.PRT4", 
                        Zero, 
                        0x02
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GP18.SATA", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.PCI0.GP18.SAT1", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.I2CC.NFC1", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.FAR0", 
                        Zero, 
                        0x03
                    }, 

                    Package (0x04)
                    {
                        One, 
                        "\\_SB.FAR1", 
                        Zero, 
                        0x03
                    }
                }
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TPOS >= 0x60))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e3f32452-febc-43ce-9039-932122d37721") /* Unknown UUID */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (Zero)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x07                                             // .
                                    })
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }

                            }
                        }
                        Case (One)
                        {
                            Return (DEVL) /* \_SB_.PEP_.DEVL */
                        }
                        Case (0x02)
                        {
                            \_SB.PCI0.LPC0.EC0.ECMD (0x2C)
                            PWRD = One
                            MSTP (0x3E02)
                            Return (Zero)
                        }
                        Case (0x03)
                        {
                            \_SB.PCI0.LPC0.EC0.ECMD (0x2D)
                            MSTP (0x3E03)
                            Return (Zero)
                        }
                        Case (0x04)
                        {
                            MSTP (0x3E04)
                            Return (Zero)
                        }
                        Case (0x05)
                        {
                            MSTP (0x3E05)
                            Return (Zero)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Name (SUPP, Zero)
            CreateDWordField (Arg3, Zero, CDW1)
            CreateDWordField (Arg3, 0x04, CDW2)
            If ((Arg0 == ToUUID ("0811b06e-4a27-44f9-8d60-3cbbc22e7b48") /* Platform-wide Capabilities */))
            {
                SUPP = CDW2 /* \_SB_._OSC.CDW2 */
                SUPP &= 0x04
                CDW2 = SUPP /* \_SB_._OSC.SUPP */
                Return (Arg3)
            }
            Else
            {
                CDW1 |= 0x04
                Return (Arg3)
            }
        }
    }
}

