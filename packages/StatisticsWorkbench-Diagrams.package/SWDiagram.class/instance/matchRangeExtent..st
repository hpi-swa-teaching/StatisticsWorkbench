computing
matchRangeExtent: aRange

	| max min |
	
	min := aRange at: 1.
	max := aRange at: 2.
	
	(min abs < max abs)
		ifTrue: [^ (Array with: max negated with: max)].
		
	^ (Array with: min with: min negated)
