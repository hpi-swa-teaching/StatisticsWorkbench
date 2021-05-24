accessing
setXAxisColumn: aString

	self childView closeBoxHit.
	self xAxis: aString.
	self changed: #setXAxisColumn.