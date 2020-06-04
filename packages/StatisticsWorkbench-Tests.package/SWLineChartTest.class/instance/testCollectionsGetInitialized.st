testing
testCollectionsGetInitialized 

	self assert: (self lineChart vertices notNil and: [self lineChart vertices size = self data size])