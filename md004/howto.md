---
layout: default
title: How To
parent: MD-004
nav_order: 4
---

# How to connect Tonic

The 4 pin cable provided with Tonic allows connectivity to Juniper (and optionally Gin). Either of the two parallel 4 pin connectors at the bottom of Tonic labeled `Expansion` can be used. The order in which Juniper, Tonic and Gin are connected is irrelevant, the only important thing is that **all cables must be in the same orientation**, for example if the connector cable has a green wire at the top, ensure the green wire is at the top for all connections.

# How to update Tonic

Tonic's functionality is updated simply by updating Juniper. Unlike Gin, Tonic has no dedicated firmware. Tonic is officially supported by Juniper from version 0.7.0 onward. Please check the [Juniper changelog](/md001/changelog.html) for more information.

# How to use Tonic

## Enabling, selecting and changing a Scale

By default a channel on Juniper has the quantizer disabled. To enable it, hold **SHIFT** and press the **UP** button, this will enable the quantizer and select the #1 custom scale of the channel.

Once enabled, the C note will illuminate. By default custom scales simply have the C note enabled. You can now modify the scale by enabling or disabling any of the notes by simply pressing any **NOTE** button. You'll notice that Juniper will only output the notes that you have selected.

You can then select the #2 custom scale by once again holding **SHIFT** and press the **UP** button. You can modify this scale as you wish. You can go back to the #1 scale at any time by holding **SHIFT** and press the **DOWN** button. Each channel can have up to 8 custom scales.

## Transposing a Scale

Transposition is easy, simply press **UP** or **DOWN**. By default the Quantizer will shift by an Octave (12 semitones). You can change the transposition interval by holing **SHIFT** and pressing any of the white keys of the keyboard, for example `PER.5TH`. 

Clearing the transposition is just as easy, by holding **SHIFT** and pressing the clear button.

### Chromatic transposition

Chromatic transposition applies transposition *after* the quantizer, allowing notes to deviate from the scale that is set. For example if the C Major triad scale is selected C-E-G, a chromatic transposition of a whole note will mean notes will now land on D-F-A. This kind of transposition is what is usually expected, and allows for interesting tonal changes.

### Diatonic transposition

Diatonic transposition applies the transposition *before* the quantizer, meaning that the selected notes of the scale are maintained, but the ordering of them changes. For example for a C Major traid scale C-E-G, a diatonic transposition of a whole note will yield G-C-E. 

## Live mode

Live mode allows shifting of the root note by any number of semitones, as well as changing the octave, easily. 