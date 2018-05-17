tests
testMinDerivation
	self data removeArray: #(1 1).
	self assert: (self data minDerivation: 2) = (-3/2).