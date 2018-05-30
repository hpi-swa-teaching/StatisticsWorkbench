calculation
calculateMinMaxOrMedian: anOperation

	(anOperation = #minimum)
		ifTrue: [^ self chosenDataset min: #x].
	(anOperation = #maximum)
		ifTrue: [^ self chosenDataset max: #x].
	(anOperation = #median)
		ifTrue: [^ self chosenDataset median: #x]