instance creation
createRaster: aBoolean orientation: anOrientation instance: instance length: aLength position: aPosition color: aColor

	aBoolean ifTrue:[
		(anOrientation = #horizontal)
			ifTrue: [instance rasterMorph: (LineMorph
						from: aPosition
						to: aPosition + (aLength @ 0)
						color: SWAxisMarker defaultRasterColor
						width: SWAxisMarker defaultRasterWidth)]
			ifFalse: [instance rasterMorph: (LineMorph
						from: aPosition
						to: aPosition - (0 @ aLength)
						color: SWAxisMarker defaultRasterColor
						width: SWAxisMarker defaultRasterWidth)].
		instance rasterColor: aColor.
		instance addMorph: instance rasterMorph behind: instance strokeMorph].