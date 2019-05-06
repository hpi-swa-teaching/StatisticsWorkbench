calculation
analyseDatasetWith: aFunction

	(self datasets isEmpty)
		ifTrue: [SWInvalidArgumentError signal: 'Dataset must be created.'].
	
	(self chosenDimension isNil)
		ifTrue: [SWInvalidDimensionError signal: 'Dimension must be selected.'].
	
	^ self chosenDataset perform: aFunction with: self chosenDimension