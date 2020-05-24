updating
updateCoordinateSystem

	| axisNames |
	
	axisNames := (self charts first) data dimensionNames.
	
	self updateMaximumValuesWithAxisNames: axisNames.
	self updateMinimumValuesWithAxisNames: axisNames