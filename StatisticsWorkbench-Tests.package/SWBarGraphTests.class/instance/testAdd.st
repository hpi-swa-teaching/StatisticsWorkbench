as yet unclassified
testAdd
	| barGraph dataset diagram |
	
	dataset := SWDataTests createSeeded.
	diagram := SWDiagram new
								visualize: dataset with: SWBarGraph new;
								yourself.
	
	barGraph := (diagram charts at: 1).
	self assert: [ barGraph bars size = dataset size ].
	
	dataset add: (SWDate fromPoint: 100@100).
	
	self assert: [ barGraph bars size = dataset size ]
	
	
	