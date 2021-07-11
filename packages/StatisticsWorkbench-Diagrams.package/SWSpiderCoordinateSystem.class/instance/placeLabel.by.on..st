as yet unclassified
placeLabel: aTextMorph by: anAngle on: aDimension
	
	(anAngle = 0) ifTrue: [ aTextMorph center: self center.
							aTextMorph left: (self circlePositionAtDimension: aDimension forValue: 110) x].
	(anAngle > 0 and: anAngle < 90) ifTrue: [aTextMorph topLeft: (self circlePositionAtDimension: aDimension forValue: 110)].
	(anAngle = 90) ifTrue: [ aTextMorph center: self center.
							aTextMorph top: (self circlePositionAtDimension: aDimension forValue: 110) y].
	(anAngle > 90 and: anAngle < 180) ifTrue: [aTextMorph topRight:  (self circlePositionAtDimension: aDimension forValue: 110)].
	(anAngle = 180) ifTrue: [ aTextMorph center: self center.
							  aTextMorph right: (self circlePositionAtDimension: aDimension forValue: 110) x].
	(anAngle > 180 and: anAngle < 270) ifTrue: [aTextMorph bottomRight: (self circlePositionAtDimension: aDimension forValue: 110)].
	(anAngle = 270) ifTrue: [ aTextMorph center: self center.
								aTextMorph bottom: (self circlePositionAtDimension: aDimension forValue: 110) y].
	(anAngle > 270 and: anAngle < 360) ifTrue: [aTextMorph bottomLeft:  (self circlePositionAtDimension: aDimension forValue: 110)].


	

	