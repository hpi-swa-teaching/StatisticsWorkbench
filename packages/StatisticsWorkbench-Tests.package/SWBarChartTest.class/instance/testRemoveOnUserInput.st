testing
testRemoveOnUserInput

	| size selectedDataPoint |
	size := self barChart bars size.
	self assert: (self barChart data contains: [:data | data x = 3 and: data y = 0 ]) .
	selectedDataPoint := self barChart bars detect: [:dataPoint | dataPoint vector x = 3 and: dataPoint vector y = 0 ].
	hand handleEvent: (self redMouseDownAt: (selectedDataPoint)).
	self deny: (self barChart data contains: [:data | data x = 3 and: data y = 0 ]).
	self assert: self barChart bars size = (size - 1) 