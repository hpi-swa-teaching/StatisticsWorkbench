as yet unclassified
testVerticesComparator

	| before expected |
	before := OrderedCollection new add: 0@0; add: 5@0; add: 2@0; add: 4@0; add: 3@0; add: 1@0; yourself.
	expected := OrderedCollection new add: 0@0; add: 1@0; add: 2@0; add: 3@0; add: 4@0; add: 5@0; yourself.
	
	before sort: SWFunctionGraph new verticesComparator.
	
	self assert: [ before = expected ]