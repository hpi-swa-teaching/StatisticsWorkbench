as yet unclassified
testRemove
	| barGraph dataset diagram |
	
	dataset := SWDiagramMock dataSet.
	
	diagram := SWDiagram new
								visualize: dataset with: SWBarGraph;
								yourself.
	
	
	barGraph := diagram charts at: 1.
	
	self assert: [ barGraph bars size = dataset size ].
	
	dataset remove: 1.
	
	self assert: [ barGraph bars size = dataset size ]
	
	
	