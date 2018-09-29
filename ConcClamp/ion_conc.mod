TITLE Potassium Concentration Clamp 

COMMENT
       This file can used to clamp concentration of [K]o to a concentration 
	   'koval' for a duration of 'durko' after an initial decaly of 'delko'.
	   At other times [K]o is fized at baseko.
	   For queries and bugs, contact
	   darshanmandge [ at ] iitb.ac.in
ENDCOMMENT

NEURON {
        SUFFIX ionconc
        USEION k READ ko WRITE ko
		RANGE baseko, delko, durko, koval
}

UNITS {
	(molar) = (1/liter)
	(mM)    = (millimolar)
}

PARAMETER {
	delko = 0 (ms)
	durko = 0 	(ms)
	koval = 5 	(mM) 
	baseko = 5	(mM):Base value
}

STATE {
	ko (mM)
}

BREAKPOINT {
	at_time(delko)
	at_time(delko+durko)
	if(t>delko && t< (delko+durko)){
		ko = koval
	} else{
		ko = baseko
	}
}