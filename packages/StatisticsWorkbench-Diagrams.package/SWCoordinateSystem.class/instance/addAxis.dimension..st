adding/removing
addAxis: anAxis dimension: aDimension
	
	(aDimension = #x)
		ifTrue: [self xAxis: anAxis].
	(aDimension = #y)
		ifTrue: [self yAxis: anAxis].
	self addMorph: anAxis
