creation
createDataPoint: aSWDate

	^ SWDataPoint create: aSWDate at: (self coordinateSystem positionFor: aSWDate key asPoint)