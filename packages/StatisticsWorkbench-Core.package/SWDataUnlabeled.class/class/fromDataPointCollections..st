instance creation
fromDataPointCollections: aSequencableCollection

	^ self processDatafromXValues: (aSequencableCollection collect: [:each | each first]) versusYValues: (aSequencableCollection collect: [:each | each second])
