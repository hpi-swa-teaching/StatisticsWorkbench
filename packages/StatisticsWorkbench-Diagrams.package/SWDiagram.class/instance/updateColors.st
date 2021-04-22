updating
updateColors

	self charts do: [:chart | chart applyTheme: self colorTheme].
	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem applyTheme: self colorTheme].
	self update
