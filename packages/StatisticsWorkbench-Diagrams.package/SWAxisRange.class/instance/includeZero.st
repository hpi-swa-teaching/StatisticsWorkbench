adding
includeZero

	(self start > 0)
		ifTrue: [self setFrom: 0 to: (self stop) by: 1].
		
	(self start < 0 and: [self stop < 0])
		ifTrue: [self setFrom: (self start) to: 0 by: 1]
