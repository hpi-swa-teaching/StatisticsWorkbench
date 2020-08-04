adjusting
shortenNumbers: aNumber

	| number abbreviation powerOfTen |
	
	number := aNumber printString.
	abbreviation := self abbreviationForPower: number size.
	powerOfTen := self powerOfTenForNumberSize: number size.
	
	(number size > 3)
		ifTrue: [^ self createShortNumber: number powerOfTen: powerOfTen abbreviation: abbreviation].

 	^ number asString
