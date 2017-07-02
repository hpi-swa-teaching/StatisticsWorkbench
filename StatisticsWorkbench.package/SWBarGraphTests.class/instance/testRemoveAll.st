as yet unclassified
testRemoveAll

	| barGraph |
	barGraph := SWBarGraph new.
	barGraph dataset: SWDiagramMock dataSet.
	barGraph removeAll.
	
	self assert: [ barGraph bars size = 0 ]
	
	