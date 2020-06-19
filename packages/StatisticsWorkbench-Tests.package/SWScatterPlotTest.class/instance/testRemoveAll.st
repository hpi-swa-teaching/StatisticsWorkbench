testing
testRemoveAll
	
	self scatterPlot removeAll. 
	self assert: scatterPlot dataPoints isEmpty
