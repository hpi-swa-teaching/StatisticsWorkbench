as yet unclassified
partOf: aDictionary with: anElement at: aKey

	| indizes |
	
	indizes := self indizesOf: anElement in: (aDictionary at: aKey).
	^ self filterAllValuesOf: aDictionary by: indizes.