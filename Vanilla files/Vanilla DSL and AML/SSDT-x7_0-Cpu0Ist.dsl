/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-x7_0-Cpu0Ist.aml, Sat Sep  1 22:39:05 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000005FD (1533)
 *     Revision         0x02
 *     Checksum         0xCA
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120816 (538052630)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "Cpu0Ist", 0x00003000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_PR_.CFGD, FieldUnitObj)
    External (_PR_.CPPC, FieldUnitObj)
    External (_PR_.CPU0, ProcessorObj)
    External (_SB_.OSCP, IntObj)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (PDC0, IntObj)
    External (TCNT, FieldUnitObj)

    Scope (\_PR.CPU0)
    {
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_PR.CPPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            If (LAnd (And (CFGD, One), And (PDC0, One)))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }
        }

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If (And (\_SB.OSCP, 0x0400))
            {
                Return (TPSS)
            }
            Else
            {
                Return (LPSS)
            }
        }

        Name (LPSS, Package (0x10)
        {
            Package (0x06)
            {
                0x000008FD, 
                0x00003A98, 
                0x0000000A, 
                0x0000000A, 
                0x00001700, 
                0x00001700
            }, 

            Package (0x06)
            {
                0x000008FC, 
                0x00003A98, 
                0x0000000A, 
                0x0000000A, 
                0x00001700, 
                0x00001700
            }, 

            Package (0x06)
            {
                0x00000898, 
                0x00003708, 
                0x0000000A, 
                0x0000000A, 
                0x00001600, 
                0x00001600
            }, 

            Package (0x06)
            {
                0x000007D0, 
                0x000030AE, 
                0x0000000A, 
                0x0000000A, 
                0x00001400, 
                0x00001400
            }, 

            Package (0x06)
            {
                0x0000076C, 
                0x00002DE1, 
                0x0000000A, 
                0x0000000A, 
                0x00001300, 
                0x00001300
            }, 

            Package (0x06)
            {
                0x00000708, 
                0x00002B22, 
                0x0000000A, 
                0x0000000A, 
                0x00001200, 
                0x00001200
            }, 

            Package (0x06)
            {
                0x00000640, 
                0x00002546, 
                0x0000000A, 
                0x0000000A, 
                0x00001000, 
                0x00001000
            }, 

            Package (0x06)
            {
                0x000005DC, 
                0x000022B2, 
                0x0000000A, 
                0x0000000A, 
                0x00000F00, 
                0x00000F00
            }, 

            Package (0x06)
            {
                0x00000514, 
                0x00001D2F, 
                0x0000000A, 
                0x0000000A, 
                0x00000D00, 
                0x00000D00
            }, 

            Package (0x06)
            {
                0x000004B0, 
                0x00001AC7, 
                0x0000000A, 
                0x0000000A, 
                0x00000C00, 
                0x00000C00
            }, 

            Package (0x06)
            {
                0x0000044C, 
                0x000017E9, 
                0x0000000A, 
                0x0000000A, 
                0x00000B00, 
                0x00000B00
            }, 

            Package (0x06)
            {
                0x00000384, 
                0x0000135B, 
                0x0000000A, 
                0x0000000A, 
                0x00000900, 
                0x00000900
            }, 

            Package (0x06)
            {
                0x00000320, 
                0x000010AB, 
                0x0000000A, 
                0x0000000A, 
                0x00000800, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002BC, 
                0x00000E86, 
                0x0000000A, 
                0x0000000A, 
                0x00000700, 
                0x00000700
            }, 

            Package (0x06)
            {
                0x000001F4, 
                0x000009EA, 
                0x0000000A, 
                0x0000000A, 
                0x00000500, 
                0x00000500
            }, 

            Package (0x06)
            {
                0x00000190, 
                0x000007EC, 
                0x0000000A, 
                0x0000000A, 
                0x00000400, 
                0x00000400
            }, 

            Name (TPSS, Package (0x15)
            {
                Package (0x06)
                {
                    0x000008FD, 
                    0x00003A98, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001700, 
                    0x00001700
                }, 

                Package (0x06)
                {
                    0x000008FC, 
                    0x00003A98, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001700, 
                    0x00001700
                }, 

                Package (0x06)
                {
                    0x00000898, 
                    0x00003708, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001600, 
                    0x00001600
                }, 

                Package (0x06)
                {
                    0x00000834, 
                    0x0000341C, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001500, 
                    0x00001500
                }, 

                Package (0x06)
                {
                    0x000007D0, 
                    0x000030AE, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001400, 
                    0x00001400
                }, 

                Package (0x06)
                {
                    0x0000076C, 
                    0x00002DE1, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001300, 
                    0x00001300
                }, 

                Package (0x06)
                {
                    0x00000708, 
                    0x00002B22, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001200, 
                    0x00001200
                }, 

                Package (0x06)
                {
                    0x000006A4, 
                    0x000027E7, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001100, 
                    0x00001100
                }, 

                Package (0x06)
                {
                    0x00000640, 
                    0x00002546, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001000, 
                    0x00001000
                }, 

                Package (0x06)
                {
                    0x000005DC, 
                    0x000022B2, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000F00, 
                    0x00000F00
                }, 

                Package (0x06)
                {
                    0x00000578, 
                    0x00001FA5, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000E00, 
                    0x00000E00
                }, 

                Package (0x06)
                {
                    0x00000514, 
                    0x00001D2F, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000D00, 
                    0x00000D00
                }, 

                Package (0x06)
                {
                    0x000004B0, 
                    0x00001AC7, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000C00, 
                    0x00000C00
                }, 

                Package (0x06)
                {
                    0x0000044C, 
                    0x000017E9, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000B00, 
                    0x00000B00
                }, 

                Package (0x06)
                {
                    0x000003E8, 
                    0x0000159B, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000A00, 
                    0x00000A00
                }, 

                Package (0x06)
                {
                    0x00000384, 
                    0x0000135B, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000900, 
                    0x00000900
                }, 

                Package (0x06)
                {
                    0x00000320, 
                    0x000010AB, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000800, 
                    0x00000800
                }, 

                Package (0x06)
                {
                    0x000002BC, 
                    0x00000E86, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000700, 
                    0x00000700
                }, 

                Package (0x06)
                {
                    0x00000258, 
                    0x00000C6E, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000600, 
                    0x00000600
                }, 

                Package (0x06)
                {
                    0x000001F4, 
                    0x000009EA, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000500, 
                    0x00000500
                }, 

                Package (0x06)
                {
                    0x00000190, 
                    0x000007EC, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000400, 
                    0x00000400
                }
            })
        })
        0x00
        Zero
        Zero
        0x00001400
        0x00001400
        Package (0x06)
        {
            0x0000076C, 
            0x00002DE1, 
            0x0000000A, 
            0x0000000A, 
            0x00001300, 
            0x00001300
        }

        Package (0x06)
        {
            0x00000708, 
            0x00002B22, 
            0x0000000A, 
            0x0000000A, 
            0x00001200, 
            0x00001200
        }

        Package (0x06)
        {
            0x000006A4, 
            0x000027E7, 
            0x0000000A, 
            0x0000000A, 
            0x00001100, 
            0x00001100
        }

        Package (0x06)
        {
            0x00000640, 
            0x00002546, 
            0x0000000A, 
            0x0000000A, 
            0x00001000, 
            0x00001000
        }

        Package (0x06)
        {
            0x000005DC, 
            0x000022B2, 
            0x0000000A, 
            0x0000000A, 
            0x00000F00, 
            0x00000F00
        }

        Package (0x06)
        {
            0x00000578, 
            0x00001FA5, 
            0x0000000A, 
            0x0000000A, 
            0x00000E00, 
            0x00000E00
        }

        Package (0x06)
        {
            0x00000514, 
            0x00001D2F, 
            0x0000000A, 
            0x0000000A, 
            0x00000D00, 
            0x00000D00
        }

        Package (0x06)
        {
            0x000004B0, 
            0x00001AC7, 
            0x0000000A, 
            0x0000000A, 
            0x00000C00, 
            0x00000C00
        }

        Package (0x06)
        {
            0x0000044C, 
            0x000017E9, 
            0x0000000A, 
            0x0000000A, 
            0x00000B00, 
            0x00000B00
        }

        Package (0x06)
        {
            0x000003E8, 
            0x0000159B, 
            0x0000000A, 
            0x0000000A, 
            0x00000A00, 
            0x00000A00
        }

        Package (0x06)
        {
            0x00000384, 
            0x0000135B, 
            0x0000000A, 
            0x0000000A, 
            0x00000900, 
            0x00000900
        }

        Package (0x06)
        {
            0x00000320, 
            0x000010AB, 
            0x0000000A, 
            0x0000000A, 
            0x00000800, 
            0x00000800
        }

        Package (0x06)
        {
            0x000002BC, 
            0x00000E86, 
            0x0000000A, 
            0x0000000A, 
            0x00000700, 
            0x00000700
        }

        Package (0x06)
        {
            0x00000258, 
            0x00000C6E, 
            0x0000000A, 
            0x0000000A, 
            0x00000600, 
            0x00000600
        }

        Package (0x06)
        {
            0x000001F4, 
            0x000009EA, 
            0x0000000A, 
            0x0000000A, 
            0x00000500, 
            0x00000500
        }

        Package (0x06)
        {
            0x00000190, 
            0x000007EC, 
            0x0000000A, 
            0x0000000A, 
            0x00000400, 
            0x00000400
        }

        Name (PSDF, Zero)
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (LNot (PSDF))
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
                Store (Ones, PSDF)
            }

            If (And (PDC0, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }

        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }
}

