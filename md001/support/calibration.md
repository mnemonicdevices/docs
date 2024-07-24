---
layout: default
title: Calibration
parent: Support
grand_parent: MD-001
nav_order: 3
---

# Calibration

This device has various analog circuitry that affects the inputs and outputs of the device. This circuitry is susceptible to environmental factors which can cause changes in electrical properties which can cause "drift". After a prolonged period of time it may be helpful to recalibrate the device to ensure accuracy.

In order to calibrate the device, a multimeter of good accuracy is required. It is recommended to use the `Fluke 101` or comparable multimeter. It is easiest to connect the multimeter using `alligator clips` directly to a short `3.5mm mono patch cable`.

{: .label .label-yellow }
It is important to calibrate the device as accurately as possible, take your time to ensure the multimeter has stabilized the reading before moving to the next step.

To begin the calibration procedure, on boot-up hold the `OFFSET/CH8` button. The calibration "wizard" will begin.

## Storage

Calibration data is stored on the internal memory of the device and *will not* be wiped by deleting data or formatting the SD Card, or performing a factory reset of the device.

## Procedure

### Outputs

To calibrate the outputs, perform the following steps on all 8 channels:

1. Plug the multimeter connected patch cable into `output N`
2. Calibrate the -5.0V point of `output N` - adjust the integer value until the multimeter reads -5.0V. Once complete, go to the next step.
3. Calibrate the +5.0V point of `output N` - adjust the integer value until the multimeter reads +5.0V. Once complete go to output `channel N+1`, or if all are complete, begin the input calibration.

### Inputs

To calibrate the inputs, perform the following steps on all 3 CV inputs:

1. Plug a patch cable from `output 1` into `CV input N`
2. Begin sampling `CV input N`, the first reading
3. Begin sampling `CV input N`, the second reading
4. Go to the next `CV input N+1`, or if are complete, begin finalization.

### Finalisation

Once all 3 CV inputs have sampled their data points, finalize the process by following the prompts to store the calibration data and then to reboot.
