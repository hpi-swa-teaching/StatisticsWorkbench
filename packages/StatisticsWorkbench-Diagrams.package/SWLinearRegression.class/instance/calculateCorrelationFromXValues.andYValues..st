accessing
calculateCorrelationFromXValues: xCollection andYValues: yCollection 
	| mean_X stddev_X mean_Y stddev_Y sum |
	mean_X := self calculateMean: xCollection.
	mean_Y := self calculateMean: yCollection.
	stddev_X := self calculateStandardDeviation: xCollection.
	stddev_Y := self calculateStandardDeviation: yCollection.
	sum := 0.
	(1 to: xCollection size)
		do: [:i | sum := sum + ((xCollection at: i) - mean_X * ((yCollection at: i) - mean_Y))].
	sum := sum / (stddev_X * stddev_Y).
	^ sum / xCollection size