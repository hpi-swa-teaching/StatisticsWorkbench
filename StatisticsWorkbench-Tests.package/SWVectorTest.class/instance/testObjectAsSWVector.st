testing
testObjectAsSWVector

	self assert: ((0 @ 0) asSWVector) = (SWVector create: #(0 0)).
	self assert: ((5 @ 1) asSWVector) = (SWVector create: #(5 1)).
	self assert: (#(0 0) asSWVector) = (SWVector create: #(0 0)).
	self assert: (#(5 1) asSWVector) = (SWVector create: #(5 1))
