as yet unclassified
= anotherSWVector
	
	self dimensions = anotherSWVector dimensions
		ifFalse: 
			[SWInvalidDimensionError signal: 'Compared vectors must have same dimensions!'].
	
	^ anotherSWVector notNil and: [self data literalEqual: anotherSWVector]