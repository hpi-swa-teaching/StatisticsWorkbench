as yet unclassified
testBarsGetRemovedFromCollection

	| barGraph |
	barGraph := SWBarGraph new.
	barGraph coordinateSystem: SWCoordinateSystemMock new.
	barGraph dataset: SWDiagramMock dataSet.
	barGraph removeAll.
	
	self assert: [ barGraph bars size = 0 ]
	
	