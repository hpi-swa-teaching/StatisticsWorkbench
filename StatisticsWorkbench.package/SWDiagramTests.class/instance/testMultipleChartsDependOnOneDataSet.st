testing
testMultipleChartsDependOnOneDataSet
	| diagram data |
	data := SWDataTests createSeeded.
	diagram := SWDiagram new visualize: data with: SWFunctionGraph  and: SWScatterPlot.
	
	" Die Zahlen hier stimme nicht mehr, d.h. die müssen auf die aus createSeeded angepasst werden "
	self assert: [ (diagram charts at: 1) data = (diagram charts at: 2) data].
	
	(diagram charts at: 1) data remove: #(0 1).
	
	self assert: [ (diagram charts at: 1) data size = (diagram charts at: 2) data size ]