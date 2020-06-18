geometry
drawColorSwatchOf: aPieslice at: aPositionFactor

	| colorSwatch |
	
	colorSwatch := RectangleMorph new.
	
	self addColorSwatch: colorSwatch.
	self pieKeyColors add: colorSwatch. 
	
	colorSwatch 
			color: aPieslice slice color;
			position: self key position + (self class defaultMargin @ (aPositionFactor * self class defaultKeyPointHeight));
			extent: self class defaultColorSwatchExtent
			