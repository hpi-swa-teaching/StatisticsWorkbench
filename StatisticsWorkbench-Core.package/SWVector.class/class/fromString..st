as yet unclassified
fromString: aString
"Currently only for test purposes"

	|collection1 collection2|
	collection1 := aString splitBy: #($|).
	collection2 := OrderedCollection new.
	collection1 do: [:each|
		collection2 add: (each asNumber)].
	
	^ SWVector fromArray: collection2 asArray