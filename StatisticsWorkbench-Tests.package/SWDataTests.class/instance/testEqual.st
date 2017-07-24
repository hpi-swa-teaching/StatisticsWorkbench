as yet unclassified
testEqual

	| data1 data2 data3 |
	data1 := SWDataTests createSeeded.
	data2 := SWDataTests createSeeded2.
	data3 := SWDataTests createSeeded.
	
	self assert: [ data1 = data1 ].
	self assert: [ data2 = data2 ].
	self assert: [ data3 = data3 ].
	
	self assert: [ (data1 = data2) not ].
	self assert: [ data1 = data3 ]