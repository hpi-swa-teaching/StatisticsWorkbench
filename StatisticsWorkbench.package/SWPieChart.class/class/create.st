as yet unclassified
create
	| newPieChart |
	
	newPieChart := SWPieChart new.
	newPieChart
		pieKey: SWPieKey new;
		radius: self defaultRadius;
		center: (self defaultRadius @ self defaultRadius) + 100;
		extent: (self defaultRadius @ self defaultRadius) + 100 * 2;
		color: Color transparent;
		pieslices: OrderedCollection new.
	
	newPieChart addMorph: newPieChart pieKey.
	
	^ newPieChart