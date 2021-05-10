instance creation
fromNamedColumns: aDictionary

	^ self fromNamedColumns: aDictionary xValues: aDictionary keys first yValues: aDictionary keys first.


	"| xValues yValues |
	
	xValues := (aDictionary at: aDictionary keys first) collect: [:each | each asInteger].
	yValues := (aDictionary  at: aDictionary keys second) collect: [:each | each asInteger].
	
	^ self fromXValues: xValues versusYValues: yValues"
