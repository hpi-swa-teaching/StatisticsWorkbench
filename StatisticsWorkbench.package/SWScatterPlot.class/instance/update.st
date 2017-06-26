as yet unclassified
update
	
	self dataPoints	do: [:dataPoint | self removeDataPoint: dataPoint].
		
	self dataset keysAndValuesDo: [:xValue :yValue |
		self makeDataPoint: xValue @ yValue.
	].

	self dataPoints do: [:dataPoint | dataPoint position: dataPoint renderedPoint  ].
	
	
	
	