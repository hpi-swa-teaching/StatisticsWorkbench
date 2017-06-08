as yet unclassified
getPositionForValue: aValue
	^ self xAxis startPoint + ((self xAxis getPositionForValue: aValue x)@(-1*(self yAxis getPositionForValue: aValue y)))