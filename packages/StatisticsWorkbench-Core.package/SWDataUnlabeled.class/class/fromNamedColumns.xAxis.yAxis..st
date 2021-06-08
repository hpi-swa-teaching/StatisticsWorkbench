instance creation
fromNamedColumns: aDictionary xAxis: aString yAxis: anotherString
 
	| xValues yValues data |

	xValues := (aDictionary at: aString) collect: [:each | each asInteger].
	yValues := (aDictionary at: anotherString) collect: [:each | each asInteger].
		
	data :=  self fromXValues: xValues versusYValues: yValues.

	data enrichWith: aDictionary.
	
	data setAllDimensionNames: {aString value. anotherString value}.
	^data
