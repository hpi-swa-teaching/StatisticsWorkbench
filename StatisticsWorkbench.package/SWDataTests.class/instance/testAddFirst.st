as yet unclassified
testAddFirst

	| data |
	data := SWData new.
	data add: (SWDate fromArray: #(0 0)).
	
	self assert: [ data first key data = #(0 0) ] 