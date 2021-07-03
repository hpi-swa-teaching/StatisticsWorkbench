testing
testCSVImportWithCustomDimensionNamesWithoutLabels

	| seededData csvString csvStream unlabeledData lines |
	
	seededData := SWDataStub createSeeded3.
	lines :={
		'Time;Value' .
		'0;1' .
		'1;1' .
		'2;3' .
		'3;1'
	}.
	csvString := lines inject: '' into: [:agg :current | agg, current, String cr].
	csvStream := ReadStream on: csvString from: 1 to: csvString size.
	
	unlabeledData := SWDataUnlabeled fromCSVStream: csvStream delimeter: $; escapeWith: $' xAxis: 'Time' yAxis: 'Value'.
	
	self assert: unlabeledData dimensionNames equals: seededData dimensionNames.