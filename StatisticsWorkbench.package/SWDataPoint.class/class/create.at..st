as yet unclassified
create: aPoint at: aRenderPoint
	| newDataPoint |
	
	newDataPoint := SWDataPoint new.
	
	newDataPoint 
					realPoint: aPoint;
					renderedPoint: aRenderPoint;
					width: self defaultWidth;
					height: self defaultHeight;
					color: self defaultColor;
					borderColor: self defaultColor.
	
	^ newDataPoint