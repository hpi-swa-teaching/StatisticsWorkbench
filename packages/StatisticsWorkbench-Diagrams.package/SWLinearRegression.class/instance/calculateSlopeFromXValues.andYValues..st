calculation
calculateSlopeFromXValues: xValues andYValues: yValues

	^ (self calculateCorrelationFromXValues: xValues andYValues: yValues) * (self calculateStandardDeviation: yValues) / (self calculateStandardDeviation: xValues)
