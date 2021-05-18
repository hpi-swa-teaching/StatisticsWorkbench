visualization
applyTheme: aColorTheme
	
	self pointColor: (self diagram getColor: aColorTheme class dataPointColor for: self)
