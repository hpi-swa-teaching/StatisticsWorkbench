calculation
calculateStandardDeviation: anOrderedCollection
	| sum mean |
	mean := self calculateMean: anOrderedCollection.
	sum := anOrderedCollection inject: 0 into: [:agg :current | agg := agg + ((current - mean) squared)].
	^ (sum / anOrderedCollection size) sqrt
	