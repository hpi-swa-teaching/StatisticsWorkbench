accessing
axis: aDimension color: aColor
	
	aDimension = #x
		ifTrue: [^ self coordinateSystem xAxis color: aColor].
	aDimension = #y
		ifTrue: [^ self coordinateSystem yAxis color: aColor].
	SWInvalidArgumentError signal: 'This dimension is not supported.'
	
	