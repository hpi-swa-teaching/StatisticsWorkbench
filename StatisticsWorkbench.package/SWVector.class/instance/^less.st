comparing
< anotherSWVector
	
	| index |
	anotherSWVector isNil ifTrue: [ ^ false ].
	self dimensions = anotherSWVector dimensions
		ifFalse: [ SWInvalidDimensionError signal: 'You must compare equal sized vectors' ].
	index := 1.
	[ index <= self dimensions ]
		whileTrue: 
			[ (self data at: index) > (anotherSWVector data at: index)
				ifTrue: [ ^ false ].
			 (self data at: index) < (anotherSWVector data at: index)
				ifTrue: [ ^ true ].
			index := index + 1 ].
	^ false
	