as yet unclassified
testInitialize

	| functionGraph |
	functionGraph := SWLineChart new.
	
	self assert: [ functionGraph lineMorph notNil ] 