testing
testCollectionsGetInitialized 

	| diagram |
	diagram := SWDiagram new.
	
	self assert: [ diagram charts notNil and: [ diagram charts size = 0 ]]