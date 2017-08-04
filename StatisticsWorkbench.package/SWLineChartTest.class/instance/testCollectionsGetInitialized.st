testing
testCollectionsGetInitialized 

	self assert: (self lineChart vertices notNil and: [ self lineChart vertices size = 4 ])