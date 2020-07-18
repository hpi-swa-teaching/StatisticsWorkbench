geometry
setAxisPadding

	| tempX tempY |

	tempX := self xAxis maximum.
	tempY := self yAxis maximum.
	
	tempX := (tempX * self class defaultAxisValuePaddingFactor) ceiling.
	tempY := (tempY * self class defaultAxisValuePaddingFactor) ceiling.

	self xAxis maximum: tempX.
	self yAxis maximum: tempY
