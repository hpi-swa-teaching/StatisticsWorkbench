initialization
initialize
	 
	super initialize.
	
	self 
		slice: PolygonMorph new;
		color: Color transparent.
	
	self addMorph: self slice