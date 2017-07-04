as yet unclassified
testRemoveAll

	| funcGraph diagram |
	diagram := SWDiagram new
								visualize: SWDataTests createSeeded with: SWFunctionGraph. 
	
	funcGraph := diagram charts at: 1.
	funcGraph removeAll. 
	self assert: [ funcGraph vertices size = 0 ]