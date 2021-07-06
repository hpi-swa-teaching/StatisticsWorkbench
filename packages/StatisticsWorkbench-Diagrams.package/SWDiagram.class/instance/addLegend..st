adding/removing
addLegend: aSWLegend	
	self legend: aSWLegend.
	aSWLegend topLeft: self topRight.
	self addMorph: aSWLegend
