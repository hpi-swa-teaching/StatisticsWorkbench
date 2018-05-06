tests
testRemove

	self data removeArray: #(1 1).
	self assert: scatterPlot dataPoints size = self data size