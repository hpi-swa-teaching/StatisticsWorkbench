parsing
nextRow
	| row |
	row := self rowClass new.
	stream skipSeparators.
	[self atEndOfLine]
		whileFalse: [row add: self nextValue].
	stream back.
	stream next = delimiter
		ifTrue: [row add: ''].
	^ row