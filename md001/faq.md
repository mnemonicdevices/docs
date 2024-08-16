---
layout: default
title: FAQ
parent: MD-001
nav_order: 3
---

# FAQ

1. I have a complex internal modulation patch, but its overwhelming, how can I go back to a well known state?

Due to the free routing nature of the internal mod matrix of Juniper, lots of internal signal paths can be connected to create quite complex patches. To get back to some sanity, try resetting individual channels settings, or modulations, this can be done on the individual channel, or globally to all channels.

2. How can I start and stop the device with an external source?

To start/stop Juniper you need to use the "Run SRC" (one of the CV inputs or the clock input or a Gin expander input). 
There are two "Run Modes”, Trigger which will start/stop the device on a rising edge of the source, or Gate which will only run Juniper when the signal source is high.

When using the CLK input source, the Run Modes are disabled (shown as “N/A”). This is because its not possible to stop the device with the CLK input, because if it was configured to “Trigger” or “Gate” it would start/stop the device on every clock pulse which is undesired.
