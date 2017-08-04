comparing
< anotherSWDate
	
	| index |
	
	anotherSWDate isNil ifTrue: [ ^ false ].
	
	self dimensions = anotherSWDate dimensions
		ifFalse: [ SWInvalidDimensionError signal: 'You must compare equal sized dates' ].
		
	index := 1.
	[index <= self dimensions]
		whileTrue: 
			[(self key at: index) > (anotherSWDate key at: index)
				ifTrue: [ ^ false ].
			 (self key at: index) < (anotherSWDate key at: index)
				ifTrue: [ ^ true ].
			index := index + 1].
	
	^ false
	