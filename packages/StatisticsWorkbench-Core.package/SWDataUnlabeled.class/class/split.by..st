as yet unclassified
split: aDictionary by: aKey

	|categories dictionaryParts |
	
	categories := (aDictionary at: aKey) withoutDuplicates.
			
	dictionaryParts := categories collect:[:category|	
		category ->	 (self partOf: aDictionary with: category at: aKey).
	].

	^dictionaryParts asDictionary.
	
