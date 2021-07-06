visualization
createLegend

	| key|
	
	key := SWPieKey new.
	self legend: key.
	key topLeft: self topRight.
	key key topLeft: self topRight.
	self addMorph: key