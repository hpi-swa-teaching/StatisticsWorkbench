initialization
initialize 

	super initialize.
	self lineMorph: self createLineMorph.
	vertices := OrderedCollection new