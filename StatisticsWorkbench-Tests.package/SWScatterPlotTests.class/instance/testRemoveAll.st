tests
testRemoveAll

	| dataset diagram scatterPlot |
	dataset := SWDataTests createSeeded.
	diagram := SWDiagram new
								visualize: dataset with: SWScatterPlot new.
	scatterPlot := diagram charts at: 1.
	scatterPlot data: SWDataTests createSeeded.
	
	scatterPlot removeAll. 
	self assert: [ scatterPlot dataPoints size = 0 ]