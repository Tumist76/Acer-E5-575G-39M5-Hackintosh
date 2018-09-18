# Acer E5-575G-39M5 Hackintosh Project

![](https://i.imgur.com/UOIFIbU.jpg)

**Heavy work in progress going here**

This is my first hackintosh and though it required a decent time commitment, I think that's a great device for using both Mac and Windows without a lot of compromises. 

## Problems

* Card reader has issues (rebooting after ejecting the SDCard, not working after sleep)
* Brightness keys don't work yet
* Nvidia card is not working and won't work because Mac OS doesn't support Optimus
* Wi-Fi isn't working (requrires different module)
* No HDMI output after disabling discrete graphics (VGA works)

## Software you'll need
* [MaciASL](https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads/)
* 
## Kexts you'll need

* [FakeSMC.kext](https://github.com/RehabMan/OS-X-FakeSMC-kozlek)
* [VoodooPS2Controller.kext](https://github.com/RehabMan/OS-X-Voodoo-PS2-Controller)
* [Sinetek's Realtek kext](https://www.insanelymac.com/forum/topic/321080-sineteks-driver-for-realtek-rtsx-sdhc-card-readers/?page=2&tab=comments#comment-2376387)


## Getting things to work after install
Here starts a quite long jorney to a working and usable notebook. 

### Basic DSDT patching
I won't provide basics of DSDT patching here, only the issues I've encountered along the way. Please use [ReHabMan's patching guide](https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/) to learn the basics and apply common DSDT patches. Use the following entries for **refs.txt** when you'll be disassembling the *.aml files:
```
External(_GPE.MMTB, MethodObj, 0)
External(_SB.PCI0.LPCB.H_EC.ECWT, MethodObj, 2)
External(_SB.PCI0.LPCB.H_EC.ECRD, MethodObj, 1)
External(_SB.PCI0.LPCB.H_EC.ECMD, MethodObj, 1)
External(_SB.PCI0.PEG0.PEGP.SGPO, MethodObj, 2)
External(_SB.PCI0.GFX0.DD02._BCM, MethodObj, 1)
External(_SB.PCI0.SAT0.SDSM, MethodObj, 4)
External(_GPE.VHOV, MethodObj, 3)
External(_SB.PCI0.XHC.RHUB.TPLD, MethodObj, 2)
```

You'll need these patches from there:
* "Fix _WAK Arg0 v2"
* "HPET Fix"
* "SMBUS Fix"
* "IRQ Fix"
* "RTC Fix"
* "OS Check Fix" (Windows 10)
* "Fix Mutex with non-zero SyncLevel"

### Disabling discrete card

### Backlight control

### Audio and microphone
1. [Download](https://www.insanelymac.com/forum/files/file/496-applehda-patcher/) AppleHDAPatcher.
2. Go to `/System/Library/Extensions` and copy AppleHDA.kext somewhere safe in case you'll need to restore or use the unpatched version.
3. Launch the patcher.
4. Drag the AppleHDA.kext to the window.
5. Select **Realtek ALC 255** from laptop dropdown list and click **"patch AppleHDA"**
6. Open created **MironeAudio** folder found on Desktop and copy AppleHDA.kext and HDAEnabler.kext to **Extensions** folder replacing the vanilla kext.
7. Rebuild kextcache 
    ``` 
    sudo kextcache -i / 
    ```
8. Reboot
### Keyboard

Keyboard is using the PS/2 bus, so we will be installing **VoodooPS2Controller.kext**

1. Download the lastest kext version.
2. Install kext to L/E using your favorite way.
3. Install the daemon
   ```
    sudo cp org.rehabman.voodoo.driver.Daemon.plist /Library/LaunchDaemons
    sudo cp VoodooPS2Daemon /usr/bin
   ```
4. Rebuild kextcache (if it's not rebuilt)
    ``` 
    sudo kextcache -i / 
    ```
5. Reboot

### Touchpad
It would be for the best, if you'd use the [full guide](https://voodooi2c.github.io/#Installation/Installation), but if you want the short one, here it is.




### Card reader
1. Download Sintek's kext
2. Install kext to L/E using your favorite way.
3. Rebuild kextcache (if it's not rebuilt)
    ``` 
    sudo kextcache -i / 
    ```
4. Reboot

## Credits and references

### Thanks to all these guys for developing and answering my stupid questions

* ReHabMan for a lot of software, guides and help.
* [Alexandred](https://github.com/alexandred) for developing the VoodooI2C and providing help.
* [Sinetek](https://www.insanelymac.com/forum/profile/4920-sinetek/) for making the [awesome kext](https://www.insanelymac.com/forum/topic/321080-sineteks-driver-for-realtek-rtsx-sdhc-card-readers/) for Realtek's PCI card readers.
### References
* [Sierra booting and installation guide](https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/)
* [VoodooPS2Controller.kext install guide](https://github.com/RehabMan/OS-X-Voodoo-PS2-Controller/wiki/How-to-Install)
* 