as yet unclassified
createTestData1
	| dict |

	dict := Dictionary new.
	dict at: 0 put: 10.
	dict at: 50 put: 70.
	dict at: 30 put: 40.
	dict at: 70 put: 100.
	dict at: 90 put: 80.
	dict at: 100 put: 80.
	dict at: 120 put: 50.
	^ dict