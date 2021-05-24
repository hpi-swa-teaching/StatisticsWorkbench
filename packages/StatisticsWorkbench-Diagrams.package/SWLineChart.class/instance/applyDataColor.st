accessing
applyDataColor
	
	(self data dataColor notNil)
		ifTrue: [self lineColor: self data dataColor]
