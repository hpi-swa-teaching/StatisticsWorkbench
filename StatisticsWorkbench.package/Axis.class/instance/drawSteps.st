as yet unclassified
drawSteps
	|i x y|
	x := self position x.
	y := self position y.
	i := 0.
	self length / self stepInterval timesRepeat: [
			self addMorph: (PolygonMorph 	vertices: {((x + i) @ (y + 10)).((x + i )@ (y - 1))} 
											color: self class defaultColor  
											borderWidth: 1 
											borderColor: self class defaultColor).
			i := i+self stepInterval.
		]