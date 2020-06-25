testing
testMinDerivation

	self data removeArray: #(1 1).
	self assert: (-3 / 2) equals: (self data minDerivation: 2)
