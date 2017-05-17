as yet unclassified
drawLabels

	|i t x y|
	x := self position x.
	y := self position y.
	i := 0.
	self length / self labelInterval  timesRepeat: [
			t := TextMorph new contents: i asCharacter.
			t position: ((x + i)@( y + 10)).
			i := i + self labelInterval.
			self addMorph: t].