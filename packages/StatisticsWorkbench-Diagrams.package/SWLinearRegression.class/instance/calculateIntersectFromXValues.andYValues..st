calculation
calculateIntersectFromXValues: xValues andYValues: yValues
 
	^ (self calculateMean: yValues) - ((self calculateSlopeFromXValues: xValues andYValues: yValues ) * (self calculateMean: xValues)).
	