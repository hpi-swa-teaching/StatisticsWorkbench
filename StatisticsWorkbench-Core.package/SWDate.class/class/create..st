as yet unclassified
create: anArray
	
	anArray size = 0
		ifTrue: [ SWInvalidDimensionError signal: 'You must provide at least one dimension' ].
	
	
	^ SWDate new
				key: anArray;
				yourself