testing
testBarWidth

	self barGraph barWidth: 40.
	self assert: (barGraph barWidth = 40)