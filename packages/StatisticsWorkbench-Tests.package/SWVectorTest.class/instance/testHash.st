testing
testHash

	self assert: self vector2 hash equals: 206523279.
	self deny: self vector1 hash equals: self vector2 hash