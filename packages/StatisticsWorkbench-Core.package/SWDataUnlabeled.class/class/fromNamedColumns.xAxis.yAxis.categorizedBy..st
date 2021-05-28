instance creation
fromNamedColumns: aDictionary xAxis: aString yAxis: anotherString categorizedBy: anotherString2

	|curSWData categories|
	
	(aDictionary keys contains: [:each| each = anotherString2]) ifFalse: [SWInvalidArgumentError signal: 'Wrong category-column-name'].

	categories := self split: aDictionary by: anotherString2.
	
	^ categories associations collect: [:dataPart| 
		curSWData := self fromNamedColumns: dataPart value xAxis: aString yAxis: anotherString. 
		curSWData dataName: dataPart key.
	].