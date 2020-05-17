accessing
calculateIntersectFromXValues: xCollection andYValues: yCollection
 
	^(self calculateMean: yCollection) - ((self calculateSlopeFromXValues: xCollection andYValues: yCollection ) * (self calculateMean: xCollection)).