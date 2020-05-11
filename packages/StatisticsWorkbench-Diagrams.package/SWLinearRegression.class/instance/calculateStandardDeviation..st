accessing
calculateStandardDeviation: anOrderedCollection
	| sum mean |
	sum := 0.
	mean := self calculateMean: anOrderedCollection. 
	anOrderedCollection do: [:each | sum := sum + (each - mean)squared].
	sum := sum/anOrderedCollection size.
	^ sum sqrt 
	