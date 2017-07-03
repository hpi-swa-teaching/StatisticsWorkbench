as yet unclassified
testRemoveAll

	| funcGraph |
	funcGraph := SWFunctionGraph new.
	funcGraph data: SWData createSeeded.
	
	funcGraph removeAll. 
	self assert: [ funcGraph dataPoints size = 0 ]