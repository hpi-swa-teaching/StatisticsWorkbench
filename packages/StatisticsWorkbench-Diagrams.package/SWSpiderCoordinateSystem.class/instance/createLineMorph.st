as yet unclassified
createLineMorph
	
	^ PolygonMorph new
		color: self colorTheme rasterColor;
		borderWidth: self class defaultLineBorderWith;
		borderColor: self colorTheme axisBorderColor;
		makeOpen;
		yourself