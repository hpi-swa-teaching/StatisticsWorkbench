testing
testAt
	
	self assert: (self vector3 at: 1) = 1.
	self assert: (self vector3 at: 2) = 1.
	self assert: (self vector4 at: 2) = 2.
	self assert: (self vector4 at: 3) = 3