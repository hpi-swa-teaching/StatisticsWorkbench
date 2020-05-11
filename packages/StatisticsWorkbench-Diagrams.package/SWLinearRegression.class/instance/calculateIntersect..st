accessing
calculateIntersect: anArray

	^(self calculateMean: anArray second) - ((self calculateSlope: anArray) * (self calculateMean: anArray first)).