as yet unclassified
addBar: aWidth position: aPosition value: aValue
	|a|
	a := SWBar new.
	a update: aPosition value: aValue width: aWidth color: Color red.
	self addMorph: a.
	
	