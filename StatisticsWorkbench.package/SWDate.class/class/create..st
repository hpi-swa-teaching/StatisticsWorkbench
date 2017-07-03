as yet unclassified
create: aSWVector
	
	aSWVector dimensions = 0
		ifTrue: [ SWInvalidDimensionError signal: 'You must provide at least one dimension' ].
	
	
	^ SWDate new
				key: aSWVector;
				yourself