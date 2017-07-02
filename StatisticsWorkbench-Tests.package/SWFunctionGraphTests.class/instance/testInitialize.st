as yet unclassified
testInitialize

	| functionGraph |
	functionGraph := SWFunctionGraph new.
	
	self assert: [ functionGraph lineMorph notNil ] 