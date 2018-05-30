accessing
calculateMinMaxOrMedian: aOperation

	aOperation = #minimum
		ifTrue: [^ self chosenDataset min: #x].
	aOperation = #maximum
		ifTrue: [^ self chosenDataset max: #x].
	aOperation = #median
		ifTrue: [^ self chosenDataset median: #x].