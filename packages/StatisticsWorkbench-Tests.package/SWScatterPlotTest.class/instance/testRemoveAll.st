testing
testRemoveAll
	
	self scatterPlot removeAll. 
	self assert: self scatterPlot dataPoints isEmpty
