tests
testCollectionsGetInitialized 

	| scatterPlot |
	scatterPlot := SWScatterPlot new.
	
	self assert: [ scatterPlot dataPoints notNil and: [ scatterPlot dataPoints size = 0 ] ]