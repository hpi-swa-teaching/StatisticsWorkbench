testing
testFromStringWithLabels
	| seededData labeledData |
	
	seededData := SWDataTest createSeeded4.
	labeledData := SWDataLabeled fromString: 'Time|Value one|0|1  two|1|1  three|2|3  four|3|1' ofDataDimension: 2.
	"Characters don't need to be retested because we use the same method as in testFromString"

	self assert: seededData = labeledData