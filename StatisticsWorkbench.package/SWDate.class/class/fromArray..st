as yet unclassified
fromArray: anArray

	anArray size = 0
		ifTrue: [ SWInvalidDimensionError signal: 'You must provide at least one dimension' ].
		
	^ self create: (SWVector create: anArray)