as yet unclassified
createAt: startPoint xMin: xMin xMax: xMax xStep: xStep xLength: xLength yMin: yMin yMax: yMax yStep: yStep yLength: yLength
	|xAxis yAxis|
	xAxis := SWAxis createAt: startPoint withMin: xMin length: xLength withMax: xMax step: xStep orientation: #horizontal.
	yAxis := SWAxis createAt: startPoint withMin: yMin length: yLength withMax: yMax step: yStep orientation: #vertical.
	
	^ (SWCoordinateSystem new)
		bounds: (yAxis endPoint corner: (xAxis endPoint + (60@60)));
		position: yAxis endPoint - (30@30);
		xAxis: xAxis;
		addMorph: xAxis;
		yAxis: yAxis;
		addMorph: yAxis;
		color: Color white;
		openInWorld