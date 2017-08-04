adding/removing
addPieslice:  aPieslice
	
	self addMorph: aPieslice.
	self pieslices add: aPieslice.
	self pieKey pieslices add: aPieslice