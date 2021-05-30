initialization
initialize 

	super initialize.
	self lineMorph: self createLineMorph.
	self lineColor: self class defaultColor.
	vertices := OrderedCollection new.
	dataPoints := OrderedCollection new
