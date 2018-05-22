as yet unclassified
create
	| newPieKey |
	
	newPieKey := SWPieKey new.
	newPieKey key
						"position: self defaultWorldPosition;"
						"extent: self defaultExtent;"
						color: Color white.
	
	^ newPieKey