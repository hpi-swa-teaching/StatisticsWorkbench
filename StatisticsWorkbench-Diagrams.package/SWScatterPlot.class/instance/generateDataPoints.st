geometry
generateDataPoints

	self data do: [ :vector | self add: (self createDataPoint: vector) ]