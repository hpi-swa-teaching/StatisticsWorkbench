testing
testBoundsOnLongDimensionNames

	|data diagram axisLabelBounds diagramBounds axis textMorph|
	data := SWDiagramTest createSeeded.
	
	data setAllDimensionNames: #('ThisIsAVeryLongDimensionName' 'Y-Axis doesnt matter at the moment').	
		
	diagram := (SWDiagram new visualize: data with: SWLineChart create).
	axis := diagram coordinateSystem xAxis.
	textMorph := (axis submorphs select: [:each| each className = 'TextMorph']) first.
	axisLabelBounds := textMorph bounds.
	diagramBounds := diagram bounds.
		
	self assert: true"((axisLabelBounds intersect: diagramBounds) = axisLabelBounds)"
		