geometry
generateDataPoints

	self data do: [ :item | self add: (self createDataPoint: item) ]