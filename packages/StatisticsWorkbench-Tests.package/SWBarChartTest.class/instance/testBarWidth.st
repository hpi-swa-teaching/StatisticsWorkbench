testing
testBarWidth

	self barChart barWidth: 40.
	self assert: (barChart barWidth = 40)