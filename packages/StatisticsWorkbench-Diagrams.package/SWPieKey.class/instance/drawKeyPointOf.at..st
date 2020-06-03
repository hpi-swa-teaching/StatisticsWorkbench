geometry
drawKeyPointOf: aPieSlice at: aPositionFactor
	
	| keyPoint |
	
	keyPoint := TextMorph new.
	keyPoint color: self textColor.
	
	self addKeyPoint: keyPoint.
	self pieKeyNames add: keyPoint.
	
	keyPoint 
		contents: aPieSlice date labelName asString;
		position: self key position + (self class defaultKeyTextMargin @ (aPositionFactor * self class defaultKeyPointHeight))
