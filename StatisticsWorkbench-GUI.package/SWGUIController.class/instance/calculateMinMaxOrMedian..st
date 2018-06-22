calculation
calculateMinMaxOrMedian: anOperation

	(anOperation = #minimum)
		ifTrue: [^ self chosenDataset minimum: #x].
	(anOperation = #maximum)
		ifTrue: [^ self chosenDataset maximum: #x].
	(anOperation = #median)
		ifTrue: [^ self chosenDataset median: #x]