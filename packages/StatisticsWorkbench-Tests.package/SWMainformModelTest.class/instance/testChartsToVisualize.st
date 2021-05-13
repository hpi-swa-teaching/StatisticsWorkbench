as yet unclassified
testChartsToVisualize

	|mainformModel expectedValue|
	
	mainformModel := SWMainformModelTest createSWMainformModel.
	
	mainformModel diagrams: 1 setSelected: true.
	mainformModel diagrams: 2 setSelected: true.

	expectedValue := OrderedCollection new 
		add: (mainformModel getCharts at: 1); 
		add: (mainformModel getCharts at: 2);
		yourself.

	self assert: [mainformModel chartsToVisualize = expectedValue].
	




