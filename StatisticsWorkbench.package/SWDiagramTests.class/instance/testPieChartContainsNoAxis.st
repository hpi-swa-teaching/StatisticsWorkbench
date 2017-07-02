testing
testPieChartContainsNoAxis
	| diagram |
	diagram := self createDiagramWith: SWPieChart.
	
	self should: [(diagram charts at: 1) coordinateSystem ] raise: Exception 
	
