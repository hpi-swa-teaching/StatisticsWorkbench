instance creation
fromDataPointCollections: aSequencableCollection

	"Data format of each subcollection should be { xValue . yValue . label}"
	^ self fromXValues: (aSequencableCollection collect: [:each | each at: 1]) versusYValues: (aSequencableCollection collect: [:each | each at: 2]) withLabels: (aSequencableCollection collect: [:each | each at: 3])
