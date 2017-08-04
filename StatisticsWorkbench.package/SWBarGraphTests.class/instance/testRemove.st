as yet unclassified
testRemove
	| barGraph dataset diagram |
	
	dataset := SWDataTests createSeeded.
	
	diagram := SWDiagram new
								visualize: dataset with: SWBarGraph  new;
								yourself.
	
	
	barGraph := diagram charts at: 1.
	
	self assert: [ barGraph bars size = dataset size ].
	
	dataset remove: #(1 1).
	
	self assert: [ barGraph bars size = dataset size ]
	
	
	