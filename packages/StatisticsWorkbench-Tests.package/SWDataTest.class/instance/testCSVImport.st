testing
testCSVImport

	| seededData csvString csvStream labeledData lines |
	
	seededData := self class createSeeded4.
	lines :={
		'X,Y,Labels' .
		'0,1,one' .
		'1,1,two' .
		'2,3,three' .
		'3,1,four'
	}.
	csvString := lines inject: '' into: [:agg :current | agg, current, String cr].
	csvStream := ReadStream on: csvString from: 1 to: csvString size.
	
	labeledData := SWDataLabeled fromCSVStream: csvStream.
	labeledData setAllDimensionNames: #('Time' 'Value').
	
	self assert: labeledData equals: seededData.
