geometry
drawKeyPointOf2: aChart at: aPositionFactor
	
	| keyPoint |
	
	keyPoint := TextMorph new.
	keyPoint color: self textColor.
	
	self addKeyPoint: keyPoint.
	self pieKeyNames add: keyPoint.
	
	keyPoint 
		contents: aChart dataName asString;
		position: self key position + (self class defaultKeyTextMargin @ (aPositionFactor * self class defaultKeyPointHeight))
