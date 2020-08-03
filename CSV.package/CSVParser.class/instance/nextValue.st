parsing
nextValue

	stream peek = quote  ifTrue: [^ self nextQuotedValue].
	^ String streamContents:
		[:s | | next |
		[(next := self nextInLine) notNil and: [next ~= delimiter]]
			whileTrue: [s nextPut: next]]