calculation
checkIfADatasetExists

	(self datasets isEmpty)
		ifTrue: [SWInvalidArgumentError signal: 'Dataset must be created.']