geometry
extent: aPoint

	
	super extent: aPoint.
	
	(self xAxis isNil or: [self yAxis isNil])
			ifFalse: [
				self positionAxisX.
				self positionAxisY.
				self positionAxisX.
				self update.
				
				self updateRasterSize]