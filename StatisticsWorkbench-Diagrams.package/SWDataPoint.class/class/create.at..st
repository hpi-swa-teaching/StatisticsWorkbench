instance creation
create: aSWDate at: aRenderPoint

	^ SWDataPoint new 
								date: aSWDate;
								renderedPoint: aRenderPoint;
								width: self defaultWidth;
								height: self defaultHeight;
								color: self defaultColor;
								borderColor: self defaultColor;
								yourself