testing
testCollectionsGetInitialized 
	
	self assert: (self scatterPlot dataPoints notNil and: [self scatterPlot dataPoints size = self data size])