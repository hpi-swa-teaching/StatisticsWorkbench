testing
testAddMany
	| collectionToAdd |
	
	collectionToAdd := OrderedCollection new.
	collectionToAdd add: (SWVector fromArray: #(5 5)).
	collectionToAdd add: #(15 20).
	collectionToAdd add: 20@35.
	self data addMany: collectionToAdd.
	
	self assert: self data size = (self originalDataSize + 3)