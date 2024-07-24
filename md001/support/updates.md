---
layout: default
title: Updates
parent: Support
nav_order: 2
grand_parent: MD-001
---

# Firmware updates

Firmware updates will occur periodically to provide further features and bug fixes to the device. 

## Versioning

Versions are published as `MAJOR.MINOR.PATCH`:
 - `MAJOR`: Currently set to `0` to illustrate that Juniper is still in beta
 - `MINOR`: Changes that bring new features that are not backward compatible
 - `PATCH`: Small changes and bug fixes that are backward compatible

## Wiping of user data

Wiping of user data is sometimes necessary, the following circumstances should be noted:

1. If the device is on any version prior to `0.4.4` an upgrade will wipe user data
2. If the `MAJOR` or `MINOR` version changes an upgrade will wipe user data
3. If the `PATCH` version changes, wiping of data will NOT occur

## Procedure

{: .label .label-red }
Do not turn off the device during the update procedure! 

1. Firmware can be updated by downloading the MD-001 release binary found [here](../changelog.html). 
2. Copy the downloaded binary `.bin` file to the `FAT32 formatted microsd card` of the device and rename the file `fw.bin`.
3. On power-up hold the `PHASE/CH7` button, the boot-loader of the device will then begin the flash procedure. 
4. Once the process begins, release the `PHASE/CH7` button and wait until the device finishes flashing the firmware. Once it completes the device will reboot and the newly installed firmware will boot. 
5. Verify the procedure worked by checking the version number on the boot-up screen.


| __NOTE:__ When updating from `0.1.x` to `0.2.0` it is advised to reformat the SD Card with FAT32 and Master Boot Record (MBR).