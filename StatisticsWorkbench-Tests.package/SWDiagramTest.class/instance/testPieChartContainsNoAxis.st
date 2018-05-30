testing
testPieChartContainsNoAxis
	
	self should: [(self diagramPieChart charts at: 1) coordinateSystem] raise: Exception 