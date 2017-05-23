as yet unclassified
step

	self
		borderColor: self color;
		updateOrientation;
		updateStep;
		updateLabel.
	self submorphs do: [:a | a color: self color; borderColor: self borderColor].