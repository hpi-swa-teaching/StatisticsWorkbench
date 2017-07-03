as yet unclassified
testCollectionsGetInitialized 

	| funcGraph |
	funcGraph := SWFunctionGraph new.
	
	self assert: [ funcGraph vertices notNil and: [ funcGraph vertices size = 0 ] ]