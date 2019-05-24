testing
testEqual
	
	self deny: self vector1 = self vector2.
	self deny: self vector1 = self vector3.
	self deny: self vector2 = self vector3.
	
	self assert: self vector1 equals: self vector1.
	self assert: self vector2 equals: self vector2.
	self assert: self vector3 equals: self vector3.
	
	self assert: self vector1 ~= self vector4