This document will contain some important tips for running simulations in NEURON simulator.

1. connect statement:
To avoid confusion, it is best to attach the 0 end of a section to the 1 end of its parent. 
Source: https://www.neuron.yale.edu/neuron/static/docs/help/neuron/neuron/geometry.html

connect syntax:
connect section(0or1), parent(x)
parent connect section(0or1), x

According to suggestion : 
connect section(0), parent(1)
parent connect section(0), 1

2. Units in NEURON
https://www.neuron.yale.edu/neuron/static/docs/units/unitchart.html

For those of you who are working with NMODL, might have encountered problems of defining units with their abbreviations. To understand it better, one can go through the Example 9.5: A calcium-activated, voltage-gated current in The NEURON Book (pg 441)and see the "nrnunits.lib" file located here: the C:\nrn73\lib.

The file contains the predefined constants, unit prefixes and abbreviations known to NEURON.

You can even find conversion rates of different currencies in the file e.g. indiarupee  .03211 $
(No idea why they are defined here! :) )

