visualization
applyTheme: aColorTheme
	
	self barColor: (self diagram getColor: aColorTheme class barColors for: self).
	self barLabelColor: aColorTheme class barLabelColor
