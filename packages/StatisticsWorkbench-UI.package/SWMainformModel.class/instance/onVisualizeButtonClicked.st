event-handling
onVisualizeButtonClicked

	self categoryColumn isNil
		ifTrue: [self visualizeSingleChart]
		ifFalse: [self visualizeMultipleCharts]