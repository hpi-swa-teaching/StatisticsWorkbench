as yet unclassified
testChartSelection 

	|mainformModel|
	
	mainformModel := SWMainformModelTest createSWMainformModel.
	
	mainformModel chart: 1 setSelected: true.
	mainformModel chart: 3 setSelected: true.
	
	self assert: [(mainformModel isSelected: 1) and: (mainformModel isSelected: 3)].