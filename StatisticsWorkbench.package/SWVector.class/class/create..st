as yet unclassified
create: anArray
	
	anArray size = 0
		ifTrue: [SWInvalidDimensionError signal: 'Vector must have at least 1 dimension!'].
	
	^ SWVector new data: anArray; yourself