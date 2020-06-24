instance creation
create
	
	^ SWCoordinateSystem createAt: self defaultStartPoint 
									xMin: self defaultMin 
									xMax: self defaultMax 
									xStep: self defaultStep 
									xLength: self defaultLength 
									yMin: self defaultMin 
									yMax: self defaultMax 
									yStep: self defaultStep 
									yLength: self defaultLength 
									boundsThreshold: self defaultBoundsThreshold
