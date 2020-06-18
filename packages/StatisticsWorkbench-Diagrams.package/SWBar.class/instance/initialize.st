initialization
initialize

	super initialize.

	self barLabelMorph: TextMorph new.
	self barLabelMorph center: self barLabelMorph center + self defaultLabelOffset.

	self rotationMorph: TransformationMorph new.
	self rotationMorph addMorph: self barLabelMorph.
	self addMorph: self rotationMorph.

	self isLabelHorizontal: true
	