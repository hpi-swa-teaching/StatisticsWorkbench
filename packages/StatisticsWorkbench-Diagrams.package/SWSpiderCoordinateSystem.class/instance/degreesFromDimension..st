geometry
degreesFromDimension: aNumber 

	^ (aNumber * self degreesPerDimension + self class axisOffsetToHorizontal ) \\ 360
