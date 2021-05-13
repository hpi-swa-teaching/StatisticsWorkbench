testing
testRemoveOnUserInput

	| size |
	size := self scatterPlot dataPoints size.
	hand handleEvent: (self redMouseDownAt: (self scatterPlot dataPoints at: 1)).
	self assert: size equals: self scatterPlot dataPoints size + 1