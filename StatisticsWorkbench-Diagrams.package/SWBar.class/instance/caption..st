accessing
caption: aString

	self barLabelMorph contents: aString.
	(isLabelHorizontal and: self isLabelToLong)
		ifTrue: [self rotateLabel]