testing
testForbidRemovingAllPoints

	1 to: 3 do: [:i | self scatterPlot remove: (self scatterPlot dataPoints at: 1)].
	self should: [self scatterPlot remove: (self scatterPlot dataPoints at: 1).] raise: Exception