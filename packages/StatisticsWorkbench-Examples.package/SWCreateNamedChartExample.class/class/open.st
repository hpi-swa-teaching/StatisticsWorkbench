instance creation
open

	^ (SWDiagram new visualize: self data with: SWPieChart create) openInWindowLabeled: 'This is a Pie Chart'
