as yet unclassified
testAddAxis

	|coordinateSystem xAxis|
	
	xAxis := SWAxis create.
	coordinateSystem := SWCoordinateSystem create.
	
	coordinateSystem addAxis: xAxis  dimension: #x.
	self assert: [coordinateSystem xAxis = xAxis].
	
