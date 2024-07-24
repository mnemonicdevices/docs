---
layout: default
title: Interface
parent: MD-002
nav_order: 4
---

# Physical Interface

Gin is designed to be placed next to Juniper, jacks are above the module, making it suitable for controller cases and skiffs. 

<img src="/images/md002-diagram.png"  />

# Connecting Juniper

The 4 pin cable provided with Gin allows connectivity to Juniper. Either of the two parallel 4 pin connectors at the bottom of Gin labeled `EXP` can be used. Ensure the cable is connected in the same orientation on Juniper. 

{: .label .label-red }
Do not connect the 4 pin cable to the 5 pin header!

# Recorder controls

The recorder controls allow controlling the recorder of the currently selected channel on Juniper, these change the recording state accordingly. Please see the Juniper recorder documentation for more information.

# Inputs + Potentiometer

When connected, Junipers `IN` waveform will now `Morph` between not only Junipers CV inputs but also Gins CV inputs and its potentiometer, these are represented as `EX1`, `EX2` ... `EX8` and `POT`. Gins inputs and potentiometer can also be used as modulation sources.

Utilising the `IN` waveform and configuring `Morph` to `POT` will now allow the output channel to reproduce the potentiometers value, coupling this with the recorder controls, Gin and Juniper can perform easy knob recordings.