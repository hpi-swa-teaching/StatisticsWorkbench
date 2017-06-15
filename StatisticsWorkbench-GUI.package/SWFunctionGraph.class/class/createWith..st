as yet unclassified
createWith: aDictionary
	| coordinatesystem |
	coordinatesystem:= SWCoordinateSystem create.
	^ SWFunctionGraph new
		coordinateSystem: coordinatesystem;
		position: coordinatesystem position;
		addMorph: coordinatesystem;
		dataset: aDictionary;
		update;
		yourself