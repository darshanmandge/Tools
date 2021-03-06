## Under Development
This document will contain some important tips for running simulations in NEURON simulator.

1. **connect statement**:
To avoid confusion, it is best to attach the 0 end of a section to the 1 end of its parent. 
Source: https://www.neuron.yale.edu/neuron/static/docs/help/neuron/neuron/geometry.html

_connect syntax:_

`connect section(0or1), parent(x)
parent connect section(0or1), x`

According to suggestion : 
`connect section(0), parent(1)
parent connect section(0), 1`

2. **Units in NEURON**

This page has the basic units used in NEURON simulator: https://www.neuron.yale.edu/neuron/static/docs/units/unitchart.html

For those of you who are working with NMODL, might have encountered problems of defining units with their abbreviations. To understand it better, one can go through the Example 9.5: A calcium-activated, voltage-gated current in The NEURON Book (pg 441)and see the "nrnunits.lib" file located here: the C:\nrn73\lib.

The file contains the predefined constants, unit prefixes and abbreviations known to NEURON.

You can even find conversion rates of different currencies in the file e.g. indiarupee  .03211 $
(No idea why they are defined here! :) )

Few more resources NMODL and HOC units :

A tutorial on NMODL units: http://www.neuron.yale.edu/neuron/static/docs/units/units.html
Defualt Units in NEURON: http://www.neuron.yale.edu/neuron/static/docs/units/unitchart.html
An alternative file to the above nrnunits.lib with comments:units.dat: http://www.neuron.yale.edu/neuron/static/docs/units/units.dat 


3. **SectionRef Class**

*SectionRef* keeps a pointer/reference to a section The reference is to the currently accessed section at the timethe object was created.
This class allows sections to be referenced as normal object variables for assignment and passing as arguments. 

*Documentation*: https://www.neuron.yale.edu/neuron/static/docs/help/neuron/neuron/classes/secref.html
