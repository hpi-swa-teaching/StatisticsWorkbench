parsing
nextQuotedValue
	stream next = quote ifFalse: [^ nil].

	^ String streamContents:
		[:s |
		[s nextPutAll: (stream upTo: quote).
		self nextInLine = quote] 
			whileTrue: 
				[s nextPut: quote]]
