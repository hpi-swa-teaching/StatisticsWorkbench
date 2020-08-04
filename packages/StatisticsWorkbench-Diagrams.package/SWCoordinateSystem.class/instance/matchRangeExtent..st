computing
matchRangeExtent: aRange

	| max min |
	
	min := aRange first.
	max := aRange second.
	
	(min abs < max abs)
		ifTrue: [^ Array with: max negated with: max].
		
	^ Array with: min with: min negated
