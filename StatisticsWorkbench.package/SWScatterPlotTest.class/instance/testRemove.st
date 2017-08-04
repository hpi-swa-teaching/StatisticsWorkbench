tests
testRemove

	self data remove: #(1 1).
	self assert: scatterPlot dataPoints size = self data size