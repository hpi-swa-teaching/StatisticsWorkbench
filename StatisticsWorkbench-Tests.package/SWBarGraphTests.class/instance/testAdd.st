as yet unclassified
testAdd
	| barGraph dataset diagram |
	
	dataset := SWDataTests createSeeded.
	diagram := SWDiagram new
								visualize: dataset with: SWBarGraph;
								yourself.
	
	barGraph := (diagram charts at: 1).
	self assert: [ barGraph bars size = dataset size ].
	
	dataset add: 100@100.
	
	self assert: [ barGraph bars size = dataset size ]
	
	
	