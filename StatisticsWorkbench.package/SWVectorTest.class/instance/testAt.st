testing
testAt
	
	self assert: 1 equals: (self vector3 first).
	self assert: 1 equals: (self vector3 second).
	self assert: 2 equals: (self vector4 second).
	self assert: 3 equals: (self vector4 third)