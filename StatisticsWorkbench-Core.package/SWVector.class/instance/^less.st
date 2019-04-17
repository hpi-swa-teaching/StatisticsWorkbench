comparing
< anotherSWVector
	| index |
	
	(anotherSWVector isNil)
		ifTrue: [^ false].
	(self dimensions = anotherSWVector dimensions)
		ifFalse: [SWInvalidDimensionError signal: 'You must compare equal sized vectors.'].
	index := 1.
	[index <= self dimensions]
		whileTrue: 
			[(self at: index) > (anotherSWVector at: index)
				ifTrue: [^ false].
			 (self at: index) < (anotherSWVector at: index)
				ifTrue: [^ true].
			index := index + 1].
	^ false