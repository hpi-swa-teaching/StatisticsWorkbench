as yet unclassified
getPositionForValueX: X y: Y
	^ self xAxis startPoint + ((self xAxis getPositionForValue: X)@(-1*(self yAxis getPositionForValue: Y)))