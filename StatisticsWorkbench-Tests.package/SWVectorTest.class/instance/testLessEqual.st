testing
testLessEqual
	
	self deny: self vector2 <= self vector1.
	self deny: self vector3 <= self vector1.
	self deny: self vector3 <= self vector2.
	
	self assert: self vector1 <= self vector1.
	self assert: self vector1 <= self vector3.
	self assert: self vector2 <= self vector3.
	self assert: self vector1 <= self vector2
