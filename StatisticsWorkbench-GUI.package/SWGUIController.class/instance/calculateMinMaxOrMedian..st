accessing
calculateMinMaxOrMedian: aOperation

	aOperation = #minimum
		ifTrue: [^ (self datasets at: (self choosenDataset)) min: #x].
	aOperation = #maximum
		ifTrue: [^ (self datasets at: (self choosenDataset)) max: #x].
	aOperation = #median
		ifTrue: [^ (self datasets at: (self choosenDataset)) median: #x].