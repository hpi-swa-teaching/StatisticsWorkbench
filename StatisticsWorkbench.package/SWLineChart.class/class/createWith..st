as yet unclassified
createWith: aDictionary
	| coordinatesystem |
	coordinatesystem:= SWCoordinateSystem create.
	^ (SWLineChart new)
		coordinateSystem: coordinatesystem;
		position: coordinatesystem position;
		addMorph: coordinatesystem;
		dataset: aDictionary;
		updateChart;
		openInWorld