tests
testIsInvisible 

	| scatterPlotGraph |
	scatterPlotGraph := SWScatterPlot new.
	
	self assert: [ scatterPlotGraph color = Color transparent ]