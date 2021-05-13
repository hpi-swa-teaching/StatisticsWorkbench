as yet unclassified
testDiagramSelection 

	|mainformModel|
	
	mainformModel := SWMainformModelTest createSWMainformModel.
	
	mainformModel diagrams: 1 setSelected: true.
	mainformModel diagrams: 3 setSelected: true.
	
	self assert: [(mainformModel isSelected: 1) and: (mainformModel isSelected: 3)].