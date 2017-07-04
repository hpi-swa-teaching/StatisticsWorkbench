as yet unclassified
testRemoveAll

	| funcGraph diagram |
	diagram := SWDiagram new
								visualize: SWDataTests createSeeded with: SWFunctionGraph. 
	
	funcGraph := diagram charts at: 1.
	funcGraph removeAll. 
	self assert: [ funcGraph dataPoints size = 0 ]