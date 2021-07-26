accessing
labelName

	labelName ifNil: [^ (self at: 1) printString].

	^ labelName
