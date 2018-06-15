accessing
y

	(self asPoint y isNumber) 
		ifTrue: [^ self asPoint y] 
		ifFalse: [^ self asPoint y asString]