testing
testCollectionsGetInitialized

	self assert: (self barGraph bars notNil and: [self barGraph bars size = 4])