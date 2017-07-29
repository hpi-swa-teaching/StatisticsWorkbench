accessing
at: anArray
	
	| current |
	self dimensions = anArray size
		ifFalse: [ SWInvalidDimensionError signal: 'Invalid dimension.' ].
	self size = 0
		ifTrue: [ ^ nil ].
	current := self first.
	self flag: #tom. "how to avoid nesting"
	[ (current key data literalEqual: anArray) not ]
		whileTrue: [ current := current next.
							current isNil ifTrue: [ ^ nil ] ].
	^ current
	
	
	 