constructing
createMarkerAtIndex: aIndex

	^ SWAxisLine 	create: (self newMarkerPosition: aIndex)
					orientation: self invertedOrientation
					caption: (self min + (aIndex * self stepInterval)) printString
					textColor: self textColor
					strokeColor: self borderColor
					raster: (self rasterVisibility and: self rasterLength notNil)
					length: self rasterLength