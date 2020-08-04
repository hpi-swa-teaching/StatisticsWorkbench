adjusting
createShortNumber: aNumber powerOfTen: aPowerOfTen abbreviation: aText
	
	| fractionalPart integerPart separator |
	
	integerPart := aNumber copyFrom: 1 to: (aNumber size - aPowerOfTen).
	fractionalPart := aNumber copyFrom: (aNumber size - aPowerOfTen + 1) to: (aNumber size - aPowerOfTen + 1).
	separator := ','.
	
	^ integerPart, separator, fractionalPart, aText
