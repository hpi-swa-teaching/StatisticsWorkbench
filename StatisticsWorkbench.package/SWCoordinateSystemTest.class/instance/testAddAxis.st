testing
testAddAxis

	| xAxis|
	
	xAxis := SWAxis create.
	
	self coordinateSystem addAxis: xAxis dimension: #x.
	self assert: self coordinateSystem xAxis = xAxis.
	
