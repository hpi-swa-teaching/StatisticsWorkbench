updating
updateColors

	self charts do: [:chart | chart applyTheme: self colorTheme].
	self coordinateSystem isNil ifFalse:[	self coordinateSystem applyTheme: self colorTheme]