testing
testMode

	self assert: #(1) equals: (self data mode: 1).
	self assert: #(1) equals: (self data mode: 2).
	self data removeArray: #(1 1).
	self assert: #noMode equals: (self data mode: 1)