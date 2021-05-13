as yet unclassified
testDefaultChartSelection 

	|mainformModel|
	
	mainformModel := SWMainformModelTest createSWMainformModel.
	
	(1 to: self numberOfCharts)	do: [:each|
		self assert: [(mainformModel isSelected: each) not].	
	].
		