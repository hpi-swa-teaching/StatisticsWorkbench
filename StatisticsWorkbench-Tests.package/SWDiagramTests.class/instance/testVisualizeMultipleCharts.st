testing
testVisualizeMultipleCharts
	| diagram data |
	
	data := SWDataTests createSeeded.
	diagram := SWDiagram new visualize: data with: SWLineChart new and: SWScatterPlot new.
	
	self assert: [ diagram charts size = 2 ]