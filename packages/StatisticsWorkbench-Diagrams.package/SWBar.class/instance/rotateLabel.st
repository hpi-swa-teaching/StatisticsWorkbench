geometry
rotateLabel
	| rotationAngle |
	
	rotationAngle := 3 * (Float pi) / 2.
	self isLabelHorizontal: false.
	self rotationMorph
		angle: rotationAngle;
		bottomLeft: self rotatedLabelPosition