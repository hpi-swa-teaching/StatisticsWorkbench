testing
testPieChartContainsNoAxis
	
	self should: [(self diagramPieChart diagram first) coordinateSystem] raise: Exception
