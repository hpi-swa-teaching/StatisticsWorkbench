statistics
median: aDimension
	"+1 is needed since smalltalk indices start at 1"
	| index |
	index := ((self size + 1) / 2) asInteger.
	^ (self selectDimension: aDimension) sort at: index