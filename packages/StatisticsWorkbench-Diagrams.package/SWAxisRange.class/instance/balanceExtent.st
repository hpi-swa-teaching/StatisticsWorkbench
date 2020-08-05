converting
balanceExtent
	
	(self start abs < self stop abs)
		ifTrue: [self setFrom: self stop negated to: self stop by: 1].
		
	self setFrom: self start to: self start negated by: 1
