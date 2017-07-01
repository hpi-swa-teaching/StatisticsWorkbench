as yet unclassified
create
	| newPieChart |
	
	newPieChart := SWPieChart new.
	newPieChart
		radius: self defaultRadius;
		center: self defaultWorldPosition;
		extent: self defaultExtent;
		pieKey: SWPieKey create.
	
	newPieChart addPieKey: newPieChart pieKey.
	
	^ newPieChart