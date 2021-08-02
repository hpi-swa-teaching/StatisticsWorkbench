updating
applyTheme: aColorTheme
	
	self graphColor: (self diagram getColor: aColorTheme class spiderChartColors for: self);
		graphBorderColor: aColorTheme class spiderChartGraphBorderColor