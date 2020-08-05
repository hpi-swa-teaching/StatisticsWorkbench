defaults
pieChartColors

	| colors |

	colors := OrderedCollection new.  

	colors add: (TranslucentColor r: 246/255 g: 168/255 b: 0 alpha: 1).
	colors add: (TranslucentColor r: 246/255 g: 168/255 b: 0 alpha: 0.2).
	colors add: (TranslucentColor r: 221/255 g: 97/255 b: 8/255 alpha: 1).
	colors add: (TranslucentColor r: 221/255 g: 97/255 b: 8/255 alpha: 0.2).
	colors add: (TranslucentColor r: 177/255 g: 6/255 b: 58/255 alpha: 1.0).
	colors add: (TranslucentColor r: 221/255 g: 97/255 b: 8/255 alpha: 0.2).

	^ colors
