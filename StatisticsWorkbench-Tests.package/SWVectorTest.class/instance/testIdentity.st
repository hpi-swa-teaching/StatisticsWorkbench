testing
testIdentity
	
	self deny: self vector1 == self vector2.
	self deny: self vector1 == self vector3.
	self deny: self vector2 == self vector3.
	self deny: self vector1 == self vector4.
	
	self assert: self vector1 == self vector1.
	self assert: self vector2 == self vector2.
	self assert: self vector3 == self vector3