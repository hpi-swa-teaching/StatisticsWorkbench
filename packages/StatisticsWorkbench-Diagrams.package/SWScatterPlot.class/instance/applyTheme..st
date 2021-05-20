visualization
applyTheme: aColorTheme
	
	self pointColor: (self diagram getColor: aColorTheme class dataPointColors for: self)
