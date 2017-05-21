as yet unclassified
drawLabels

	|i t x y|
	x := self position x.
	y := self position y.
	i := 0.
	
	(self length / self labelInterval) ceiling timesRepeat: [
		t := TextMorph new contents: ((i + self min) printString).
		self orientation = #horizontal
			ifTrue: [ t position: ((x+i)@(y+10)) ] 
			ifFalse: [ t position: ((x-30)@(y+(self length - i) - 10)) ].
		i := i + self labelInterval.
		self addMorph: t.	
		].