REMOVE DUPLICATES BUT KEEP MOST RECENT DATA

01) Sort Descending by DATE
02) Add Table.Buffer() as shown below
   - Table.Sort(#"COLUMN: FinalAlias",{{"SourceFileDate", Order.Descending}})
       BECOMES
   - Table.Buffer(Table.Sort(#"COLUMN: FinalAlias",{{"SourceFileDate", Order.Descending}}))

Table.Buffer() forces PowerQuery to load the list after sorting.  That means the following steps (like Remove Duplicates) work off the entire sorted list and give the correct results.

All Microsoft says about Table.Buffer is “Buffers a table in memory, isolating it from external changes during evaluation.” which doesn’t even begin to explain it’s vital importance in some situations and the performance gains possible elsewhere.
