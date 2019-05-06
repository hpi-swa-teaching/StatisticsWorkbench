as yet unclassified
create
	| newPieChart |
	
	newPieChart := SWPieChart new.
	newPieChart
		radius: self defaultRadius;
		center: self defaultWorldPosition;
		extent: self defaultExtent;
		pieKey: SWPieKey create;
		bounds: (0 @ 0 corner: self defaultWorldPosition + self defaultRadius).
	
	newPieChart addPieKey: newPieChart pieKey.
	
	^ newPieChart