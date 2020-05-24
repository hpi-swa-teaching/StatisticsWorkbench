instance creation
create: aPosition orientation: anOrientation caption: aText textColor: aColor1 strokeColor: aColor2 raster: aBoolean length: aLength
	| instance |
	
	instance := SWAxisMarker new.
	SWAxisMarker createMarker: anOrientation instance: instance position: aPosition textColor: aColor1 strokeColor: aColor2 text: aText.
	SWAxisMarker createRaster: aBoolean orientation: anOrientation instance: instance length: aLength position: aPosition color: aColor1.
	
	^ instance