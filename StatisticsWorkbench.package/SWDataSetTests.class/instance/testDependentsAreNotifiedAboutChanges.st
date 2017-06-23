as yet unclassified
testDependentsAreNotifiedAboutChanges
	| dataset |
	dataset := SWDataSet new.
	dataset addDependent: self.
	
	updated := false.
	dataset at: 1 put: 'How'.
	self assert: updated.
	
	dataset at: 2 put: 'are'.
	dataset at: 3 put: 'you?'.
	updated := false.
	
	dataset removeAll.
	self assert: updated.
	
	updated := false.
	dataset data: Dictionary new.
	self assert: updated.
	