as yet unclassified
updateVertices
	
	| newDataPoints |
	
	newDataPoints := Bag new.
	
	self dataPoints do: [:dataPoint | 
		newDataPoints add: (dataPoint printedX @ dataPoint printedY)].
	
	newDataPoints := newDataPoints sorted: [:a :b | a x <= b x].
	
	self setVertices: newDataPoints.