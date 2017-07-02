as yet unclassified
drawKeyPointOf: aPieslice at: aPosition
	| keyPoint |
	
	keyPoint := TextMorph new.
	
	self addKeyPoint: keyPoint.
	self pieKeyNames add: keyPoint.
	
	keyPoint contents: aPieslice name asString;
			position: self position + 
								(self class defaultMargin * 2.5 @ (aPosition * self class defaultKeyPointHeight))