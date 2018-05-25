tests
testDataToString
	
	|ownData|
	ownData := SWDataTest createSeeded3.
	ownData dimensionNames: #('Time' 'Value').

	self assert: (ownData dataToString = 'Time Value
0 1 
1 1 
1 3 
3 0 
')