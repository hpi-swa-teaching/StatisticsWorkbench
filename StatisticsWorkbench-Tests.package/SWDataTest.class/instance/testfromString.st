tests
testfromString
	
	|ownData|
	ownData := SWDataTest createSeeded3.

	"self assert: (ownData  = (SWData fromString: 'Time|Value
0|1 
1|1 
1|3 
3|0 
'))."