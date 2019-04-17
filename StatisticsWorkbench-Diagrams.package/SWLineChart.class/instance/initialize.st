initialization
initialize 

	super initialize.
	self lineMorph: self createLineMorph.
	self lineColor: Color orange.
	vertices := OrderedCollection new