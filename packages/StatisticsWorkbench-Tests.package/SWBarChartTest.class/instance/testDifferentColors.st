testing
testDifferentColors

	| color1 color2 |

	self diagram: (SWDiagram new visualize: SWDataTest createSeeded5 and: SWDataTest createSeeded6 with: SWBarChart new and: SWBarChart new).
	color1 := (self diagram charts at: 1) barColor.
	color2 := (self diagram charts at: 2) barColor.
	self assert: color1 ~= color2