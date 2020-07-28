instance creation
fromDataPointCollections: aSequencableCollection

	^ self processDatafromXValues: (aSequencableCollection collect: [:each | each at: 1]) versusYValues: (aSequencableCollection collect: [:each | each at: 2])
