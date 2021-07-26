testing
testHash
	| identicalVector1 identicalVector2 |
	
	identicalVector1 := SWVector create: #(0).
	identicalVector2 := SWVector create: #(0).
	identicalVector1 labelName: 'testingHashing'.
	identicalVector2 labelName: 'testingHashing'.
	
	self assert: identicalVector1 hash equals: identicalVector2 hash.
	"self deny: self vector1 hash equals: self vector2 hash"