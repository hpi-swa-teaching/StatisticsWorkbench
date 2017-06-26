as yet unclassified
create
	| funcGraph |
	
	funcGraph := SWFunctionGraph new.
	funcGraph lineMorph: PolygonMorph new.
	funcGraph addMorph: funcGraph lineMorph.
	
	funcGraph lineMorph
		color: self defaultColor;
		borderWidth: self defaultBorderWidth;
		borderColor: self defaultBorderColor;
		makeOpen.
	
	^ funcGraph