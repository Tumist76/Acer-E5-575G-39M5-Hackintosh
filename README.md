# Acer E5-575G-39M5 Hackintosh Project

![](https://i.imgur.com/UOIFIbU.jpg)

**Heavy work in progress going here**

This is my first hackintosh and though it required a decent time commitment, I think that's a great device for using both Mac and Windows without a lot of compromises. 

## Issues

* Card reader doesn't work (in progress)
* Brightness keys don't work
* Nvidia card is not working (and won't work)
* Wi-Fi isn't working (requrires different module)

## Required kexts

* [FakeSMC.kext](https://github.com/RehabMan/OS-X-FakeSMC-kozlek)
* [VoodooPS2Controller.kext](https://github.com/RehabMan/OS-X-Voodoo-PS2-Controller)

## Getting things to work after install
### Audio and microphone
1. [Download](https://www.insanelymac.com/forum/files/file/496-applehda-patcher/) AppleHDAPatcher.
2. Go to `/System/Library/Extensions` and copy AppleHDA.kext somewhere safe in case you'll need to restore or use the unpatched version.
3. Launch the patcher.
4. Drag the AppleHDA.kext to the window.
5. Select **Realtek ALC 255** from laptop dropdown list and click **"patch AppleHDA"**
6. Open created **MironeAudio** folder found on Desktop and replace AppleHDA.kext in **Extensions** folder with the patched one.
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

## Credits and references

### Thanks to all these guys for developing and answering my stupid questions

* ReHabMan for a lot of software, guides and help.
* [Alexandred](https://github.com/alexandred) for developing the VoodooI2C and providing help.

### References
* [Sierra booting and installation guide](https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/)
* [VoodooPS2Controller.kext install guide](https://github.com/RehabMan/OS-X-Voodoo-PS2-Controller/wiki/How-to-Install)
* 