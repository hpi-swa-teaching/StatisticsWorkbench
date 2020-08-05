instance creation
open 

	| data1 data2 |
	
	data1 := SWDataUnlabeled fromYValues: { 900  . 1212 . 1493 . 1212 . 700 }.
	data1 dataName: 'Feldberg in Deutschland'.
	
	data2 := SWDataUnlabeled fromYValues: { 4000 . 8848 . 6500 . 5000 . 4000 . 3100 }.
	data2 dataName: 'Mount Everest in Nepal'.
	
	^ (SWDiagram new visualize: data1 and: data2 with: SWLineChart create and: SWLineChart create) openInWindow
