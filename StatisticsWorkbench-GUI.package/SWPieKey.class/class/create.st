as yet unclassified
create

	^ SWPieKey new
						pieslices: OrderedCollection new;
						pieKeyColors: OrderedCollection new;
						pieKeyNames: OrderedCollection new;
						position: self defaultWorldPosition;
						extent: self defaultExtent;
						color: Color white