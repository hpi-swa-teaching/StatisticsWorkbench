accessing
caption: aString

	self barLabelMorph contents: aString.
	(isLabelHorizontal and: (aString size > SWBar maximumCharacters))
		ifTrue: [self rotateLabel]