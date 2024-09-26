LastName, FirstName TO FirstName LastName &&& Fixing Capitalization

= Table.AddColumn(#"Changed Type", "Name", each let splitUserFullName = Splitter.SplitTextByDelimiter(", ", QuoteStyle.None)([User Full Name]) in Text.Combine({Text.Proper(splitUserFullName{1}?), " ", Text.Start(Text.Proper(splitUserFullName{0}?), 5)}), type text)