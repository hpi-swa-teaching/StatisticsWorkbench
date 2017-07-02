as yet unclassified
testRemoveBar
	| barGraph dataset |
	barGraph := SWBarGraph new.
	barGraph coordinateSystem: SWCoordinateSystemMock new.
	
	dataset := SWDiagramMock dataSet.
	
	barGraph dataset: dataset.
	
	self assert: [ barGraph bars size = dataset size ].
	
	dataset removeDataPoint: 1.
	
	self assert: [ barGraph bars size = dataset size ]
	
	
	