---
layout: default
title: Channel Screen
parent: Graphic Interfaces
grand_parent: MD-001
nav_order: 2
---

# Channel Screen

The `Channel Screen` is the center-point Juniper, the output of a given a channel is displayed on the oscilloscope and from here the user can:
 - Modify the active parameter, for example, [`Frequency`](/md001/signal_generation/primary_parameters.html#frequency), or [`Amplitude`](/md001/signal_generation/primary_parameters.html#amplitude)
 - Channel the active channel
 - Toggle course / fine parameter changes
 - Use any of the control combinations found in the table below
 - Go to the [`Parameter Screen`](./parameter_screen.html).
 - Go to the [`Channel Menu`](./channel_menu.html).
 - Go to the [`Global Menu`](./global_menu.html).

<div style="display: flex; justify-content: center;">
    <div style="display: flex; flex-flow: column; align-items: center; justify-content: center;">
        <img src="/images/waveform_sine.jpeg" width="200px" />
        <span style="font-style: italic">The Channel Screen with Frequency set as the active Parameter</span>
    </div>
</div>


## Controls

General controls for menu navigation are listed in the table below:

| Buttons        | Function        |
|:-------------|:------------------|
| _DEPRESS_ **ENCODER** | Open the [`Parameter Screen`](./parameter_screen.html) for the selected parameter |
| _LONG HOLD_ **ENCODER** | Toggle course / fine parameter changes |
| _DOUBLE TAP_ **SELECT** | Open the [`Channel Menu`](./channel_menu.html) for the selected channel.
| _HOLD SELECT_ + _PRESS_ **ENCODER** | Open the [`Global Menu`](./global_menu.html) |
| _TAP or HOLD **SELECT**_ + _ROTATE_ **ENCODER** _LEFT_ | Jump to `Previous` channel |
| _TAP or HOLD **SELECT**_ + _ROTATE_ **ENCODER** _RIGHT_ | Jump to `Modulator` channel _(when modulator is active)_ |
| _ROTATE_ **ENCODER** | Adjust selected parameter value |
| _PRESS_ **WAV** | Select [`Waveform`](/md001/signal_generation/primary_parameters.html#waveform) parameter |
| _PRESS_ **FRQ** | Select [`Frequency`](/md001/signal_generation/primary_parameters.html#frequency) parameter |
| _LONG HOLD_ **FREQ** | Toggle between synchronized and desynchronized frequency |
| _PRESS_ **AMP** | Select [`Amplitude`](/md001/signal_generation/primary_parameters.html#amplitude) parameter |
| _PRESS_ **MOR** | Select [`Morph`](/md001/signal_generation/primary_parameters.html#morph) parameter |
| _LONG HOLD_ **MOR** | Toggle secondary Morph parameter. This is only applicable when using the `Envelope` waveform |
| _PRESS_ **PHA** | Select [`Phase`](/md001/signal_generation/primary_parameters.html#phase) parameter |
| _PRESS_ **OFF** | Select [`Offset`](/md001/signal_generation/primary_parameters.html#offset) parameter |
| _PRESS_ **A** | Select the [`A`](/md001/signal_generation/advanced_parameters.html) advanced parameter |
| _PRESS_ **B** | Select the [`B`](/md001/signal_generation/advanced_parameters.html) advanced parameter |
| _HOLD_ **A** + ROTATE ENCODER | Change the custom `A` advanced parameter |
| _HOLD_ **B** + ROTATE ENCODER | Change the custom `B` advanced parameter |
| _TAP or HOLD **SELECT**_ + **A** (ch 1) | Select `Channel 1` |
| _TAP or HOLD **SELECT**_ + **B** (ch 2) | Select `Channel 2` |
| _TAP or HOLD **SELECT**_ + **WAV** (ch 3) | Select `Channel 3` |
| _TAP or HOLD **SELECT**_ + **FRQ** (ch 4) | Select `Channel 4` |
| _TAP or HOLD **SELECT**_ + **AMP** (ch 5) | Select `Channel 5` |
| _TAP or HOLD **SELECT**_ + **MOR** (ch 6) | Select `Channel 6` |
| _TAP or HOLD **SELECT**_ + **PHA** (ch 7) | Select `Channel 7` |
| _TAP or HOLD **SELECT**_ + **OFF** (ch 8) | Select `Channel 8` |
