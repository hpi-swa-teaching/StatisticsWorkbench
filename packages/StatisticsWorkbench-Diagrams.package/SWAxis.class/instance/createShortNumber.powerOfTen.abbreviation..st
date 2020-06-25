adjusting
createShortNumber: aNumber powerOfTen: aPowerOfTen abbreviation: aText
	
	^ (aNumber copyFrom: 1 to: (aNumber size - aPowerOfTen)), ',', (aNumber copyFrom: (aNumber size - aPowerOfTen + 1) to: (aNumber size - aPowerOfTen + 1)), aText
