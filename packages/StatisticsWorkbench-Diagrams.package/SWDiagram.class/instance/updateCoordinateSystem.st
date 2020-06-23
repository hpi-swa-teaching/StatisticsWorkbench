updating
updateCoordinateSystem

	| axisNames |
	
	axisNames := (self charts first) data dimensionNames.
	
	self updateCoordinateSystemRangeWithAxisNames: axisNames
