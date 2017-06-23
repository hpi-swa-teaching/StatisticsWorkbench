nil
update
 |xpos yPos |
	self flag: #fishy.
	self barWidth: (self coordinateSystem xAxis length/ self dataset size)/2.
	self submorphsDo: [:s| s delete].
	self drawChart.
	yPos := (self coordinateSystem positionFor: 0@0) y.
	self dataset keysDo: [:xData| 
		xpos := (self coordinateSystem positionFor: xData@0) x.
		self addBar: 
			(SWBar createBarWithWidth: self barWidth 
					pos: (xpos - self barWidth)@yPos
					value: (self dataset at: xData)  
					color: Color red 
					bottom: yPos
					height: yPos - (self coordinateSystem positionFor: (0@ (self dataset at: xData))) y )].
	