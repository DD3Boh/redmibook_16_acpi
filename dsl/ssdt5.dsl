/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt5.dat, Mon Aug  8 17:21:58 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000343 (835)
 *     Revision         0x01
 *     Checksum         0x1D
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
    External (_SB_.GPIO, DeviceObj)
    External (_SB_.PCI0.GP17.ACP_, UnknownObj)
    External (_SB_.PCI0.GP17.AZAL, UnknownObj)
    External (_SB_.PCI0.GP17.XHC0, UnknownObj)
    External (_SB_.PCI0.GP17.XHC1, UnknownObj)
    External (_SB_.PCI0.GPP1, UnknownObj)
    External (_SB_.PCI0.GPP2, UnknownObj)
    External (_SB_.PCI0.GPP3, UnknownObj)
    External (_SB_.PCI0.GPP4, UnknownObj)
    External (_SB_.PWRB, UnknownObj)
    External (M000, MethodObj)    // Warning: Unknown method, guessing 1 arguments

    Method (MSTP, 1, Serialized)
    {
        Local0 = (Arg0 - 0x0C00)
        M000 (Local0)
    }

    Scope (\_SB.GPIO)
    {
        Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
        {
            Name (BUF0, ResourceTemplate ()
            {
                GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x1388,
                    "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0000
                    }
                GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                    "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x002C
                    }
                GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                    "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x003D
                    }
                GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                    "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x003E
                    }
                GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                    "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x003A
                    }
                GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                    "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x003B
                    }
                GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                    "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0002
                    }
                GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                    "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0011
                    }
                GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                    "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0012
                    }
                GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                    "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0018
                    }
            })
            Return (BUF0) /* \_SB_.GPIO._AEI.BUF0 */
        }

        OperationRegion (ECRM, EmbeddedControl, Zero, 0xFF)
        Field (ECRM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xCC), 
            PBCN,   8
        }

        Method (_EVT, 1, Serialized)  // _EVT: Event
        {
            Switch (ToInteger (Arg0))
            {
                Case (Zero)
                {
                    MSTP (0x3900)
                    Notify (\_SB.PWRB, 0x80) // Status Change
                }
                Case (0x02)
                {
                    MSTP (0x3902)
                    Notify (\_SB.PCI0.GPP1, 0x02) // Device Wake
                }
                Case (0x11)
                {
                    MSTP (0x3917)
                    Notify (\_SB.PCI0.GPP2, 0x02) // Device Wake
                }
                Case (0x12)
                {
                    MSTP (0x3918)
                    Notify (\_SB.PCI0.GPP4, 0x02) // Device Wake
                }
                Case (0x18)
                {
                    MSTP (0x3924)
                    Notify (\_SB.PCI0.GPP3, 0x02) // Device Wake
                }
                Case (0x3A)
                {
                    MSTP (0x3958)
                    Notify (\_SB.PCI0.GP17.XHC0, 0x02) // Device Wake
                }
                Case (0x3B)
                {
                    MSTP (0x3959)
                    Notify (\_SB.PCI0.GP17.XHC1, 0x02) // Device Wake
                }
                Case (0x3D)
                {
                    MSTP (0x3961)
                    Notify (\_SB.PCI0.GP17.AZAL, 0x02) // Device Wake
                }
                Case (0x3E)
                {
                    MSTP (0x3961)
                    Notify (\_SB.PCI0.GP17.ACP, 0x02) // Device Wake
                }

            }
        }
    }
}

