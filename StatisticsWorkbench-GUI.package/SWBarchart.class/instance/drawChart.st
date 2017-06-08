as yet unclassified
drawChart
|system|
	system:= (SWCoordinateSystem createAt:  300@300 
	xMin: 0  
	xMax:  self valueCollection size 
	xStep:  1
	xLength: self valueCollection size * self barWidth
	yMin:  0
	
	yMax:  200
	yStep: 10
	yLength: 300
	).
	self addMorph: system;
	coordSystem: system.
	self bounds: coordSystem bounds.
	self position: coordSystem position .