as yet unclassified
testFromPoint

	self assert: [ (SWVector fromPoint: 0@0) = (SWVector create: #(0 0)) ].
	self assert: [ (SWVector fromPoint: 5@1) = (SWVector create: #(5 1)) ]