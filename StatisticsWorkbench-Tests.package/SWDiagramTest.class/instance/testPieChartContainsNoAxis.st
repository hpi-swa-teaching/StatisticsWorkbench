testing
testPieChartContainsNoAxis
	
	self should: [(self diagramPieChart charts first) coordinateSystem] raise: Exception 