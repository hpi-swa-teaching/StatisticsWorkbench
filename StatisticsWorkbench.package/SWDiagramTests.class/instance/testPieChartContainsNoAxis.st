testing
testPieChartContainsNoAxis
	| diagram |
	diagram := self createDiagramWith: SWPieChart create.
	
	self should: [(diagram charts at: 1) coordinateSystem ] raise: Exception 
	
