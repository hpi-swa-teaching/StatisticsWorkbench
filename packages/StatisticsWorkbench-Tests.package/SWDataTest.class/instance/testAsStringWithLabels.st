testing
testAsStringWithLabels

	| comparisonData |
	
	comparisonData := self class createSeeded4.

	self assert: (comparisonData asString = 'Time|Value
one|0|1
two|1|1
three|2|3
four|3|1
')