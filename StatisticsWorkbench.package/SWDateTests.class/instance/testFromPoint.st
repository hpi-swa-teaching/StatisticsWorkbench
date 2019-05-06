as yet unclassified
testFromPoint 
	
	| date1 date2 |
	date1 := SWDate fromPoint: (Point x: 1 y: 2).
	date2 := SWDate fromPoint: (Point x: 5 y: 5).
	
	self assert: [ date1 key = (SWVector create: #(1 2)) ].
	self assert: [ date2 key = (SWVector create: #(5 5)) ]