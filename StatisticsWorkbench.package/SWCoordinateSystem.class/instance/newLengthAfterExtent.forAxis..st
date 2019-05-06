geometry
newLengthAfterExtent: aPoint forAxis: aDimension
	
	(aDimension = #x)
		ifTrue: [^ self calculateXCoordinateForPoint: aPoint].
	(aDimension = #y)
		ifTrue: [^ self calculateYCoordinateForPoint: aPoint].
	SWInvalidArgumentError signal: 'Wrong dimension is given.'