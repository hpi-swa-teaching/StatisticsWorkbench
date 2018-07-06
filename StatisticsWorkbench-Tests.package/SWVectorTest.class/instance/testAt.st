testing
testAt
	
	self assert: (self vector3 first) = 1.
	self assert: (self vector3 second) = 1.
	self assert: (self vector4 second) = 2.
	self assert: (self vector4 third) = 3