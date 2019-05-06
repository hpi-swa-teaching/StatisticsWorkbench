geometry
drawKeyPointOf: aPieSlice at: aPosition
	| keyPoint |
	
	keyPoint := TextMorph new.
	
	self addKeyPoint: keyPoint.
	self pieKeyNames add: keyPoint.
	
	keyPoint 
		contents: aPieSlice name asString;
		position: self key position + (self class defaultMargin * 2.5 @ (aPosition * self class defaultKeyPointHeight))