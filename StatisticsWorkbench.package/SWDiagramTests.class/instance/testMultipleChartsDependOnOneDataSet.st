testing
testMultipleChartsDependOnOneDataSet
	| diagram data |
	data := SWDataTests createSeeded.
	diagram := SWDiagram new visualize: data with: SWFunctionGraph  and: SWScatterPlot.
	
	" Die Zahlen hier stimme nicht mehr, d.h. die müssen auf die aus createSeeded angepasst werden "
	self assert: [ (diagram charts at: 1) dataset = (diagram charts at: 2) dataset].
	
	(diagram charts at: 1) dataset remove: 1.
	
	self assert: [ (diagram charts at: 1) dataset size = (diagram charts at: 2) dataset size ]