as yet unclassified
at: anArray
	
	| current |
	
	(self dimensions = anArray size)
		ifFalse: [ SWInvalidDimensionError signal: 'Invalid dimension.' ].
	
	self size = 0
		ifTrue: [ ^ nil ].
	
	current := self first.
	
	[ current notNil and: [ (current key data literalEqual: anArray) not ]]
		whileTrue: [ current := current next ].
		
	^ current
	
	
	 