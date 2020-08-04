adjusting
powerOfTenForNumberSize: numberSize

	| powerOfTen |
	
	powerOfTen := 1.
	1 to: 7 do: [:i | (numberSize > (i * 3))
						ifTrue: [powerOfTen := i * 3]].

	^ powerOfTen
