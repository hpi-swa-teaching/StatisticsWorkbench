as yet unclassified
testRemoveAll

	| barGraph diagram |
	diagram := SWDiagram new
								visualize: SWDataTests createSeeded with: SWBarGraph new. 
	
	barGraph := diagram charts at: 1.
	barGraph removeAll.
	
	self assert: [ barGraph bars size = 0 ]
	
	