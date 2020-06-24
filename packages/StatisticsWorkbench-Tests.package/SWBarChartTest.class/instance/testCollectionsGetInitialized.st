testing
testCollectionsGetInitialized

	self assert: (self barChart bars notNil and: [self barChart bars size = 4])