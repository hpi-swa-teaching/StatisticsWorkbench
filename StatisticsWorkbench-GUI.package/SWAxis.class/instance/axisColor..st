accessing
axisColor: aColor
	self borderColor: aColor.
	self markers do: [:marker | marker strokeColor: aColor]