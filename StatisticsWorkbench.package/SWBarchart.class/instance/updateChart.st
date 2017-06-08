nil
updateChart
 |xpos yPos i |
	self submorphsDo: [:s| s delete].
	self drawChart.
	i := 1.
	yPos := (self coordSystem getPositionForValueX: 0 y: 0) y.
	self valueCollection do: [:element| 
		xpos := (self coordSystem getPositionForValueX: i y: 0) x.
		self addMorph: (SWBar createBarWithWidth: self barWidth 
		pos: (xpos - (self barWidth /2))@yPos
		value: element  
		color: Color red 
		bottom: yPos
		height: yPos - (self coordSystem getPositionForValueX: 0 y: element) y ). 
		i := i+1].
	