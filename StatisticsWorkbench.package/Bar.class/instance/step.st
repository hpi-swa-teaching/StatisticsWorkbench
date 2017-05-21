as yet unclassified
step
	self show_val ifFalse: [textmorph contents: ''] ifTrue: [textmorph contents: (self height asString)].