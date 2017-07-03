as yet unclassified
testAddFirst

	| data |
	data := SWData new.
	data add: (SWDate create: #(0 0)).
	
	self assert: [ data first key = #(0 0) ] 