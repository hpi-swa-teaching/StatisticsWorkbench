instance creation
fromDataPointCollections: aSequencableCollection

	"Data format of each subcollection should be { xValue . yValue . label}"
	
	| xValues yValues labels |
	
	xValues := aSequencableCollection collect: [:each | each first].
	yValues := aSequencableCollection collect: [:each | each second].
	labels := aSequencableCollection collect: [:each | each third].
	
	^ self fromXValues: xValues versusYValues: yValues withLabels: labels
