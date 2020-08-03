A simple parser for comma-separated-value files.
http://www.squeaksource.com/CSV.html

Example:

rows := FileStream readOnlyFileNamed: '/path/to/file.csv' do: [:stream | CSVParser parse: stream]