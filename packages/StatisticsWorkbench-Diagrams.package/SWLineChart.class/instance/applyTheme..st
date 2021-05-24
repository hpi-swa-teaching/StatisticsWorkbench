visualization
applyTheme: aColorTheme
	
	self lineColor: (self diagram getColor: aColorTheme class lineChartColors for: self).
	self applyDataColor
