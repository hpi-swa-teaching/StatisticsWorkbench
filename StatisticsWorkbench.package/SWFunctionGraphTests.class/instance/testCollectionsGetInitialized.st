as yet unclassified
testCollectionsGetInitialized 

	| funcGraph |
	funcGraph := SWLineChart new.
	
	self assert: [ funcGraph vertices notNil and: [ funcGraph vertices size = 0 ] ]