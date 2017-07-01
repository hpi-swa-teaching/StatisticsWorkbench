testing
testPieChartContainsNoAxis
	| diagram |
	diagram := self createDiagramWith: SWPieChart.
	
	self assert: [ diagram hasCoordinateSystem not ].
	
