instance creation
create
	| newPieKey |
	
	newPieKey := SWPieKey new.
	newPieKey key color: SWPieKey defaultPieKeyBackgroundColor.
	^ newPieKey