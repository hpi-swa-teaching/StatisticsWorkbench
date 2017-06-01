as yet unclassified
createAt: startPoint withXMin: xMin to: xEndPoint withXMax: xMax xStep: xStep withYMin: yMin to: yEndPoint withYMax: yMax yStep: yStep
	|xAxis yAxis|
	xAxis := SWAxis createAt: startPoint withMin: xMin to: xEndPoint withMax: xMax step: 				xStep orientation: #horizontal.
	yAxis := SWAxis createAt: startPoint withMin: yMin to: yEndPoint withMax: yMax step: 				yStep orientation: #vertical.
	
	^ (SWCoordinateSystem new)
		bounds: (yAxis endPoint corner: (xAxis endPoint + (60@60)));
		position: yAxis endPoint - (30@30);
		xAxis: xAxis;
		addMorph: xAxis;
		yAxis: yAxis;
		addMorph: yAxis;
		color: Color white;
		openInWorld