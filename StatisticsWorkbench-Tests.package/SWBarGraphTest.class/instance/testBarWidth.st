testing
testBarWidth

	"Uncomment when comparison to nil is possible"
	"self assert: (barGraph barWidth isNil)."
	self barGraph barWidth: 40.
	self assert: (barGraph barWidth = 40).