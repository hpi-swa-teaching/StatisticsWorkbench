updating
toggleRaster

	self rasterVisibility: self rasterVisibility not.
	self markers do: [ :marker | marker rasterLineVisibility: self rasterVisibility ]