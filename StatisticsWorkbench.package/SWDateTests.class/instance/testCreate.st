as yet unclassified
testCreate

	self assert: [ (SWDate fromArray: #(0 0)) notNil ].
	self assert: [ (SWDate fromArray: #(0 0 0)) notNil ].
	self assert: [ (SWDate fromArray: #(1 2 3 4 5)) notNil ]