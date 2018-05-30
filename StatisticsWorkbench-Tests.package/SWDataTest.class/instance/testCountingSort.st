testing
testCountingSort
	| dictionary |
	
	dictionary := Dictionary new.
	dictionary at: 0 put: 1.
	dictionary at: 1 put: 2.
	dictionary at: 3 put: 1.
	
	self assert: (self data countingSort: 2) = dictionary