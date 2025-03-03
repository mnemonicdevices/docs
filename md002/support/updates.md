---
layout: default
title: Updates
parent: Support
nav_order: 2
grand_parent: MD-002
---

# Firmware updates

Firmware updates will occur periodically to provide further features and bug fixes to the device.

{: .label .label-red }
Do not turn off the device(s) during the update procedure!

1. Firmware can be updated by downloading the MD-002 release binary found [here](https://mnemonicdevices.io/products/md-002-gin).
2. Copy the downloaded binary `.bin` file to the `FAT32 formatted microsd card` of Juniper and rename the file `md002_fw.bin`.
3. Boot up Juniper and navigate to the `Global` -> `SYSTEM` menu
4. Here you can see information about the current version of Gin and also initiate the firmware update. Navigate to `GIN Update N/Y` and confirm `Y` to begin the update.
5. Wait until the process completes, once it completed the screen will report `DONE`.
6. Validate the new version in the `SYSTEM` menu
