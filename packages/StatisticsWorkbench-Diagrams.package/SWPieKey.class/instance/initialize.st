initialization
initialize 

	super initialize.
	
	self 
		pieSlices: OrderedCollection new;
		pieKeyColors: OrderedCollection new;
		pieKeyNames: OrderedCollection new;
		key: RectangleMorph new;
		color: Color transparent;
		textColor: Color black.
	
	self addMorph: self key.
	self pieKeyBackgroundColor: self class defaultPieKeyBackgroundColor.
	self key color: self pieKeyBackgroundColor. 