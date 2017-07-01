as yet unclassified
testToggleRaster
	
	|coordinateSystem visibility1|
	
	coordinateSystem := SWCoordinateSystem create.
	visibility1 := coordinateSystem  xAxis rasterVisibility.
	coordinateSystem toggleRaster.
	self assert: [(visibility1 = coordinateSystem xAxis rasterVisibility) not]