accessing
caption: aString

	self barLabelMorph contents: aString.
	
	(self isLabelHorizontal and: self isLabelTooLong) 
		ifTrue: [self rotateLabel].
	(self isLabelHorizontal and: self isTextHigherThanBar) 
		ifTrue: [self raiseBarLabel]
		