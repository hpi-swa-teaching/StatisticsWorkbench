testing
testDifferentColors

	| color1 color2 |

	self diagram: (SWDiagram new visualize: SWDataTest createSeededRandom and: SWDataTest createSeededRandom with: SWLineChart new and: SWLineChart new).
	color1 := (self diagram charts at: 1) lineColor.
	color2 := (self diagram charts at: 2) lineColor.
	self assert: color1 ~= color2