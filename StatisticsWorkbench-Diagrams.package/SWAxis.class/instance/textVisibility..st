accessing
textVisibility: anObject
	textVisibility := anObject.
	self textVisibility
		ifTrue: [self markers do: [:marker | marker textColor: self textColor]]
		ifFalse: [self markers do: [:marker | marker textColor: Color transparent]]