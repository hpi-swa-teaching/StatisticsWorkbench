as yet unclassified
testRemoveAll

	| barGraph |
	barGraph := SWBarGraph new.
	barGraph data: SWDataTests createSeeded.
	barGraph removeAll.
	
	self assert: [ barGraph bars size = 0 ]
	
	