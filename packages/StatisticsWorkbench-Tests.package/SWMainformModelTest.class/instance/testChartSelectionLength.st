as yet unclassified
testChartSelectionLength 

	|mainformModel|
	
	mainformModel := SWMainformModelTest createSWMainformModel.

	self assert: [(mainformModel chartSelection size) = (self numberOfCharts)].