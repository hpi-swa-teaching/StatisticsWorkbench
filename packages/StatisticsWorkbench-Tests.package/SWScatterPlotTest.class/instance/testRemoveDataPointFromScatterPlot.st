testing
testRemoveDataPointFromScatterPlot

	| size |
	size := self scatterPlot dataPoints size.
	self scatterPlot remove: (self scatterPlot dataPoints at: 1).
	self assert: size equals: self scatterPlot dataPoints size + 1