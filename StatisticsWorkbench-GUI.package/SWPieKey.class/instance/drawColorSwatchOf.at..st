as yet unclassified
drawColorSwatchOf: aPieslice at: aPosition
	| colorSwatch |
	
	colorSwatch := RectangleMorph new.
	
	self addColorSwatch: colorSwatch.
	self pieKeyColors add: colorSwatch. 
	
	colorSwatch color: aPieslice color;
						position: self position + (self class defaultMargin @ 
																(aPosition * self class defaultKeyPointHeight));
						extent: self class defaultColorSwatchExtent