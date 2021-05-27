instance creation
fromNamedColumns: aDictionary xAxis: aString yAxis: anotherString categorizedBy: anotherString2

	|curSWData swdataCollection categories indizes xValues yValues workingCopy|
	
	(aDictionary keys contains: [:each| each = anotherString2]) ifFalse: [SWInvalidArgumentError signal: 'Wrong category-column-name'].
	
	categories := (aDictionary at: anotherString2) withoutDuplicates.
	swdataCollection := OrderedCollection new.
	categories do:[:category|

		workingCopy := aDictionary deepCopy.
		indizes := self indizesOf: category in: (aDictionary at: anotherString2).
	
		workingCopy valuesDo: [:columnValues | columnValues setContents: (self getValues: (columnValues) of: indizes)].
	
		xValues := (workingCopy at: aString) collect: [:each| each asInteger].
		yValues := (workingCopy at: anotherString) collect: [:each| each asInteger].	
			
		curSWData :=  self fromXValues: xValues versusYValues: yValues.
		
		curSWData dataName: category.
		
		curSWData setAllDimensionNames: {aString value. anotherString value}.
		
		swdataCollection add: curSWData.
	].
	
	^ swdataCollection.
	"^ self fromNamedColumns: aDictionary xValues: aString yValues: anotherString."

	"| xValues yValues |

	xValues := (aDictionary at: aDictionary keys first) collect: [:each | each asInteger].
	yValues := (aDictionary at: aDictionary keys second) collect: [:each | each asInteger].
		
	^ self fromXValues: xValues versusYValues: yValues withLabels: (aDictionary at: #Labels)"
 "Period or right bracket expected ->"