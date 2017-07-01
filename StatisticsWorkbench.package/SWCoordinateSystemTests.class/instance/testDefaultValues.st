as yet unclassified
testDefaultValues
	
	|coordinateSystem|
	
	coordinateSystem := SWCoordinateSystem create.
	
	self assert: [(coordinateSystem xAxis  == nil)not].
	self assert: [(coordinateSystem yAxis  == nil)not].
	self assert: [(coordinateSystem boundsThreshold = (60@60))].
	self assert: [(coordinateSystem color = Color white)]