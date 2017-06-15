as yet unclassified
removeDataPoint: aDataPoint
	self dataPointMorphs remove: aDataPoint.
	self removeMorph: aDataPoint.
	aDataPoint delete