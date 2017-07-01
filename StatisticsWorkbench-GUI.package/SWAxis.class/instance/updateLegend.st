as yet unclassified
updateLegend
	self legend notNil ifTrue: [	self legend position: self endPoint.
								self legend right: self endPoint x]