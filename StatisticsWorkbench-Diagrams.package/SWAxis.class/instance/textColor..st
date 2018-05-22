accessing
textColor: aColor
	self markers do: [:marker | marker textColor: aColor].
	textColor := aColor