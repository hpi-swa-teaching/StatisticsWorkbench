instance creation
createMarker: anOrientation instance: instance position: aPosition textColor: aColor1 strokeColor: aColor2 text: aText

	(anOrientation = #horizontal)
		ifTrue: [instance
					strokeMorph: (LineMorph from: (aPosition x - (SWAxisLine defaultMarkerLength/2) @ aPosition y) to: (aPosition x + (SWAxisLine defaultMarkerLength/2) @ aPosition y) color: aColor2 width: SWAxisLine defaultMarkerWidth);
					captionMorph: (TextMorph new
											contents: aText;
											position: (aPosition x - SWAxisLine defaultCaptionMorphXShiftYAxis @ (aPosition y - (SWAxisLine defaultCaptionMorphWidth/2))))]
		ifFalse: [instance
					strokeMorph: (LineMorph from: (aPosition x @ (aPosition y - (SWAxisLine defaultMarkerLength/2))) to: (aPosition x @ (aPosition y + (SWAxisLine defaultMarkerLength/2))) color: aColor2 width: SWAxisLine defaultMarkerWidth);
					captionMorph: (TextMorph new
											contents: aText;
					 						position: ((aPosition x - SWAxisLine defaultCaptionMorphXShiftXAxis) @ (aPosition y + SWAxisLine defaultCaptionMorphYShiftXAxis)))].
										
	instance textColor: aColor1.
	instance strokeColor: aColor2.
	instance addMorph: instance strokeMorph.
	instance addMorph: instance captionMorph.