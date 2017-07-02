as yet unclassified
testIdentity

	| date1 date2 date3 |
	date1 := SWDate create: #(0 0).
	date2 := SWDate create: #(1 1).
	date3 := SWDate create: #(0 0).
	
	self assert: [ date1 == date1 ].
	self assert: [ (date1 == date2) not ].
	self assert: [ date1 ~~ date2 ].
	self assert: [ (date1 == date3) not ]