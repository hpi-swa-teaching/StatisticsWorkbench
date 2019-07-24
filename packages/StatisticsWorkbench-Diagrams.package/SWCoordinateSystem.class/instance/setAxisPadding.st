geometry
setAxisPadding
	| tempX tempY |

	tempX := self xAxis maximum.
	tempY := self yAxis maximum.
	
	tempX := (tempX * self defaultAxisValuePaddingFactor) ceiling.
	tempY := (tempY * self defaultAxisValuePaddingFactor) ceiling.

	self xAxis maximum: tempX.
	self yAxis maximum: tempY

