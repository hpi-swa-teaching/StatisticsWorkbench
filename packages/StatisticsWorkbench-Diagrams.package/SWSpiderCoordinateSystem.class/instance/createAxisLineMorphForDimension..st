instance creation
createAxisLineMorphForDimension: aNumber
	
	^ LineMorph from: self center
				to: (self circlePositionAtDimension: aNumber forValue: self class defaultMaximumAxisValue)
				color: self colorTheme spiderAxisColor
				width: self class defaultLineBorderWith