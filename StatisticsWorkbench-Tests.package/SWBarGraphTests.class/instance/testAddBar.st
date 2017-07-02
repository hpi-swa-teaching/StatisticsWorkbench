as yet unclassified
testAddBar
	| barGraph dataset |
	barGraph := SWBarGraph new.
	barGraph coordinateSystem: SWCoordinateSystemMock new.
	
	dataset := SWDiagramMock dataSet.
	
	barGraph dataset: dataset.
	
	self assert: [ barGraph bars size = dataset size ].
	
	dataset addDataPoint: 100@100.
	
	self assert: [ barGraph bars size = dataset size ]
	
	
	