//
DefinitionBlock ("", "SSDT", 2, "ACDT", "RMCF", 0)
{
    External (EV5X, MethodObj)
    External(_SB.PCI0.LPCB.PS2K, DeviceObj)

    Scope (_SB.PCI0.LPCB.PS2K)
    {
        Name (RMCF,Package() 
        {
            "Mouse", Package ()
            {
                "ActLikeTrackpad", 
                ">y"
            },

            "Keyboard", Package()
            {
                "Custom PS2 Map", Package()
                {
                    Package(){},
                    "e05b=38",      // left win -> left options
                    "38=e05b",      // left alt -> left commmand
                    "e038=e05c",    // right alt -> right commmand
                    "e01d=e038",    // right ctrl -> right options
                    "46=0",         // disable Fn + S
                    "e045=0",       // disable Fn + B
                    "e037=64",      // Fn+F10 -> F13
                }
            }
        })
    }

    Method (EV5, 2, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            If (LEqual (Arg0, One))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0406)
            }

            If (And (Arg0, 0x02))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0405)
            }
        }
        Else
        {
            EV5X (Arg0, Arg1)
        }
    }
}
//EOF