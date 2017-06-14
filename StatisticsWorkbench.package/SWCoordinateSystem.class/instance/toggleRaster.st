as yet unclassified
toggleRaster
	self xAxis toggleRaster.
	self yAxis toggleRaster.
	self xAxis rasterLength: self yAxis length.
	self yAxis rasterLength: self xAxis length.
	self updateMarkers.