accessing
textColor

	(textColor isNil)
		ifTrue: [self textColor: self class defaultTextColor].
	(self textVisibility)
		ifTrue: [^ textColor]
		ifFalse: [^ Color transparent]
