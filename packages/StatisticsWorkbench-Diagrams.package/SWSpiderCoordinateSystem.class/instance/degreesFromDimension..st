geometry
degreesFromDimension: aNumber 

	^ (aNumber * self degreesPerDimension + self class defaultAxisOffsetToHorizontal ) \\ 360
