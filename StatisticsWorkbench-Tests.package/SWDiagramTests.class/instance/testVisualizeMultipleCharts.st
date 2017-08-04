testing
testVisualizeMultipleCharts
	| diagram data |
	
	data := SWDataTests createSeeded.
	diagram := SWDiagram new visualize: data with: SWFunctionGraph and: SWScatterPlot.
	
	self assert: [ diagram charts size = 2 ]