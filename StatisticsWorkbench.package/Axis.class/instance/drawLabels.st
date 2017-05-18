as yet unclassified
drawLabels

	|i t x y|
	x := self position x.
	y := self position y.
	i := self min.
	
	self orientation = #horizontal ifTrue: [
	self length / self labelInterval  timesRepeat: [
			t := TextMorph new contents: (i printString).
			t position: ((x + i)@( y + 10)).
			i := i + self labelInterval.
			self addMorph: t].
		]
	ifFalse: [self length / self labelInterval  timesRepeat: [
			t := TextMorph new contents: i printString.
			t position: ((x - 20)@( y - i + self length)).
			i := i + self labelInterval.
			self addMorph: t].]