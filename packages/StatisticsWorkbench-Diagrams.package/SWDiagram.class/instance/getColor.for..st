visualization
getColor: aCollection for: aChart

	| index |
	
	1 to: self charts size do:
		[:i | (self charts at: i) = aChart ifTrue: [index := i]].
	^aCollection at: index