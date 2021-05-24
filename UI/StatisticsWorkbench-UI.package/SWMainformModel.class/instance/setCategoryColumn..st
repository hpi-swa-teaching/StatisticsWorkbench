accessing
setCategoryColumn: aString

	self childView closeBoxHit.
	self categoryColumn: aString.
	self changed: #setCategoryColumn.