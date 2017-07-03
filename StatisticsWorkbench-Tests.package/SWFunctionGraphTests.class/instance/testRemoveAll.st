as yet unclassified
testRemoveAll

	| funcGraph |
	funcGraph := SWFunctionGraph new.
	funcGraph dataset: SWData createSeeded.
	
	funcGraph removeAll. 
	self assert: [ funcGraph dataPoints size = 0 ]