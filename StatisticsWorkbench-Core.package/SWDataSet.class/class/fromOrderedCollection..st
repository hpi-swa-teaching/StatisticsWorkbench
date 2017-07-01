as yet unclassified
fromOrderedCollection: anOrderedCollection

	|dictionary i|
	
	dictionary := OrderedDictionary new.
	i := 1.
	anOrderedCollection size timesRepeat: [
		dictionary at: i put: (anOrderedCollection at: i).
		i := i + 1.].
	^dictionary