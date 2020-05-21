calculation
calculateCorrelationFromXValues: xCollection andYValues: yCollection 
	| meanX stddevX meanY stddevY sum |
	
	meanX := self calculateMean: xCollection.
	meanY := self calculateMean: yCollection.
	stddevX := self calculateStandardDeviation: xCollection.
	stddevY := self calculateStandardDeviation: yCollection.
	
	(stddevX = 0 and: stddevY) = 0 
		ifTrue: [^ 0].
	
	sum := 0.
	(1 to: xCollection size)
		do: [:i | 
			| demeanX demeanY |
			demeanX := (xCollection at: i) - meanX.
			demeanY := (yCollection at: i) - meanY.
			sum := sum + (demeanX * demeanY)
		].
	
	sum := sum / (stddevX * stddevY).
	^ sum / (xCollection size)