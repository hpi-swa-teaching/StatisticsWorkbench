enumerating
rowsDo: aBlock
	[stream atEnd] 
		whileFalse:
			[ | row |
			row := self nextRow.
			row isEmpty ifFalse: [aBlock value: row]]