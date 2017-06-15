as yet unclassified
testDependentsAreNotifiedAboutChanges
	| dataset |
	dataset := SWDataSet new.
	
	updated := false.
	dataset at: 1 put: 'How'.
	self assert: [ ^ updated = true ]. 
	
	dataset at: 2 put: 'are'.
	dataset at: 3 put: 'you?'.
	updated := false.
	
	dataset removeAll.
	self assert: [ ^ updated = true ].
	
	updated := false.
	dataset data: Dictionary new.
	self assert: [ ^ updated = true ].
	