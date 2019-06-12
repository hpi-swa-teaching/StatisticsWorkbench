instance creation
createAt: startPoint xMin: xMin xMax: xMax xStep: xStep xLength: xLength yMin: yMin yMax: yMax yStep: yStep yLength: yLength boundsThreshold: boundsThreshold 
	| xAxis yAxis |
	
	xAxis := SWAxis createAt: startPoint withMin: xMin length: xLength withMax: xMax step: xStep orientation: #horizontal.
	yAxis := SWAxis createAt: startPoint withMin: yMin length: yLength withMax: yMax step: yStep orientation: #vertical.
	
	^ SWCoordinateSystem new
		boundsThreshold: boundsThreshold ;
		bounds: (yAxis endPoint corner: xAxis endPoint + boundsThreshold);
		position: yAxis endPoint - (boundsThreshold / 2);
		addAxis: xAxis dimension: #x;
		addAxis: yAxis dimension: #y;
		color: SWCoordinateSystem defaultColor;
		yourself