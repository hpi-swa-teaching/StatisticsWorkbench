as yet unclassified
fromNamedColumns: aDictionary xAxis: aString yAxis: anotherString
 
	| xValues yValues data |
	
	self halt.

	xValues := (aDictionary at: aString) collect: [:each | each asInteger].
	yValues := (aDictionary at: anotherString) collect: [:each | each asInteger].
		
	data :=  self fromXValues: xValues versusYValues: yValues.
	data setAllDimensionNames: {aString value. anotherString value}.
	^data
