as yet unclassified
add: aSWDate
	
	| current | 
	
	self sizeIncrement.
	
	self size = 1
		ifTrue: [ ^ self addFirst: aSWDate ].
	
	(self dimensions = aSWDate dimensions) not
		ifTrue: [ SWInvalidDimensionError signal: 'Dimension of linked list and dimension of inserted item must be equal.' ]. 
	
	current := self first.
	
	[ current notNil and: [ current < aSWDate ] ]
		whileTrue: [ current := current next ].
	
	current isNil
		ifTrue: [ ^ self addAtLast: aSWDate ].
	
	current = self first
		ifTrue: [ ^ self addAtFirst: aSWDate. ].
	
	^ self add: aSWDate between: current previous and: current
	
	
	