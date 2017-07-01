as yet unclassified
testBarCount
	| barGraph dataset |
	barGraph := SWBarGraph new.
	barGraph coordinateSystem: SWCoordinateSystemMock new.
	
	dataset := SWDiagramMock dataSet.
	
	barGraph dataset: dataset.
	barGraph update.
	
	self assert: [ barGraph bars size = dataset size ]
	
	
	