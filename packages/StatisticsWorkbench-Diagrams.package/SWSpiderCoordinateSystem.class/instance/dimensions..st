accessing
dimensions: aNumber

	self assert: [aNumber >= self class defaultMinimumDimensions].
	dimensions := aNumber