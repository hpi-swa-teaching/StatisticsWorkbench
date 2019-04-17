accessing
setLabels: aCollection
	
	(aCollection size <= self size)
		ifFalse: [SWInvalidDimensionError signal: 'Collection of labels is larger than dataset.'].
	aCollection withIndexDo: [:label :index | (self at: index) labelName: label]