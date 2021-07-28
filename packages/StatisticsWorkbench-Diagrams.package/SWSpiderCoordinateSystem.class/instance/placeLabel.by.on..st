visualization
placeLabel: aTextMorph by: anAngle on: aDimension
	
	aTextMorph center: self center.
	anAngle = 0 ifTrue: [^ aTextMorph left: (self labelPositionAtDimension: aDimension) x].
	anAngle < 90 ifTrue: [^ aTextMorph topLeft: (self labelPositionAtDimension: aDimension)].
	anAngle = 90 ifTrue: [^ aTextMorph top: (self labelPositionAtDimension: aDimension) y].
	anAngle < 180 ifTrue: [^ aTextMorph topRight:  (self labelPositionAtDimension: aDimension)].
	anAngle = 180 ifTrue: [^ aTextMorph right: (self labelPositionAtDimension: aDimension) x].
	anAngle < 270 ifTrue: [^ aTextMorph bottomRight: (self labelPositionAtDimension: aDimension)].
	anAngle = 270 ifTrue: [^ aTextMorph bottom: (self labelPositionAtDimension: aDimension) y].
	anAngle < 360 ifTrue: [^ aTextMorph bottomLeft:  (self labelPositionAtDimension: aDimension)]