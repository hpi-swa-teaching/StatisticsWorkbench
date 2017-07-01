as yet unclassified
testAddAndRemoveItems
	| dataset |
	dataset := SWDataSet new.
	
	dataset at: 1 put: 'First Item'.
	dataset at: 2 put: 'Second Item'.
	dataset at: 'Third Item.' put: 3.
	
	self assert: (dataset at: 1) = 'First Item'.
	self assert: (dataset at: 2) = 'Second Item'.
	self assert: (dataset at: 'Third Item.') = 3.