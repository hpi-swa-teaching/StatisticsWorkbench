tests
testAddFirst

	| data |
	data := SWData new.
	data add: #(0 0).
	
	self assert: [ data first key data = #(0 0) ] 