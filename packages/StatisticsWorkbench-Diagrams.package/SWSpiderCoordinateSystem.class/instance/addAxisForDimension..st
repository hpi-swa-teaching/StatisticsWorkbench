as yet unclassified
addAxisForDimension: aNumber

	self spiderNet addMorph: (LineMorph from: self center to: (self circlePositionAtDimension: aNumber forValue: 100) color: self colorTheme spiderAxisColor width: self class defaultLineBorderWith)