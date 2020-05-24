instance creation
createMarker: anOrientation instance: instance position: aPosition textColor: aColor1 strokeColor: aColor2 text: aText

	(anOrientation = #horizontal)
		ifTrue: [instance
					strokeMorph: (LineMorph from: (aPosition x - (SWAxisMarker defaultMarkerLength/2) @ aPosition y) to: (aPosition x + (SWAxisMarker defaultMarkerLength/2) @ aPosition y) color: aColor2 width: SWAxisMarker defaultMarkerWidth);
					captionMorph: (TextMorph new
											contents: aText;
											position: (aPosition x - SWAxisMarker defaultCaptionMorphXShiftYAxis @ (aPosition y - (SWAxisMarker defaultCaptionMorphWidth/2))))]
		ifFalse: [instance
					strokeMorph: (LineMorph from: (aPosition x @ (aPosition y - (SWAxisMarker defaultMarkerLength/2))) to: (aPosition x @ (aPosition y + (SWAxisMarker defaultMarkerLength/2))) color: aColor2 width: SWAxisMarker defaultMarkerWidth);
					captionMorph: (TextMorph new
											contents: aText;
					 						position: ((aPosition x - SWAxisMarker defaultCaptionMorphXShiftXAxis) @ (aPosition y + SWAxisMarker defaultCaptionMorphYShiftXAxis)))].
										
	instance textColor: aColor1.
	instance strokeColor: aColor2.
	instance addMorph: instance strokeMorph.
	instance addMorph: instance captionMorph.