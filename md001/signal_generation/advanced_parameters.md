---
layout: default
title: Advanced Parameters
parent: Signal Generation
nav_order: 2
grand_parent: MD-001
---

# Advanced Parameters

The following advanced parameters are currently available:

## Recorder

A recorder is available for each channel, streaming directly to the SD Card allowing for very large record durations. There are four "Record States": `Stop`, `Rec`, `Play` and `Overdub`.

<img src="/images/md001-record-diagram.png" width="300px"/>

Recordings are time-quantized to bar within a 4/4 time signature. The total record duration is determined by the BPM at the initial moment of recording, any further adjustments of BPM are ignored by the recorder. It is possible to manually trigger the Record State or from either an internal or external source.

When configuring the recorder, the following is available:

- Number of bars as given by a 4/4 time signature.
  - `DYN`: Dynamic length recording. Record for as long as desired, then end the recording to the nearest quantized 4/4 bar. (The record length is restricted by whichever is smaller; 65536 bars or the free space of the SD Card).
  - `0-999`: A predetermined bar length. (For recordings longer than 999 bars, use the `DYN` record length).
- `Play / Stop` Trigger - which will begin or stop playback
- `Record / Dub` Trigger - which can begin recording or overdubbing
- `Play / Stop` Edge - `FAL` falling, `RIS` rising or `ANY` rising or falling
- `Record / Dub` Edge - `FAL` falling, `RIS` rising or `ANY` rising or falling
- Playback mode
  - `CON`: Continuous playback mode, will automatically begin playback after recording and continually loop playback until stopped
  - `SGL`: Single shot mode, will play only when requested and only once, after playback is complete the recorder returns to the `Stop` state.

### Recorder Links

Recorder Links allow multiple Recorders on different channels behave as one. This is helpful when wanting to record multiple signals simultaneously, for example, both trigger and v/oct channels of a keyboard. Recorder links are configurable via the [Global Menu -> Recorder Links](/md001/graphic_interfaces/global_menu.html) menu. There can be up to 4 Links in total.

| NOTE: When a recorder joins a Link, then the state of the Recorders within the Link and the newly assigned Recorder will reset to their default states.

<hr />

## Sample and Hold

The Sample and Hold advanced parameter allows an external signal to pass through a configured threshold to sample the signal for a desired period of time on a given channel.

There are two modes available which change the functionality of this feature:

- Sample and Hold (S&H)
- Track and Hold (T&H)

Both operate under the same configuration and concept, except that the `S&H` will hold and release the channel value on two subsequent _triggers_ from the incoming signal beyond a given threshold value, while the `T&H` will hold the channel value during a _gate_ from the incoming signal beyond a given threshold value.

The `S&H` generally will create the classic stair-stepped output, stepping from one value to the next on each trigger, while the `T&H` will interrupt a signal and hold it for a period of time, splicing in constant periods with the original signal.

<div style="display: flex; justify-content: space-between;">
    <div style="display: flex; flex-flow: column; align-items: center; justify-content: center;">
        <img src="/images/sample_hold.jpeg" width="200px" />
        <span style="font-style: italic">Sample and Hold</span>
    </div>
    <div style="display: flex; flex-flow: column; align-items: center; justify-content: center;">
        <img src="/images/track_hold.jpeg" width="200px" />
        <span style="font-style: italic">Track and Hold</span>
    </div>
</div>

<hr />

## Scale (Quantizer)

The scale (AKA quantizer) advanced parameter provides V/octave quantization of a signal to a given note within a scale. There are up to 8 user customizable scales. When modulating, the effective scale can be modulated by stepping forward to the next scale, back to the previous scale, or randomly choosing a scale.

<div style="display: flex; justify-content: center;">
    <div style="display: flex; flex-flow: column; align-items: center; justify-content: center;">
      <img src="/images/quantizer_keyboard.jpeg" width="300px"/>
        <span style="font-style: italic">Note Editor</span>
    </div>
</div>

The following configuration is available:

- Modulation source: The source of the modulation
- Modulation threshold: The threshold in which will toggle the next/prev or random scale
- Modulation direction: The direction, `FWD` forward, `REV` reverse, `RAN` random
- Number of scales: The number of scales used for the user and modulation
- Transposition-Quantization ordering:
  - `Q>T` Quantizer first and then Transpose. Chromatic transposition
  - `T>Q` Transpose first and then Quantize. Diatonic transposition
- Transposition offset: As represented by the number of semitones
- Recorder-Quantization ordering:
  - `Q>R` Quantize first and then Record
  - `R>Q` Record first and then Quantize
- Note editor: An editor to choose notes from a standard western octave

As of 0.7.0 Juniper supports the [_MD-004 Tonic expander_](/md004/index.html)

<hr />

## Wavefolder

The wavefolder advanced function folds a channels signal back onto itself at beyond a given threshold. When signal extends beyond this threshold, the signal is mirrored back onto itself.

The threshold amount is configured by the wavefolder parameter, a value of `Off` disables the wavefolder, a value of `0%` means that if a signal goes beyond the full amplitude range it will begin to be folded, `25%` means that if a signal goes beyond 75% of the full amplitude range it begins to fold, `50%` means that if a signal goes beyond half of the full amplitude range it will begin to be folded and so on.

During the folding process the frequency components will naturally increase as the wavelength of the signal is decreased.

The modulation options for the wavefolder allow for the threshold to be modulated.

|💡 TIP: Wavefolder distortion generally does not respond well with square waves, in order to have it respond, try applying amplitude or offset modulation

<div style="display: flex; justify-content: space-between;">
    <div style="display: flex; flex-flow: column; align-items: center; justify-content: center;">
        <img src="/images/wavefolder_25.jpeg" width="200px" />
        <span style="font-style: italic">Wavefolder at 25%</span>
    </div>
    <div style="display: flex; flex-flow: column; align-items: center; justify-content: center;">
        <img src="/images/wavefolder_50.jpeg" width="200px" />
        <span style="font-style: italic">Wavefolder at 50%</span>
    </div>
</div>

<hr />

## Operands

The Operand advanced parameter enables logical operations that involve the current channel and a selected source channel.

The following operands are available:

- AVG: Calculates the mean average between the two signals
- MIN: Calculates the minimum of the two signals
- MAX: Calculates the maximum of two signals
- SUB: Subtracts two signals
- ADD: Adds two signals
- NOT: Will set the current channel to 0.0V if the source signal is beyond a defined threshold
- OR: Allows the current channel to propagate if the current channel or the source channel are beyond a defined threshold
- AND: Allows the current channel to propagate only if the current channel and the source channel are beyond a defined threshold

The `Threshold` setting is only available for `NOT`, `OR`, and `AND`.

<hr />
