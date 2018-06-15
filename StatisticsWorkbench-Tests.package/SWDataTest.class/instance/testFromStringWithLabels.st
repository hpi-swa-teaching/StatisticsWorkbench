testing
testFromStringWithLabels
	| seededData labeledData |
	
	seededData := SWDataTest createSeeded4.
	labeledData := SWData fromStringWithLabels: 'Time|Value one|0|1  two|1|1  three|2|3  four|3|1' ofDataDimension: 2.

	self assert: seededData = labeledData