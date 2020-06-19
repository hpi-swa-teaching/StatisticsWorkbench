adjusting
shortenNumbers: aNumber

	| number shortNumber abbreaviation powerOfTen numberSize |
	
	number := aNumber printString.
	numberSize := number size.
	shortNumber := number.
	abbreaviation := self abbreviationForPower: numberSize.
	powerOfTen := self powerOfTenForNumberSize: numberSize.
	
	(number size > 3)
		ifTrue: [shortNumber := self createShortNumber: number powerOfTen: powerOfTen abbreviation: abbreaviation].

 	^shortNumber asString
