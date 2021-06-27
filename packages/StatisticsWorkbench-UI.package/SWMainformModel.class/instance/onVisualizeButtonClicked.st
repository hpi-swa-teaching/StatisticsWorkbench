event-handling
onVisualizeButtonClicked

	self dataIsCategorized
		ifTrue: [self visualizeSingleChart]
		ifFalse: [self visualizeMultipleCharts]