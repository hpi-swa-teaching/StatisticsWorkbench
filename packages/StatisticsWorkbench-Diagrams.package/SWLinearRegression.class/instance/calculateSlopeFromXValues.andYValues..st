accessing
calculateSlopeFromXValues: xCollection andYValues: yCollection
	^ self calculateCorrelationFromXValues: xCollection andYValues: yCollection * 
	((self calculateStandardDeviation: xCollection) * 
	(self calculateStandardDeviation: yCollection))