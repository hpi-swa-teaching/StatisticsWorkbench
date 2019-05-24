testing
testRemove

	self data removeArray: #(1 1).
	self assert: self data size equals: scatterPlot dataPoints size