as yet unclassified
testBarCount
	| barGraph dataset diagram |
	
	dataset := SWDiagramMock dataSet.
	
	diagram := SWDiagram new
								visualize: dataset with: SWBarGraph. 
	
	
	barGraph := diagram charts at: 1.
	
	self assert: [ barGraph bars size = dataset size ]
	
	
	