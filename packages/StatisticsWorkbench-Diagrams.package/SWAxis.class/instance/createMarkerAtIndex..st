creation
createMarkerAtIndex: aIndex

	| markerOrientation | 
			
	(self orientation = #horizontal)
		ifTrue: [markerOrientation := #vertical]
		ifFalse: [markerOrientation := #horizontal].
	 
	^ SWAxisMarker
			create: (self newMarkerPosition: aIndex)
			orientation: markerOrientation
			caption: (self shortenNumbers: (self minimum + (aIndex * self stepInterval)))
			textColor: self textColor
			strokeColor: self borderColor
			raster: (self rasterVisibility and: [self rasterLength notNil and: [aIndex ~= 0]])
			length: self rasterLength
