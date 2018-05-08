as yet unclassified
getMaxExtent
	"| maxX maxY |

	maxX := 0.
	maxY := 0.
	aPieChart submorphsDo: [:chart | (chart bottomRight x > maxX) ifTrue: [maxX := chart bottomRight x].  
										(chart bottomRight y > maxY) ifTrue: [maxY := chart bottomRight y]].
	^ maxX@maxY"
	^ self extent + ((self width / 2) @ 0) + self pieKey extent
	