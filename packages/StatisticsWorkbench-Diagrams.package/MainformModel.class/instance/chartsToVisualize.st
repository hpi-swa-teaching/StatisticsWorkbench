as yet unclassified
chartsToVisualize

	|charts| 
	charts := OrderedCollection new.
	1 to: diagramsSelection size do:[:each|
		(diagramsSelection at: each) ifTrue: [charts add: (self getCharts at: each)].
	].
	^charts