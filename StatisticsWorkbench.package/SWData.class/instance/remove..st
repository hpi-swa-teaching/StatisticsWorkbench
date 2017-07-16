as yet unclassified
remove: anArray

	| toBeDeleted current previous |
	toBeDeleted := self at: anArray.
	
	self size = 0
		ifTrue: [ ^ nil ].
		
	self first = toBeDeleted
		ifTrue: [ self first: self first next. current := nil ]
		ifFalse: [ current := self first next ].
	
	previous := self first.
	[ current notNil ]
		whileTrue: [ 
			current = toBeDeleted
				ifTrue: [ 
					previous next: current next.
					current := nil.
					]
				ifFalse: [
					previous := current.
					current := current next
					]
			]
		
	self sizeDecrement.
	
	self changed