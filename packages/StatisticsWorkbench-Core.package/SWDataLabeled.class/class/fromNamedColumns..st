instance creation
fromNamedColumns: aDictionary

	| xValues yValues |
	
	xValues := (aDictionary at: #X) collect: [:each | each asInteger].
	yValues := (aDictionary at: #Y) collect: [:each | each asInteger].
	
	^ self fromXValues: xValues versusYValues: yValues withLabels: (aDictionary at: #Labels)
