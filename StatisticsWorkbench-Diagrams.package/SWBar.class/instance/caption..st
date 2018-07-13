accessing
caption: aString

	self barLabelMorph contents: aString.
	(self isLabelHorizontal and: self isLabelToLong) 
		ifTrue: [self rotateLabel].
	(self isLabelHorizontal and: self isBarToSmallForText) 
		ifTrue: [self raiseBarLabel]