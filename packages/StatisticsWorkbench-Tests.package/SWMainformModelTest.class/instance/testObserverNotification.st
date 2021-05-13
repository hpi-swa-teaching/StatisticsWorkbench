as yet unclassified
testObserverNotification

	|mainformModel|
	
	mainformModel := SWMainformModelTest createSWMainformModel.
	
	mainformModel addDependent: self.
	
	mainformModel diagrams: 1 setSelected: true.
	
	self assert:[ self notified].	
