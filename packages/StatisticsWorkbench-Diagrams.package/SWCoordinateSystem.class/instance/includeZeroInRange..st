computing
includeZeroInRange: aRange

	(aRange first > 0)
		ifTrue: [aRange at: 1 put: 0].
		
	(aRange first < 0 and: aRange second < 0)
		ifTrue: [aRange at: 2 put: 0].
		
	^ aRange
