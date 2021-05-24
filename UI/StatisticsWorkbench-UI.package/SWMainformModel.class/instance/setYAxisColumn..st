accessing
setYAxisColumn: aString

	self childView closeBoxHit.
	self yAxis: aString.
	self changed: #setYAxisColumn.