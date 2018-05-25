as yet unclassified
fromString: aString
"Currently only for test purposes"

	|collection1 collection2|
	collection1 := (aString collect: [:c | (c = $|)
		ifTrue: [Character space] ifFalse: [c]]) subStrings.
	collection2 := OrderedCollection new.
	collection1 do: [:each|
		collection2 add: (each asNumber)].
	
	^ SWVector fromArray: collection2