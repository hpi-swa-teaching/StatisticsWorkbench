accessing
maxBarWidth
	| maxSizeFactor differenceCollection |
	
	maxSizeFactor := 0.9.
	differenceCollection := (self data allDifferences: #x) reject: [:each | each = 0].
	
	^ (self coordinateSystem xAxis normedMarkerLength) * (differenceCollection min) * maxSizeFactor