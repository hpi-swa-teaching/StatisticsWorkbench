testing
testBarWidth

	self barChart barWidth: 40.
	self assert: (self barChart barWidth = 40)