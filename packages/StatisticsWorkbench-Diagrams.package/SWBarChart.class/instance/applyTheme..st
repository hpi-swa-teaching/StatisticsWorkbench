visualization
applyTheme: aColorTheme
	
	self barColor: (self diagram getColor: aColorTheme class barColor for: self).
	self barLabelColor: aColorTheme class barLabelColor
