as yet unclassified
generateDataPoints

	self dataset keysAndValuesDo: [:xValue :yValue |
		self add: xValue @ yValue
	]