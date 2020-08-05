geometry
maxBarWidth

	| calculatedMaxBarWitdh differenceCollection first maxSizeFactor |

	maxSizeFactor := 0.9.
	differenceCollection := (self data allDifferences: #x) reject: [:each | each = 0].
	calculatedMaxBarWitdh := (self coordinateSystem xAxis normedMarkerLength) * (differenceCollection min) * maxSizeFactor.
	first := (self coordinateSystem xAxis normedMarkerLength) * (self data first x) * 2 * maxSizeFactor.

	^ (calculatedMaxBarWitdh asOrderedCollection, first asOrderedCollection) min
