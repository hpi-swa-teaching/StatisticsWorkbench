as yet unclassified
createLineMorph
	
	self lineMorph: PolygonMorph new.
	
	self lineMorph
		color: self defaultColor;
		borderWidth: self class defaultBorderWidth;
		borderColor: self class defaultBorderColor;
		makeOpen