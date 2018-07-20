testing
testCountingSort
	| expectedResult |
	
	expectedResult := Dictionary new.
	expectedResult at: 0 put: 1.
	expectedResult at: 1 put: 2.
	expectedResult at: 3 put: 1.
	
	self assert: (self data countingSort: 2) = expectedResult