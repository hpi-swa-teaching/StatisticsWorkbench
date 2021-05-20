event-handling
chartsToVisualize

	|charts| 
	charts := OrderedCollection new.
	1 to: chartSelection size do:[:each|
		(chartSelection at: each) ifTrue: [charts add: (self getCharts at: each)].
	].
	^charts