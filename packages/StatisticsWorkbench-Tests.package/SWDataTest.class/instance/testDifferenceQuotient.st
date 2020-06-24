testing
testDifferenceQuotient

	self should: [self data differenceQuotientOf: 2 between: 3 and: 4] raise: SWDataIsNotUnambigious.
	self data removeArray: #(1 1).
	self assert: (-3 / 2) equals: (self data differenceQuotientOf: 2 between: 1 and: 3).
	self should: [self data differenceQuotientOf: 2 between: 3 and: 4] raise: SWxValueNotFound
