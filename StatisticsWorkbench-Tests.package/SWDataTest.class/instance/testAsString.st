testing
testAsString
	| ownData |
	
	ownData := SWDataTest createSeeded3.

	self assert: (ownData asString = 'Time|Value
0|1
1|1
2|3
3|1
')