updating
removeFromData: aChartElement

	(self data size > 1) ifTrue: [ self data remove: aChartElement vector.
		self data changed ]