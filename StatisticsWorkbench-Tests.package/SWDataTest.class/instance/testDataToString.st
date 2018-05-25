tests
testDataToString
	
	|ownData|
	ownData := SWDataTest createSeeded3.

	self assert: (ownData dataToString = 'Time|Value
0|1
1|1
1|3
3|0
')