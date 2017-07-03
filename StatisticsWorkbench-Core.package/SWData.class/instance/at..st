as yet unclassified
at: anArray
	
	| current |
	
	(self dimensions = anArray size) not
		ifTrue: [ SWInvalidDimensionError signal: 'Invalid dimension.' ].
	
	self size = 0
		ifTrue: [ ^ nil ].
	
	current := self first.
	
	[ current notNil and: [ (current key literalEqual: anArray) not ]]
		whileTrue: [ current := current next ].
		
	^ current
	
	
	 