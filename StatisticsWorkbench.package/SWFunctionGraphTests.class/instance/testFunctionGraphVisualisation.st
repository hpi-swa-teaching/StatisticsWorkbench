as yet unclassified
testFunctionGraphVisualisation
	| funcGraph diagram dataset |
	
	dataset := SWData createSeeded.
	
	diagram := SWDiagram new
								visualize: dataset with: SWFunctionGraph;
								yourself.
	
	funcGraph := diagram charts at: 1.
	
	self assert: [ (funcGraph vertices size) = dataset size ]