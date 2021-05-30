testing
testXYPopupOnHover

	| selectedDataPoint submorphsBefore submorphsAfter |
	self diagram openInWorld: self world.
	selectedDataPoint := self scatterPlot dataPoints detect: [:dataPoint | dataPoint vector x = 3 and: dataPoint vector y = 0 ].
	submorphsBefore := selectedDataPoint submorphs size.
	self hand handleEvent: (self mouseEnter: selectedDataPoint center).
	submorphsAfter := selectedDataPoint submorphs size.
	self assert: selectedDataPoint infoPopup notNil.
	selectedDataPoint infoPopup delete
	