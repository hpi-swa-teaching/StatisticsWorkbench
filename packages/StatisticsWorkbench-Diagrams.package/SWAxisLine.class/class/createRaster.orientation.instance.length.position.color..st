instance creation
createRaster: aBoolean orientation: anOrientation instance: instance length: aLength position: aPosition color: aColor

	aBoolean ifTrue:[
		(anOrientation = #horizontal)
			ifTrue: [instance rasterMorph: (LineMorph
						from: aPosition
						to: aPosition + (aLength @ 0)
						color: SWAxisLine defaultRasterColor
						width: SWAxisLine defaultRasterWidth)]
			ifFalse: [instance rasterMorph: (LineMorph
						from: aPosition
						to: aPosition - (0 @ aLength)
						color: SWAxisLine defaultRasterColor
						width: SWAxisLine defaultRasterWidth)].
		instance rasterColor: aColor.
		instance addMorph: instance rasterMorph behind: instance strokeMorph].