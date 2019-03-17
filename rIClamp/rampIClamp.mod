COMMENT
17th March 2019
Ramp Current Clamp. Modified using stim.mod for IClamp point process in 
NEURON installation folder (nrn\src\nrnoc). 
The clamp current (i) profile and the parameters are depicted below
	      dur (ms)
		 <-->
			 ___ amp2 (nA)
	        /
	       /
		  /
	_____/  amp1 (nA)
	<--->    
	 del(ms)
del is the intial delay in current clamp. amp1 and amp2 are the starting and 
last clamp levels. dur is the duration of clamp between amp1 and amp2.

For any bugs and queries contact Darshan Mandge (darshanmandge@iitb.ac.in)
--------------------------------------------------------------------------------
Since this is an electrode current, positive values of i depolarize the cell
and in the presence of the extracellular mechanism there will be a change
in vext since i is not a transmembrane current but a current injected
directly to the inside of the cell.
ENDCOMMENT

NEURON {
	POINT_PROCESS rIClamp
	RANGE del, dur, amp1,amp2, i
	ELECTRODE_CURRENT i
}
UNITS {
	(nA) = (nanoamp)
}

PARAMETER {
	del (ms)
	dur (ms)	<0,1e9>
	amp1 (nA)
	amp2 (nA)
}
ASSIGNED { i (nA) }

INITIAL {
	i = 0
}

BREAKPOINT {
	at_time(del)
	at_time(del+dur)

	if (t < del + dur && t >= del) {
		i = amp1 +(amp2-amp1)*(t-del)/(dur)
	}else{
		i = 0
	}
}
