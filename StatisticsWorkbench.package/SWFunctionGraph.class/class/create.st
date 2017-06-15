as yet unclassified
create
	^ SWFunctionGraph new
		dataPoints: Bag new;
		color: self defaultColor;
		borderWidth: self defaultBorderWidth;
		borderColor: self defaultBorderColor;
		makeOpen;
		yourself 