testing
testAddChartToDiagram
	| diagram chartCountBeforeInsert |
	diagram := self createDiagramWith: SWLineChart new.
	
	chartCountBeforeInsert := diagram charts size.
	diagram add: SWScatterPlot create.
	
	self assert: [ diagram charts size = (chartCountBeforeInsert + 1) ]