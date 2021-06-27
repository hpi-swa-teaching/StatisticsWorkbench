testing
testRemoveOnlyOneBarOnUserInput

	| selectedDataPoint size |
	
	self diagram openInWorld: self world.
	size := self data size.
	selectedDataPoint := self barChart bars detect: [:dataPoint | dataPoint vector x = 1 and: dataPoint vector y = 3 ].
	self hand handleEvent: (self yellowMouseDownAt: (selectedDataPoint center)).
	self assert: size = (self data size + 1)