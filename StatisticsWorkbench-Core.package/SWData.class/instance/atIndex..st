accessing
atIndex: aNumber

	| i current |
	(aNumber > size or: aNumber < 1) ifTrue: [ SWInvalidArgumentError signal: 'Index out of range' ].
	aNumber = 1 ifTrue: [ ^ self first ].
	i := 1.
	current := self first.
	[ i < aNumber ] whileTrue: [ current := current next. i := i + 1 ].
	^ current