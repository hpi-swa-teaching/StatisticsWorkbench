adjusting
abbreviationForPower: aPowerOfTen

	(aPowerOfTen <= 3)
		 ifTrue: [^ ''].
	(aPowerOfTen < 6)
		 ifTrue: [^ 'K'].
	(aPowerOfTen < 9) 
		ifTrue: [^ 'M'].
	(aPowerOfTen < 12)
		ifTrue: [^ 'B'].
	(aPowerOfTen < 15) 
		ifTrue: [^ 'T'].
	(aPowerOfTen < 18) 
		ifTrue: [^ 'Qa'].
	(aPowerOfTen < 21) 
		ifTrue: [^ 'Qi'].
	(aPowerOfTen < 24) 
		ifTrue: [^ 'Sx']
