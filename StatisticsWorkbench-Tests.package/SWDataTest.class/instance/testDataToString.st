testing
testDataToString
	| ownData |
	
	self flag: #changeName. 
	ownData := SWDataTest createSeeded3.

	self assert: (ownData dataToString = 'Time|Value
0|1
1|1
2|3
3|1
')