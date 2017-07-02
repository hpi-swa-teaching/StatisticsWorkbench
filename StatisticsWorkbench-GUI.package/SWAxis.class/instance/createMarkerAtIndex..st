as yet unclassified
createMarkerAtIndex: aIndex
	| orientation | 
			
	self orientation = #horizontal
		ifTrue: [	orientation := #vertical]
		ifFalse: [orientation := #horizontal].
	 
	^ SWAxisLine 	create: (self newMarkerPosition: aIndex)
					orientation: orientation
					caption: (self min + (aIndex * self stepInterval)) printString
					textColor: self textColor
					strokeColor: self borderColor
					raster: (self rasterVisibility and: self rasterLength notNil)
					length: self rasterLength