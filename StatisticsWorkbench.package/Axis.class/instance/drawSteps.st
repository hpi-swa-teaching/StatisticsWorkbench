as yet unclassified
drawSteps
	|i x y|
	x := self position x.
	y := self position y.
	i := self min.
	self orientation = #horizontal ifTrue: [
	self length / self stepInterval timesRepeat: [
			self addMorph: (PolygonMorph 	vertices: {((x + i) @ (y + 10)).((x + i )@ (y - 1))} 
											color: self class defaultColor  
											borderWidth: 1 
											borderColor: self class defaultColor).
			i := i+self stepInterval.
		]
	]
ifFalse: [
	self length / self stepInterval timesRepeat: [
			self addMorph: (PolygonMorph 	vertices: {((x +10) @ (y - i + self length)).((x -1 )@ (y - i + self length))} 
											color: self class defaultColor  
											borderWidth: 1 
											borderColor: self class defaultColor).
			i := i+self stepInterval.
		]].