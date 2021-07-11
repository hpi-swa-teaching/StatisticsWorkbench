as yet unclassified
degreesFromDimension: aNumber 

	^ (aNumber - 1 * self radiantsPerDimension radiansToDegrees + self class axisOffsetToHorizontal ) \\ 360
