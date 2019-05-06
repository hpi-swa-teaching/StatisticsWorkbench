testing
testBarGraphContainsTwoAxis
	| diagram |
	diagram := self createDiagramWith: SWBarGraph.
	
	self assert: [ diagram hasCoordinateSystem ].
	self assert: [ (diagram coordinateSystem xAxis == nil) not ].
	self assert: [ (diagram coordinateSystem yAxis == nil) not]
	