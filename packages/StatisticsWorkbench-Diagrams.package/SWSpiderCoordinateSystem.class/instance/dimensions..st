accessing
dimensions: aNumber

	self assert: [aNumber >= self class minimumDimensions].
	dimensions := aNumber