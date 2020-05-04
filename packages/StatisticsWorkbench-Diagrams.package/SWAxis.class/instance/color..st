visualization
color: aColor

	color := aColor.
	self borderColor: aColor.
	self textColor: aColor.
	(self legend notNil)
		ifTrue: [self legend color: aColor].
	self markers do: [:marker | marker strokeColor: aColor]