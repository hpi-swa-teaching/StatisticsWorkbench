testing
testToggleRaster
	
	| visibility1|
	
	visibility1 := coordinateSystem  xAxis rasterVisibility.
	coordinateSystem toggleRaster.
	self deny: visibility1 = coordinateSystem xAxis rasterVisibility