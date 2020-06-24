testing
testCSVImport

	| seededData labeledData fileName fileStream lines |
	
	seededData := SWDataTest createSeeded4.
	fileName :=  'sampleDataForCSVImport.csv'.
	fileStream := FileStream newFileNamed: fileName.
	lines :={
		'X,Y,Labels' .
		'0,1,one' .
		'1,1,two' .
		'2,3,three' .
		'3,1,four'
	}.
	lines do: [:line | fileStream nextPutAll: line; cr].
	fileStream close.
	
	labeledData := SWDataLabeled fromCSVFileNamed: fileName.
	labeledData setAllDimensionNames: #('Time' 'Value').
	
	self assert: labeledData equals: seededData.
	
	"FileSystem disk delete: fileName."
