helper
createSeededNamedColumns1

	| tempData |
	
	"Don't change! Multiple unit tests relying on that data."  
	
	tempData := Dictionary new.
	
	tempData at: 'Column1' put: {1 . 2 . 3 . 4 . 5} asOrderedCollection.
	tempData at: 'Column2' put: {1 . 8 . 7 . 6 . 9} asOrderedCollection.
	tempData at: 'Category' put: {'A' . 'B' . 'A' . 'B' . 'A'} asOrderedCollection.
	
	
	 ^ tempData
