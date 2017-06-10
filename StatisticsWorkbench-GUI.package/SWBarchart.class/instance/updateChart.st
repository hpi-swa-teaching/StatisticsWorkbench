nil
updateChart
 |xpos yPos |
	self submorphsDo: [:s| s delete].
	self drawChart.
	yPos := (self coordinateSystem positionFor: (0@0)) y.
	self dataset keysDo: [:xData| 
		xpos := (self coordinateSystem positionFor: (xData@0)) x.
		self addMorph: (SWBar createBarWithWidth: self barWidth 
		pos: (xpos - (self barWidth /2))@yPos
		value: (self dataset at: xData)  
		color: Color red 
		bottom: yPos
		height: yPos - (self coordinateSystem positionFor: (0@ (self dataset at: xData))) y )].
	