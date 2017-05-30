as yet unclassified
axisColor: aColor
	self borderColor: aColor;
		submorphsDo: [:morph| morph strokeColor: aColor];
		changed.