updating
updateCoordinateSystem

	| axisNames |
	
	axisNames := (self charts first) data dimensionNames.
	
	self updateMinimumValuesWithAxisNames: axisNames.
	self updateMaximumValuesWithAxisNames: axisNames
