geometry
newLengthAfterExtent: aPoint forAxis: aDimension
	
	(aDimension = #x)
		ifTrue: [^ aPoint x + self position x - self yAxis startPoint x - (self boundsThreshold x / 2)].
	(aDimension = #y)
		ifTrue: [^ aPoint y + self position y - self yAxis endPoint y - (self boundsThreshold y / 2)].
	SWInvalidArgumentError signal: 'Wrong dimension is given.'