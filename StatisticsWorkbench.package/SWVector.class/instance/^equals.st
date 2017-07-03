as yet unclassified
= anotherSWVector
	
	(self dimensions = anotherSWVector dimensions) not
		ifTrue: 
			[SWInvalidDimensionError signal: 'Compared vectors must have same dimensions!'].
	
	^ anotherSWVector notNil and: [self literalEqual: anotherSWVector]