as yet unclassified
testObserverNotification

	|mainformModel|
	
	mainformModel := SWMainformModelTest createSWMainformModel.
	
	mainformModel addDependent: self.
	
	mainformModel chart: 1 setSelected: true.
	
	self assert:[ self notified].	
