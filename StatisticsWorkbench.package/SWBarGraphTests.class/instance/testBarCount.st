as yet unclassified
testBarCount
	| barGraph dataset |
	barGraph := SWBarGraph new.
	barGraph coordinateSystem: SWCoordinateSystemMock new.
	
	dataset := SWDiagramMock dataSet.
	
	barGraph dataset: dataset.
	
	self assert: [ barGraph bars size = dataset size ]
	
	
	