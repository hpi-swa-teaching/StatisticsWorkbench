instance creation
create

	| newPieChart |
	
	newPieChart := SWPieChart new.
	newPieChart
		radius: self defaultRadius;
		extent: self defaultExtent;
		bounds: ((0 @ 0) corner: self defaultWorldPosition + self defaultRadius).
	
	^ newPieChart
