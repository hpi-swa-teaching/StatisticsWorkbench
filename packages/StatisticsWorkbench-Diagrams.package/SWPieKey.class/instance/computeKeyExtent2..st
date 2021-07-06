geometry
computeKeyExtent2: aChartCollection

	| width height maxNameWidth |
	
	maxNameWidth := (self pieKeyNames collect: [:name | name width]) max.
	height := aChartCollection size * self class defaultKeyPointHeight + self class defaultMargin.
	
	"3 because the margin is on the left of the colored box, between the box and the text and on the right of the text." 
	width := maxNameWidth + self class defaultColorSwatchWidth + (3 * self class defaultMargin).
	
	^ (width @ height)
