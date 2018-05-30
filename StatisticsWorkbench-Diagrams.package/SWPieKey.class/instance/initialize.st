initialization
initialize 

	super initialize.
	
	self 
		pieSlices: OrderedCollection new;
		pieKeyColors: OrderedCollection new;
		pieKeyNames: OrderedCollection new;
		key: RectangleMorph new;
		color: Color transparent.
	
	self addMorph: self key.
	self key color: Color white. 