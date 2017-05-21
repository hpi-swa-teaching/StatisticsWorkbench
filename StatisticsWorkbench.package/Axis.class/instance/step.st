as yet unclassified
step

	self
		updateMin;
		updateMax;
		borderColor: self color;
		updateOrientation;
		updateStep;
		updateTexts.
	self submorphs do: [:a | a color: self color; borderColor: self borderColor].