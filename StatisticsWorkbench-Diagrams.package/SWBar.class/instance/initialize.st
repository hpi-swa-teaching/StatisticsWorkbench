initialization
initialize
	| labelOffset |
	
	labelOffset := 3 @ 5.
	super initialize.
	self barLabelMorph: TextMorph new.
	self barLabelMorph center: self barLabelMorph center + labelOffset.
	self rotationMorph: TransformationMorph new.
	self rotationMorph addMorph: self barLabelMorph.
	self addMorph: self rotationMorph.
	self isLabelHorizontal: true
	
	