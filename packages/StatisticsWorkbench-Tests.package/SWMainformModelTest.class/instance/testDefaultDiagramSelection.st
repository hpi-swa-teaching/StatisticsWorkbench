as yet unclassified
testDefaultDiagramSelection 

	|mainformModel|
	
	mainformModel := SWMainformModelTest createSWMainformModel.
	
	(1 to: self numberOfDiagrams)	do: [:each|
		self assert: [(mainformModel isSelected: each) not].	
	].
		