accessing
maxBarWidth
	| maxSizeFactor differenceCollection calculatetMaxBarWidth first |
	
	maxSizeFactor := 0.9.
	differenceCollection := (self data allDifferences: #x) reject: [:each | each = 0].
	calculatetMaxBarWidth := (self coordinateSystem xAxis normedMarkerLength) * (differenceCollection min) * maxSizeFactor.
	first := (self coordinateSystem xAxis normedMarkerLength) * (self data first x) * 2 * maxSizeFactor.
	
	^ (calculatetMaxBarWidth asOrderedCollection, first asOrderedCollection) min