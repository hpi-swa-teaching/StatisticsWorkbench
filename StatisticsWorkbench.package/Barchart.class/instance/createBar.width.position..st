as yet unclassified
createBar: aValue width: wid position: pos
	|bar|
	bar:= Bar new.
	bar update: pos value: aValue width: wid color: Color red.
	self addMorph: bar.