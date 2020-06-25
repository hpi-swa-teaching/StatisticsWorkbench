testing
testIdentity
	
	self deny: self vector1 == self vector2.
	self deny: self vector1 == self vector3.
	self deny: self vector2 == self vector3.
	self deny: self vector1 == self vector4.
	
	self assert: self vector1 identical: self vector1.
	self assert: self vector2 identical: self vector2.
	self assert: self vector3 identical: self vector3
