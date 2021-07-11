instance creation
create
	
	^ SWSpiderCoordinateSystem new
		extent: self defaultLength @ self defaultLength;
		position: 0@0;
		setProperty: #indicateKeyboardFocus toValue: #never;
		color: self defaultColor;
		yourself