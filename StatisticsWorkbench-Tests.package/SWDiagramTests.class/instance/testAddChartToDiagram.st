testing
testAddChartToDiagram
	| diagram chartCountBeforeInsert |
	diagram := self createDiagramWith: SWFunctionGraph.
	
	chartCountBeforeInsert := diagram charts size.
	diagram addChart: SWScatterPlot create.
	
	self assert: [ diagram charts size = (chartCountBeforeInsert + 1) ]