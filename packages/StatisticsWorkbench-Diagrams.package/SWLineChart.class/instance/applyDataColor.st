accessing
applyDataColor
	
	(self data dataColor notNil)
		ifTrue: [self color: self data dataColor]
