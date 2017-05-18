as yet unclassified
drawLabels

	|i t x y|
	x := self position x.
	y := self position y.
	i := 0.
	
	self orientation = #horizontal ifTrue: [
	(self length / self labelInterval) ceiling timesRepeat: [
			t := TextMorph new contents: ((i + self min) printString).
			t position: ((x + i)@( y + 10)).
			i := i + self labelInterval.
			self addMorph: t].
		]
	ifFalse: [(self length / self labelInterval) ceiling  timesRepeat: [
			t := TextMorph new contents: ((i + self min) printString).
			t position: ((x - 30)@( y + (self length - i) - 10)).
			i := i + self labelInterval.
			self addMorph: t].]