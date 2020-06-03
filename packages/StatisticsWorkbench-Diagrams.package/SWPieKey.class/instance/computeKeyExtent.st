geometry
computeKeyExtent

	| width height maxNameWidth |
	
	maxNameWidth := (self pieKeyNames collect: [:name | name width]) max.
	height := self pieSlices size * self class defaultKeyPointHeight + self class defaultMargin.
	width := maxNameWidth + self class defaultColorSwatchWidth + (3 * self class defaultMargin).
	
	^ width @ height