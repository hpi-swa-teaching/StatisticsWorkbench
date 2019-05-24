testing
testObjectAsSWVector

	self assert: (SWVector create: #(0 0)) equals: ((0 @ 0) asSWVector).
	self assert: (SWVector create: #(5 1)) equals: ((5 @ 1) asSWVector).
	self assert: (SWVector create: #(0 0)) equals: (#(0 0) asSWVector).
	self assert: (SWVector create: #(5 1)) equals: (#(5 1) asSWVector)
