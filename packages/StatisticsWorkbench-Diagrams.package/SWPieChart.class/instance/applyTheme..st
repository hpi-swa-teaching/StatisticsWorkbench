visualization
applyTheme: aColorTheme
	
	self colorArray: aColorTheme class pieChartColorArray.
	self pieKey textColor: aColorTheme class axisColor.
	self pieKey pieKeyBackgroundColor: aColorTheme class backgroundColor.
	self pieKey updateBackgroundColor.
