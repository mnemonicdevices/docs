---
layout: default
title: State Management
parent: Graphic Interfaces
grand_parent: MD-001
nav_order: 5
---

# State Management

A user may save and recall different state files to the SD Card if they wish. This can help recall various states for various usecases. Additionally there are `Quick slots` available in which state recall can occur on the fly, utilising the channel buttons.

States contain nearly all configuration information, except for the following:

1. System settings: OLED, LED brightness and screen saver duration
2. Recorder settings & links *

| *: This is intentional to make recording of state changes possible

### Saving a state

States are saved to the SD Card and a filename must be chosen. Currently there is a limitation that only FAT32 Short Filenames (SFN) are supported - meaning there is a 8 character filename limitation. Work is being done to improve this in the near future.
When choosing a filename, the `Channel 1` (`A`) and `Channel 2` (`B`) buttons can be used to add or remove characters.

### Recalling, deleting or overwriting a state

States can be easily recalled, deleted or overwritten

### Assigning a quick slot

A state can be assigned a quick slot simply by highlighting the state, and then pressing one of the 8 Channel buttons. Once assigned, using the [Performance Screen](/md001/graphic_interfaces/performance_screen.html#quickslots) states can be recalled on the fly.

<div style="display: flex; justify-content: center;">
    <div style="display: flex; flex-flow: column; align-items: center; justify-content: center;">
        <img src="/images/state_quickslot.jpg" width="200px" />
        <span style="font-style: italic">Quick slot 2 assigned to file "FAST"</span>
    </div>
</div>