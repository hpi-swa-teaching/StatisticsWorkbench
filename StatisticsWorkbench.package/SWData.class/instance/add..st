adding/removing
add: aSWDate
	
	| current previous |
	self flag: #marc. "implement double dispatch"
	self size = 0
		ifTrue: [ ^ self addFirst: aSWDate ].
	(self dimensions = aSWDate dimensions) not
		ifTrue: [ SWInvalidDimensionError signal: 'Dimension of linked list and dimension of inserted item must be equal.' ]. 
	current := self first.
	[ current notNil and: [ current < aSWDate ] ]
		whileTrue: [ previous := current. current := current next ].
	current isNil
		ifTrue: [ ^ self addAtLast: aSWDate ].
	current = self first
		ifTrue: [ ^ self addAtFirst: aSWDate ].
	self add: aSWDate between: previous and: current.
	self changed
	
	
	