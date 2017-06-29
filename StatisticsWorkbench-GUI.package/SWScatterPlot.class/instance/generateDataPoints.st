as yet unclassified
generateDataPoints

	self dataset keysAndValuesDo: [:xValue :yValue |
		self makeDataPoint: xValue @ yValue
	]