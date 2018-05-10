tests
testMode
	self assert: (self data mode: 1) = #(1).
	self assert: (self data mode: 2) = #(1).
	self data removeArray: #(1 1).
	self assert: (self data mode: 1) = #noMode.