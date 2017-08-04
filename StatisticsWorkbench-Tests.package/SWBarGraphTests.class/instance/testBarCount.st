as yet unclassified
testBarCount
	| barGraph dataset diagram |
	
	dataset := SWDataTests createSeeded.
	
	diagram := SWDiagram new
								visualize: dataset with: SWBarGraph new. 
	
	
	barGraph := diagram charts at: 1.
	
	self assert: [ barGraph bars size = dataset size ]
	
	
	