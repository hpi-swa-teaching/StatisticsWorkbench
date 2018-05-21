creation
createDataPoint: aSWVector

	^ SWDataPoint create: aSWVector at: (self coordinateSystem positionFor: aSWVector asPoint)