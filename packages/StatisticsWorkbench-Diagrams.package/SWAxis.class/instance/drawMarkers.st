initialization
drawMarkers
	
	0 to: self markerCount do: [:i | self add: (self createMarkerAtIndex: i)]
