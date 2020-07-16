accessing
setLineColor: aColor

	self charts do: [:chart |
		(chart isKindOf: SWLineChart)
			ifTrue: [chart color: aColor]
			]
