testing
testAddChartToDiagram

	| chartCountBeforeInsert |	
	chartCountBeforeInsert := self diagramLineChart charts size.
	self diagramLineChart add: SWScatterPlot create.
	
	self assert: self diagramLineChart charts size = (chartCountBeforeInsert + 1)