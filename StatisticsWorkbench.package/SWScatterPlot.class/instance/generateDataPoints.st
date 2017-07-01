as yet unclassified
generateDataPoints

	self dataset keysAndValuesDo: [:xValue :yValue |
		self addDataPoint: xValue @ yValue
	]