accessing
rotateLabel
	| rotationAngle |
	
	rotationAngle := 3 * (Float pi) / 2.
	self rotationMorph
		angle: rotationAngle;
		bottomLeft: self rotatedLabelPosition