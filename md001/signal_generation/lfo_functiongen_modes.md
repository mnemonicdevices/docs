---
layout: default
title: LFO and Function Generator Modes
parent: Signal Generation
grand_parent: MD-001
nav_order: 4
---

# LFO and Function Generator Modes

All 8 channels can operate in a continuous looping LFO mode, or can configured as independent Function Generators via the [Channel configuration menu](/md001/graphic_interfaces/channel_menu.html). The channel can be triggered from any of the available input sources (including expander sources if connected) or any of the other internal channels. 

Once a channel is configured as a Function Generator, the waveform will only be generated when a trigger occurs. Nearly all behavior of the channel will remain the same, other than some small differences listed below:

- The duration of the waveform can still be manipulated using the `Frequency` parameter, but if the Frequency is `Desynchronized`, the unit is presented in seconds (or milliseconds).
- When a trigger event occurs, the function generated will begin at the `PHASE` parameter, for example, if a Sin waveform is used, by adjusting the phase to 90 degrees, as Cosine waveform is achieved.
- The visual appearance of the oscilloscope varies, previous renderings are cleared on the trigger event.

<div style="display: flex; justify-content: center;">
    <div style="display: flex; flex-flow: column; align-items: center; justify-content: center;">
        <img src="/images/waveform_envelope_attackmod.jpg" width="200px" />
        <span style="font-style: italic">An A-D envelope with Attack modulation</span>
    </div>
</div>