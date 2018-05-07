as yet unclassified
initialize 

	super initialize.
	
	self 
		pieslices: OrderedCollection new;
		pieKeyColors: OrderedCollection new;
		pieKeyNames: OrderedCollection new;
		key: RectangleMorph new;
		color: Color transparent.
	
	self addMorph: self key.
	self key color: Color white. 
