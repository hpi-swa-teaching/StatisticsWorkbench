instance creation
create: aPosition orientation: anOrientation caption: aText

	^ (SWAxisLine create: aPosition orientation: anOrientation caption: aText textColor: SWAxisLine defaultTextColor strokeColor: SWAxisLine defaultStrokeColor)