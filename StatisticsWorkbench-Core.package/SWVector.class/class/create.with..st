as yet unclassified
create: anObject with: anElementSize

	|tempVector|
	anElementSize <= 0
		ifTrue: [ SWInvalidArgumentError signal: 'Element size must be greater than 0' ].
	
	tempVector := anObject asSWVector.
	tempVector elementSize: anElementSize.
	
	^ tempVector