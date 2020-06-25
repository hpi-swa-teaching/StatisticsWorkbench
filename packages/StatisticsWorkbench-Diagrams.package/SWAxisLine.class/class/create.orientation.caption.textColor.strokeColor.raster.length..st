instance creation
create: aPosition orientation: anOrientation caption: aText textColor: aColor1 strokeColor: aColor2 raster: aBoolean length: aLength

	| instance |
	
	instance := SWAxisLine new.
	SWAxisLine createMarker: anOrientation instance: instance position: aPosition textColor: aColor1 strokeColor: aColor2 text: aText.
	SWAxisLine createRaster: aBoolean orientation: anOrientation instance: instance length: aLength position: aPosition color: aColor1.
	
	^ instance
