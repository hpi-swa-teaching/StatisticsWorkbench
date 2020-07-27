instance creation
fromDataPointCollections: aSequencableCollection

	"Data format of each subcollection should be { xValue . yValue . label}"
	^ self fromXValues: (aSequencableCollection collect: [:each | each first]) versusYValues: (aSequencableCollection collect: [:each | each second]) withLabels: (aSequencableCollection collect: [:each | each at: 3])
