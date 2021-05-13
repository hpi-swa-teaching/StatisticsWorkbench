as yet unclassified
testDiagramsLength 

	|mainformModel|
	
	mainformModel := SWMainformModelTest createSWMainformModel.

	self assert: [(mainformModel diagramsSelection size) = (self numberOfDiagrams)].