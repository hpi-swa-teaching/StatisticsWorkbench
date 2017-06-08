as yet unclassified
drawKey

	|position keyPoint colorSwatch|
	
	position := 0.5.
	
	self pieSlices do: [:pieSlice | keyPoint := TextMorph new.
		self addMorph: keyPoint.
		keyPoint contents: pieSlice name asString;
				position: self position + (50@ (position*50));
				comeToFront.
		self pieKeyNames add: keyPoint.
		
		colorSwatch := RectangleMorph new.
		self addMorph: colorSwatch.
			colorSwatch color: pieSlice color;
			position: self position + (20@ (position *50));
			extent: 20@20;
			comeToFront.
		self pieKeyColors add: colorSwatch.
		
		position := position+1.
	].
	
	self extent: 200@ (self pieSlices size * 50 + 25)
