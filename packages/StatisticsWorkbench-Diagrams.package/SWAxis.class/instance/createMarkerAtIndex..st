creation
createMarkerAtIndex: aIndex
	| orientation | 
			
	(self orientation = #horizontal)
		ifTrue: [	orientation := #vertical]
		ifFalse: [orientation := #horizontal].
	 
	^ SWAxisLine 	
			create: (self newMarkerPosition: aIndex)
			orientation: orientation
			caption: (self humanReadable: (self minimum + (aIndex * self stepInterval) )) printString
			textColor: self textColor
			strokeColor: self borderColor
			raster: (self rasterVisibility and: self rasterLength notNil and: aIndex ~= 0)
			length: self rasterLength 