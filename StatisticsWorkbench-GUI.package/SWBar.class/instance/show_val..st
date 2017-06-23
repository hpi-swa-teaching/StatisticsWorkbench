as yet unclassified
show_val: bool
	show_val := bool.
	show_val ifFalse: [textmorph contents: ''] ifTrue: [textmorph contents: (self value asString)].
	