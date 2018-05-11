tests
testDifferenceQuotient
	self should: [self data differenceQuotientOf: 2 between: 3 and: 4] raise: SWDataIsNotUnambigious.
	self data removeArray: #(1 1).
	self assert: (self data differenceQuotientOf: 2 between: 1 and: 3) = (-3/2).
	self should: [self data differenceQuotientOf: 2 between: 3 and: 4] raise: SWxValueNotFound.