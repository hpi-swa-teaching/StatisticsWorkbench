accessing
calculateSlope: anArray
	^ self calculateCorrelation: anArray * ((self calculateStandardDeviation: anArray first) * (self calculateStandardDeviation: anArray second))