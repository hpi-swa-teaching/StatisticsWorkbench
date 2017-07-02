as yet unclassified
testFromCollection

	| collection data |
	collection := OrderedCollection with: 4 with: 3 with: 2 with: 1.
	
	data := SWData fromCollection: collection.
	
	self assert: [ false ] "ToDo: Check if collections are equal. "