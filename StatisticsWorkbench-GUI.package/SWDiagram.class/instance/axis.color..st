as yet unclassified
axis: aDimension color: aColor
	
	(aDimension = #x)
		ifTrue: [^ self coordinateSystem xAxis axisColor: aColor ].
		
	(aDimension = #y)
		ifTrue: [^ self coordinateSystem yAxis axisColor: aColor ].
		
	SWInvalidArgumentError signal: 'This dimension is not supported.'
	
	