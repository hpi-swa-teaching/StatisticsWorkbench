testing
testDifferentColors

	| color1 color2 |

	self diagram: (SWDiagram new visualize: SWDataTest createSeededRandom and: SWDataTest createSeededRandom with: SWScatterPlot new and: SWScatterPlot new).
	color1 := (self diagram charts at: 1) pointColor.
	color2 := (self diagram charts at: 2) pointColor.
	self assert: color1 ~= color2