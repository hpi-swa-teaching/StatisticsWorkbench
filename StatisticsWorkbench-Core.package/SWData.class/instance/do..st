enumerating
do: aBlockClosure

	| current |
	
	self size = 0
		ifTrue: [ ^ nil ].
	
	current := self first.
	[ current notNil ]
		whileTrue: [
			aBlockClosure value: current.
			current := current next
			]