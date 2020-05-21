calculation
calculateSlopeFromXValues: xCollection andYValues: yCollection
	^ (self calculateCorrelationFromXValues: xCollection andYValues: yCollection) * (self calculateStandardDeviation: yCollection) / (self calculateStandardDeviation: xCollection)