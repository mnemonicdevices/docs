---
layout: default
title: Primary Parameters
parent: Signal Generation
nav_order: 1
grand_parent: MD-001
---

# Primary Parameters

The primary parameters are listed below, these are the building blocks for manipulating the waveshape. Each of the primary parameters [can be modulated](/md001/signal_generation/modulation.html) in various ways with respect to the output of other internal channels, as well as CV inputs.

## Waveform

Adjust the waveform of the given channel. The available waveforms are listed in the table below:


| Waveform                  | Description           | Morph To/Fn.      | Image |
|:--------------------------|:----------------------|:------------------|:------|
| `Sin`                     | Sine                  | Exponential       | <img src="/images/waveform_sine.jpeg" width="200px" />    |
| `Tan`                     | Tangent               | Linear            | <img src="/images/waveform_tan.jpeg" width="200px" />    |
| `Tri`                     | Triangle              | Sawtooth          | <img src="/images/waveform_triangle.jpeg" width="200px" />     |
| `Squ`                     | Square                | Duty cycle        | <img src="/images/waveform_square.jpeg" width="200px" />      |
| `Rand`                    | Random                | Slew              | <img src="/images/waveform_random.jpeg" width="200px" />     |
| `Env`                     | Envelope              | Attack Skew Decay | <img src="/images/waveform_envelope_nomod.jpg" width="200px" />      |
| `Step`                    | Stair Step            | Number of Steps   | <img src="/images/waveform_step.jpeg" width="200px" />      |
| `In`                      | Inputs                | Mix CV inputs     | <img src="/images/waveform_cv_mix.jpg" width="200px" />     |
| `Out`                     | Outputs               | Mix other outputs | <img src="/images/waveform_output_sin.jpg" width="200px" /> **+** <img src="/images/waveform_output_tri.jpg" width="200px" /> **=** <img src="/images/waveform_output_mix.jpg" width="200px" />    |

## Frequency

Adjusts the `Frequency` of the given channel. Frequency can either be `Synchronized` (relative to the BPM) or `Desynchronized`. When synchronized the maximum and minimum frequencies are `BPM * 128` and `BPM / 128` respectively and when desynchronized they are `128Hz` and `1mHz`. When operating in `Trigger Mode` and `Desynchronized` the unit changes to seconds. 

The frequency is disabled in certain circumstances:

- When the `Input` or `Output` waveform is selected

| 💡 _LONG HOLD_ **FREQ** - to switch between `Synchronized` or `Desychronized` modes

## Amplitude

Adjusts the `Amplitude` of a given channel. The full-scale of the output equals an amplitude of 100%. When in `Bipolar` or `Polar` modes an amplitude of 100% represents a `-5.0V to +5.0V` and `0.0V to +5.0V` voltage range respectively. When the `Quantizer` is active the representation changes from percentage to octaves, in this case `Bipolar` and `Polar` modes represents a `0 to 10` and `0 to 5` octave range respectively.

From version `0.5.0` the `Amplitude` ranges from -100% to +100%. When the amplitude is negative the output is `inverted`. This feature also is applied to the modulation, but can be configured:

- Inversion Modulation
    - `POS`: Positive modulation only - modulation output will range from 0% to 100%. No inversion is applied.
    - `INV`: Inversion modulation - allows the modulation output to range from -100% to 100%, in which inversion can be applied.

## Offset

Adjusts the `Offset` of a given channel. At a value of 0 there is no offset being applied, e.g. the waveform is generated within the middle of the amplitude range. At a value of +50 the waveform is generated at the top of the amplitude range, and a value of -50 the waveform is generated at the bottom of the amplitude range.

## Morph

The `Morph` parameter varies depending on the waveform and adjusts the shape of the waveform accordingly. See the above waveform table for details about how the morph effects each waveform shape.


### Mix

The `Mix` parameter is available when using the `In` or `Out` waveforms and is accessible via the `Morph` parameter button. `Mix` allows mixing between the different waveforms available - mixing between adjacent sources. The horizontal bar indicates the amount of mixing between the currently selected source, and the neighboring source. 

For example when using the `In` waveform, and you have `CV2` selected, when the horizontal bar is toward the left, then you are mixing toward `CV1`, when the horizontal bar is toward the right then you are mixing toward `CV3`, when no horizontal bar is present then no mixing is taking place.

### Attack, Skew and Decay

The `Attack`, `Skew` and `Decay` parameters are available when using the `Env` waveform and are accessible by using via the `Morph` parameter button. These parameters control the envelope characteristics.

| 💡 _LONG HOLD_ **MOR** - to switch between components of the Envelope waveform - Attack, Skew and Decay.

## Phase

The `Phase` parameter allows periodic waveforms to be phase locked to varying degrees, or not locked at all. When the phase is locked any adjustment to frequency will cause the phase to be recalculated (this can cause visual discontinuities in the waveform which is normal). 

The phase is disabled in certain circumstances:

- When `Frequency` modulation is active
- When the `Input` or `Output` waveform is selected