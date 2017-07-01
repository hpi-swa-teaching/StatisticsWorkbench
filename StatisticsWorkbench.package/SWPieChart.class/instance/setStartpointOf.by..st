as yet unclassified
setStartpointOf: aPieslice by: aPosition

	aPosition = 1
	ifTrue: [ aPieslice startpoint: self circleStartpoint ]
	ifFalse: [ aPieslice startpoint: ((self pieslices at: (aPosition - 1)) endpoint) ].