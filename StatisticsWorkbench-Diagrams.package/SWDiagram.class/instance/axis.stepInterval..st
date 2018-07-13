geometry
axis: aDimension stepInterval: aValue

	(self hasCoordinateSystem and: aDimension = #x) 
		ifTrue: [self coordinateSystem xAxis stepInterval: aValue].
		
	(self hasCoordinateSystem and: aDimension = #y) 
		ifTrue: [self coordinateSystem xAxis stepInterval: aValue].
		
	self updateCharts.
		
	(aDimension ~= #x and: aDimension ~= #y)
		ifTrue: [SWInvalidArgumentError signal: 'This dimension is not supported.']
	