as yet unclassified
updateVisualization
	| newDataPoints printPosition |
	
	newDataPoints := Bag new.
	self dataPoints do: [:dataPoint | 
		printPosition := self coordinateSystem positionFor: (dataPoint realX @ dataPoint realY).
		dataPoint printedX: printPosition x;
						printedY: printPosition y;
						position: 
										(dataPoint  printedX - (dataPoint width * 0.5)) @ (dataPoint printedY - 										(dataPoint height * 0.5)).
		newDataPoints add: (dataPoint printedX @ dataPoint printedY)].
	
	newDataPoints := newDataPoints sorted: [:a :b | a x <= b x].
	
	self connected ifTrue: [
		self setVertices: newDataPoints.
	]
	ifFalse:[
		self setVertices: {0 @ 0}.
	].