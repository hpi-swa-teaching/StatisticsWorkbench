as yet unclassified
initialize 

	super initialize.
	
	self lineMorph: self createLineMorph.
	vertices := OrderedCollection new.
	self registerLineMorph.