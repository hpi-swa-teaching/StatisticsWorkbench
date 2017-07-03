as yet unclassified
create: anArray
	
	self flag: #fishy. 
	
	anArray size = 0
		ifTrue: [SWInvalidDimensionError signal: 'Vector must have at least 1 dimension!'].
	
	^ SWVector new copyFrom: anArray 