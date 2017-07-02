as yet unclassified
create
	| newPieChart |
	
	newPieChart := SWPieChart new.
	newPieChart
		pieKey: SWPieKey create;
		radius: self defaultRadius;
		center: self defaultWorldPosition;
		extent: self defaultExtent;
		color: Color transparent;
		pieslices: OrderedCollection new.
	
	newPieChart addPieKey: newPieChart pieKey.
	
	^ newPieChart