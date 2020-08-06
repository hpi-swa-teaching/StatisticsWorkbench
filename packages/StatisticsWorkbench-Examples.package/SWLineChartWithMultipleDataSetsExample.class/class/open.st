instance creation
open

	^ (SWDiagram new visualize: self data1 and: self data2 with: SWLineChart create and: SWLineChart create) openInWindow
