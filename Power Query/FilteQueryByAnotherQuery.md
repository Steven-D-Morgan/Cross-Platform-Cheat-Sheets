#"Filtered Rows1" = Table.SelectRows(#"Changed Type", each Table.Contains(FilterTable, [FilterTableColumn = [ColumnYouWantFiltered]]))

#"Filtered Rows1" = Table.SelectRows(#"Changed Type", each Table.Contains(Zoho_Vendors, [UCVendorID = [VendorID]]))
