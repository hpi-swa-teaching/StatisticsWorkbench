adjusting
abbreviationForPower: aPowerOfTen
	| returnAbbreviation |
	
	returnAbbreviation := aPowerOfTen printString.
	(aPowerOfTen > 3)
		 ifTrue: [returnAbbreviation := 'K'].
	(aPowerOfTen > 6) 
		ifTrue: [returnAbbreviation := 'M'].
	(aPowerOfTen > 9)
		ifTrue: [returnAbbreviation := 'B'].
	(aPowerOfTen > 12) 
		ifTrue: [returnAbbreviation := 'T'].
	(aPowerOfTen > 15) 
		ifTrue: [returnAbbreviation := 'Qa'].
	(aPowerOfTen > 18) 
		ifTrue: [returnAbbreviation := 'Qi'].
	(aPowerOfTen > 21) 
		ifTrue: [returnAbbreviation := 'Sx'].

 	^returnAbbreviation asString
