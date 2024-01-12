---------- Message ----------
Expression.Error: The column 'Job Req #' of the table wasn't found.

---------- Session ID ----------
11f1142a-d269-46c1-983f-44302750a02c

---------- Request ID ----------
c4f7d4a6-9b01-41e7-b7e1-5035839d0753

---------- Mashup script ----------
section Section1;
shared hcm0570 = let
  Source = SharePoint.Files("https://cushwake1.sharepoint.com/sites/BizOpsSupport/", [ApiVersion = 15]),
  #"Filtered rows" = Table.SelectRows(Source, each ([Folder Path] = "https://cushwake1.sharepoint.com/sites/BizOpsSupport/Shared Documents/Data Shuttle/TA Requisition Tracker/")),
  #"Sorted rows" = Table.Sort(#"Filtered rows", {{"Date created", Order.Descending}}),
  #"Kept top rows" = Table.FirstN(#"Sorted rows", 1),
  #"Filtered hidden files" = Table.SelectRows(#"Kept top rows", each [Attributes]?[Hidden]? <> true),
  #"Invoke custom function" = Table.AddColumn(#"Filtered hidden files", "Transform file", each #"Transform file"([Content])),
  #"Renamed columns" = Table.RenameColumns(#"Invoke custom function", {{"Name", "Source.Name"}}),
  #"Removed other columns" = Table.SelectColumns(#"Renamed columns", {"Source.Name", "Transform file"}),
  #"Expanded table column" = Table.ExpandTableColumn(#"Removed other columns", "Transform file", Table.ColumnNames(#"Transform file"(#"Sample file"))),
  #"Changed column type" = Table.TransformColumnTypes(#"Expanded table column", {{"Open Date", type date}}),
  #"Reordered columns" = Table.ReorderColumns(#"Changed column type", {"Source.Name", "Job Requisition Status", "Open Date", "Recruiting Strategy Update", "Skilled Trades", "Job Profile", "Evergreen", "Confidential Job", "Mass Load (EIB)", "Job Posting Title", "Available for Hire", "Primary Recruiters as of Last Assignment", "Primary Recruiter", "Previous Recruiter", "Sourcer", "Corporate Recruiting Supported", "Hiring Manager", "Business Category", "Group", "Service Line", "Cost Center", "Business Unit", "Company", "Supervisory Organization", "Location Region", "Country", "State", "City", "Postal Code", "Job Requisition Primary Location", "Amazon Site Code", "Region", "Region Level 5", "Worker Type", "Worker Sub-Type", "Exempt", "Level", "CWS Job Category", "Approvals to Open Requisition", "Date Req. Initiated", "Date Req. Approved", "Date Req. Assigned", "Date First Posted", "Posting Start Date", "Date Moved to Offer Stage", "Date Offer Accepted", "Date Offer Completed (Admin Step)", "Start Date", "Time to Approve", "Time to Assign", "Time to Post", "Time Frozen", "Time to Offer", "Time to Accept", "Time to Start", "Days Open", "Total Applications", "Inactive Candidates", "# in Review", "# in Assessment", "# in TA Screen", "# in HM Review", "# in Interview", "# in Offer", "# in Background Check", "# in Ready to Hire", "Total Rejected Offers", "Average Days for TA Review", "Total TA Screens", "Average Days in TA Screen", "Total Sent to Assessment", "Average Days for Assessment", "Total Sent to Hiring Mgr.", "Average Days for Hiring Manager Review", "Total Candidates Interviews", "Average Days for Interview Stage", "Posted Internal", "Posted External", "Supported by TA AI", "Job Req Initiator", "Primary TA Coordinator", "HRBP", "Reason", "Replacement for Worker", "Justification", "Requisition Salary Plans", "Salary Amount", "Requisition Hourly Plan Assignment Details", "Hourly Amount", "Requisition Merit Plans", "Merit Amount", "Requisition Bonus Plans", "Bonus Percent", "Legacy GL"}),
  #"Sorted rows 1" = Table.Sort(#"Reordered columns", {{"Open Date", Order.Descending}}),
  #"Removed columns" = Table.RemoveColumns(#"Sorted rows 1", {"HRBP"})
in
  #"Removed columns";
shared #"Sample file" = let
  Source = SharePoint.Files("https://cushwake1.sharepoint.com/sites/BizOpsSupport/", [ApiVersion = 15]),
  #"Filtered rows" = Table.SelectRows(Source, each [Folder Path] = "https://cushwake1.sharepoint.com/sites/BizOpsSupport/Shared Documents/Data Shuttle/TA Requisition Tracker/"),
  #"Sorted rows" = Table.Sort(#"Filtered rows", {{"Date created", Order.Descending}}),
  #"Kept top rows" = Table.FirstN(#"Sorted rows", 1),
  #"Filtered hidden files" = Table.SelectRows(#"Kept top rows", each [Attributes]?[Hidden]? <> true),
  Navigation = #"Filtered hidden files"{0}[Content]
in
  Navigation;
shared Parameter = let
  Parameter = #"Sample file" meta [IsParameterQuery = true, IsParameterQueryRequired = true, Type = type binary, BinaryIdentifier = #"Sample file"]
in
  Parameter;
shared #"Transform Sample file" = let
  Source = Excel.Workbook(Parameter, null, true),
  Navigation = Source{[Item = "Sheet1", Kind = "Sheet"]}[Data],
  #"Removed top rows" = Table.Skip(Navigation, 22),
  #"Promoted headers" = Table.PromoteHeaders(#"Removed top rows", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Job Req #", type text}, {"Job Requisition Status", type text}, {"Open Date", type number}, {"Recruiting Strategy Update", type text}, {"Skilled Trades", type text}, {"Job Profile", type text}, {"Evergreen", type text}, {"Confidential Job", type text},{"Mass Load (EIB)", type text}, {"Job Posting Title", type text}, {"Available for Hire", type text}, {"Primary Recruiters as of Last Assignment", type text}, {"Primary Recruiter", type text}, {"Previous Recruiter", type text}, {"Sourcer", type text}, {"Corporate Recruiting Supported", type text}, {"Hiring Manager", type text}, {"Business Category", type text}, {"Group", type text}, {"Service Line", type any}, {"Cost Center", type text}, {"Business Unit", type text}, {"Company", type text}, {"Supervisory Organization", type text}, {"Location Region", type text}, {"Country", type text}, {"State", type text}, {"City", type text}, {"Postal Code", type text}, {"Job Requisition Primary Location", type text}, {"Amazon Site Code", type text}, {"Region", type text}, {"Region Level 5", type any}, {"Worker Type", type text}, {"Worker Sub-Type", type text}, {"Exempt", type text}, {"Level", type text}, {"CWS Job Category", type text}, {"Approvals to Open Requisition", Int64.Type}, {"Date Req. Initiated", type number}, {"Date Req. Approved", type number}, {"Date Req. Assigned", type number}, {"Date First Posted", type number}, {"Posting Start Date", Int64.Type}, {"Date Moved to Offer Stage", type number}, {"Date Offer Accepted", type number}, {"Date Offer Completed (Admin Step)", type number}, {"Start Date", Int64.Type}, {"Time to Approve", type number}, {"Time to Assign", type number}, {"Time to Post", type number}, {"Time Frozen", Int64.Type}, {"Time to Offer", type number}, {"Time to Accept", type number}, {"Time to Start", type number}, {"Days Open", type number}, {"Total Applications", Int64.Type}, {"Inactive Candidates", Int64.Type}, {"# in Review", Int64.Type}, {"# in Assessment", Int64.Type}, {"# in TA Screen", Int64.Type}, {"# in HM Review", Int64.Type}, {"# in Interview", Int64.Type}, {"# in Offer", Int64.Type}, {"# in Background Check", Int64.Type}, {"# in Ready to Hire", Int64.Type}, {"Total Rejected Offers", Int64.Type}, {"Average Days for TA Review", type number}, {"Total TA Screens", Int64.Type}, {"Average Days in TA Screen", type number}, {"Total Sent to Assessment", Int64.Type}, {"Average Days for Assessment", type number}, {"Total Sent to Hiring Mgr.", Int64.Type}, {"Average Days for Hiring Manager Review", Int64.Type}, {"Total Candidates Interviews", Int64.Type}, {"Average Days for Interview Stage", type number}, {"Posted Internal", type text}, {"Posted External", type text}, {"Supported by TA AI", type any}, {"Job Req Initiator", type text}, {"Primary TA Coordinator", type text}, {"HRBP", type text}, {"Reason", type text}, {"Replacement for Worker", type text}, {"Justification", type text}, {"Requisition Salary Plans", type text}, {"Salary Amount", type number}, {"Requisition Hourly Plan Assignment Details", type text}, {"Hourly Amount", type number}, {"Requisition Merit Plans", type text}, {"Merit Amount", Int64.Type}, {"Requisition Bonus Plans", type text}, {"Bonus Percent", type number}, {"Legacy GL", type text}})
in
  #"Changed column type";
[FunctionQueryBinding = "{""exemplarFormulaName"":""Transform Sample file""}"]
shared #"Transform file" = (Parameter as binary) => let
  Source = Excel.Workbook(Parameter, null, true),
  Navigation = Source{[Item = "Sheet1", Kind = "Sheet"]}[Data],
  #"Removed top rows" = Table.Skip(Navigation, 22),
  #"Promoted headers" = Table.PromoteHeaders(#"Removed top rows", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Job Req #", type text}, {"Job Requisition Status", type text}, {"Open Date", type number}, {"Recruiting Strategy Update", type text}, {"Skilled Trades", type text}, {"Job Profile", type text}, {"Evergreen", type text}, {"Confidential Job", type text},{"Mass Load (EIB)", type text}, {"Job Posting Title", type text}, {"Available for Hire", type text}, {"Primary Recruiters as of Last Assignment", type text}, {"Primary Recruiter", type text}, {"Previous Recruiter", type text}, {"Sourcer", type text}, {"Corporate Recruiting Supported", type text}, {"Hiring Manager", type text}, {"Business Category", type text}, {"Group", type text}, {"Service Line", type any}, {"Cost Center", type text}, {"Business Unit", type text}, {"Company", type text}, {"Supervisory Organization", type text}, {"Location Region", type text}, {"Country", type text}, {"State", type text}, {"City", type text}, {"Postal Code", type text}, {"Job Requisition Primary Location", type text}, {"Amazon Site Code", type text}, {"Region", type text}, {"Region Level 5", type any}, {"Worker Type", type text}, {"Worker Sub-Type", type text}, {"Exempt", type text}, {"Level", type text}, {"CWS Job Category", type text}, {"Approvals to Open Requisition", Int64.Type}, {"Date Req. Initiated", type number}, {"Date Req. Approved", type number}, {"Date Req. Assigned", type number}, {"Date First Posted", type number}, {"Posting Start Date", Int64.Type}, {"Date Moved to Offer Stage", type number}, {"Date Offer Accepted", type number}, {"Date Offer Completed (Admin Step)", type number}, {"Start Date", Int64.Type}, {"Time to Approve", type number}, {"Time to Assign", type number}, {"Time to Post", type number}, {"Time Frozen", Int64.Type}, {"Time to Offer", type number}, {"Time to Accept", type number}, {"Time to Start", type number}, {"Days Open", type number}, {"Total Applications", Int64.Type}, {"Inactive Candidates", Int64.Type}, {"# in Review", Int64.Type}, {"# in Assessment", Int64.Type}, {"# in TA Screen", Int64.Type}, {"# in HM Review", Int64.Type}, {"# in Interview", Int64.Type}, {"# in Offer", Int64.Type}, {"# in Background Check", Int64.Type}, {"# in Ready to Hire", Int64.Type}, {"Total Rejected Offers", Int64.Type}, {"Average Days for TA Review", type number}, {"Total TA Screens", Int64.Type}, {"Average Days in TA Screen", type number}, {"Total Sent to Assessment", Int64.Type}, {"Average Days for Assessment", type number}, {"Total Sent to Hiring Mgr.", Int64.Type}, {"Average Days for Hiring Manager Review", Int64.Type}, {"Total Candidates Interviews", Int64.Type}, {"Average Days for Interview Stage", type number}, {"Posted Internal", type text}, {"Posted External", type text}, {"Supported by TA AI", type any}, {"Job Req Initiator", type text}, {"Primary TA Coordinator", type text}, {"HRBP", type text}, {"Reason", type text}, {"Replacement for Worker", type text}, {"Justification", type text}, {"Requisition Salary Plans", type text}, {"Salary Amount", type number}, {"Requisition Hourly Plan Assignment Details", type text}, {"Hourly Amount", type number}, {"Requisition Merit Plans", type text}, {"Merit Amount", Int64.Type}, {"Requisition Bonus Plans", type text}, {"Bonus Percent", type number}, {"Legacy GL", type text}})
in
  #"Changed column type";
shared hcm0580 = let
  Source = SharePoint.Files("https://cushwake1.sharepoint.com/sites/AmazonRecruitment-DashboardData/", [ApiVersion = 15]),
  #"Filtered rows" = Table.SelectRows(Source, each Text.Contains([Folder Path], "HCM0580")),
  #"Sorted rows" = Table.Sort(#"Filtered rows", {{"Date created", Order.Descending}}),
  #"Kept top rows" = Table.FirstN(#"Sorted rows", 1),
  #"Filtered hidden files" = Table.SelectRows(#"Kept top rows", each [Attributes]?[Hidden]? <> true),
  #"Invoke custom function" = Table.AddColumn(#"Filtered hidden files", "Transform file (2)", each #"Transform file (2)"([Content])),
  #"Renamed columns" = Table.RenameColumns(#"Invoke custom function", {{"Name", "Source.Name"}}),
  #"Removed other columns" = Table.SelectColumns(#"Renamed columns", {"Source.Name", "Transform file (2)"}),
  #"Expanded table column" = Table.ExpandTableColumn(#"Removed other columns", "Transform file (2)", Table.ColumnNames(#"Transform file (2)"(#"Sample file (2)"))),
  #"Removed other columns 1" = Table.SelectColumns(#"Expanded table column", {"Source.Name", "Job Req #", "Job Requisition Status", "Skilled Trades", "Filled by Worker", "Job Application Source", "Source Category", "Source", "Job Posting Title", "Primary Recruiter", "Primary Recruiters as of Last Assigned", "Previous Recruiter", "Sourcer", "Hiring Manager", "State", "Location", "Amazon Site Code", "Worker Type", "Exempt", "Job Level", "Linked Evergreen Requisition", "Approvals to Open Requisition", "Date Req. Initiated", "Date Req.  Approved", "Date Req. Assigned", "Date First Posted", "Date Moved to Offer Stage", "Date Offer Accepted", "Date Offer Completed (Admin Step)", "Start Date", "Days to Approve", "Days to Assign", "Days to Post", "Days Frozen", "Days to Offer", "Days to Accept", "Days to Start", "Days for Total Process", "Total Applications", "Total TA Screens", "Total Sent to Assessment", "Total Sent to Hiring Mgr.", "Total Hiring Mgr. Interviews", "Total Rejected Offers", "Total Failed BGC"}),
  #"Renamed columns 1" = Table.RenameColumns(#"Removed other columns 1", {{"Source.Name", "source_name"}, {"Job Req #", "job_req"}, {"Job Requisition Status", "job_requisition_status"}, {"Skilled Trades", "skilled_trades"}, {"Filled by Worker", "filled_by_worker"}, {"Job Application Source", "job_application_source"}, {"Source Category", "source_category"}, {"Source", "source"}, {"Job Posting Title", "job_posting_title"}, {"Primary Recruiter", "primary_recruiter"}, {"Primary Recruiters as of Last Assigned", "primary_recruiters_last_assigned"}, {"Previous Recruiter", "previous_recruiter"}, {"Sourcer", "sourcer"}, {"Hiring Manager", "hiring_manager"}, {"State", "state"}, {"Location", "location"}, {"Amazon Site Code", "site_code"}, {"Worker Type", "worker_type"}, {"Exempt", "exempt"}, {"Job Level", "job_level"}, {"Linked Evergreen Requisition", "linked_evergreen_requisition"}, {"Approvals to Open Requisition", "approvals_to_open_requisition"}, {"Date Req. Initiated", "date_req_initiated"}, {"Date Req.  Approved", "date_req_approved"}, {"Date Req. Assigned", "date_req_assigned"}, {"Date First Posted", "date_first_posted"}, {"Date Moved to Offer Stage", "date_moved_to_offer_stage"}, {"Date Offer Accepted", "date_offer_accepted"}, {"Date Offer Completed (Admin Step)", "date_offer_completed_admin_step"}, {"Start Date", "start_date"}, {"Days to Approve", "days_to_approve"}, {"Days to Assign", "days_to_assign"}, {"Days to Post", "days_to_post"}, {"Days Frozen", "days_frozen"}, {"Days to Offer", "days_to_offer"}, {"Days to Accept", "days_to_accept"}, {"Days to Start", "days_to_start"}, {"Days for Total Process", "days_for_total_process"}, {"Total Applications", "total_applications"}, {"Total TA Screens", "total_ta_screens"}, {"Total Sent to Assessment", "total_sent_to_assessment"}, {"Total Sent to Hiring Mgr.", "total_sent_to_hiring_mgr"}, {"Total Hiring Mgr. Interviews", "total_hiring_mgr_interviews"}, {"Total Rejected Offers", "total_rejected_offers"}, {"Total Failed BGC", "total_failed_bgc"}}),
  #"Changed column type" = Table.TransformColumnTypes(#"Renamed columns 1", {{"date_req_initiated", type date}, {"date_req_approved", type date}, {"date_req_assigned", type date}, {"date_first_posted", type date}, {"date_moved_to_offer_stage", type date}, {"date_offer_accepted", type date}, {"date_offer_completed_admin_step", type date}, {"start_date", type date}})
in
  #"Changed column type";
shared #"Sample file (2)" = let
  Source = SharePoint.Files("https://cushwake1.sharepoint.com/sites/AmazonRecruitment-DashboardData/", [ApiVersion = 15]),
  #"Filtered rows" = Table.SelectRows(Source, each Text.Contains([Folder Path], "HCM0580")),
  #"Sorted rows" = Table.Sort(#"Filtered rows", {{"Date created", Order.Descending}}),
  #"Kept top rows" = Table.FirstN(#"Sorted rows", 1),
  #"Filtered hidden files" = Table.SelectRows(#"Kept top rows", each [Attributes]?[Hidden]? <> true),
  Navigation = #"Filtered hidden files"{0}[Content]
in
  Navigation;
shared #"Parameter (2)" = let
  #"Parameter (2)" = #"Sample file (2)" meta [IsParameterQuery = true, IsParameterQueryRequired = true, Type = type binary, BinaryIdentifier = #"Sample file (2)"]
in
  #"Parameter (2)";
shared #"Transform Sample file (2)" = let
  Source = Excel.Workbook(#"Parameter (2)", null, true),
  Navigation = Source{[Item = "Sheet1", Kind = "Sheet"]}[Data],
  #"Changed column type" = Table.TransformColumnTypes(Navigation, {{"Column1", type text}, {"Column2", type any}, {"Column3", type text}, {"Column4", type text}, {"Column5", type text}, {"Column6", type text}, {"Column7", type text}, {"Column8", type text}, {"Column9", type text}, {"Column10", type text}, {"Column11", type text}, {"Column12", type text}, {"Column13", type text}, {"Column14", type text}, {"Column15", type text}, {"Column16", type text}, {"Column17", type text}, {"Column18", type text}, {"Column19", type text}, {"Column20", type text}, {"Column21", type text}, {"Column22", type text}, {"Column23", type text}, {"Column24", type text}, {"Column25", type text}, {"Column26", type text}, {"Column27", type text}, {"Column28", type text}, {"Column29", type text}, {"Column30", type text}, {"Column31", type text}, {"Column32", type text}, {"Column33", type text}, {"Column34", type text}, {"Column35", type text}, {"Column36", type text}, {"Column37", type text}, {"Column38", type text}, {"Column39", type text}, {"Column40", type any}, {"Column41", type any}, {"Column42", type text}, {"Column43", type text}, {"Column44", type any}, {"Column45", type any}, {"Column46", type any}, {"Column47", type any}, {"Column48", type any}, {"Column49", type any}, {"Column50", type any}, {"Column51", type any}, {"Column52", type any}, {"Column53", type any}, {"Column54", type any}, {"Column55", type any}, {"Column56", type any}, {"Column57", type any}, {"Column58", type any}, {"Column59", type any}, {"Column60", type any}, {"Column61", type any}, {"Column62", type any}, {"Column63", type any}, {"Column64", type any}, {"Column65", type text}, {"Column66", type text}, {"Column67", type text}, {"Column68", type text}, {"Column69", type text}, {"Column70", type text}, {"Column71", type text}, {"Column72", type text}, {"Column73", type text}, {"Column74", type text}, {"Column75", type text}, {"Column76", type text}, {"Column77", type text}}),
  #"Removed top rows" = Table.Skip(#"Changed column type", 22),
  #"Promoted headers" = Table.PromoteHeaders(#"Removed top rows", [PromoteAllScalars = true]),
  #"Changed column type 1" = Table.TransformColumnTypes(#"Promoted headers", {{"Job Req #", type text}, {"Job Requisition Status", type text}, {"Recruiting Strategy Update", type text}, {"Skilled Trades", type text}, {"Filled by Worker", type text}, {"Job Application Source", type text}, {"Source Category", type text}, {"Source", type text}, {"Mass Load (EIB)", type text}, {"Job Posting Title", type text}, {"Job Profile", type text}, {"Primary Recruiters as of Last Assigned", type text}, {"Primary Recruiter", type text}, {"Previous Recruiter", type text}, {"Sourcer", type text}, {"Corporate Recruiting Supported", type text}, {"Corporate Recruiting Supported TEST", type text}, {"Hiring Manager", type text}, {"Business Category", type text}, {"Group", type text}, {"Service Line", type text}, {"Cost Center", type text}, {"Business Unit", type text}, {"Company", type text}, {"Supervisory Organization", type text}, {"Country", type text}, {"State", type text}, {"City", type text}, {"Location", type text}, {"Postal Code", type text}, {"Amazon Site Code", type text}, {"Region", type text}, {"Region Level 5", type text}, {"Worker Type", type text}, {"Worker Sub-Type", type text}, {"Exempt", type text}, {"Job Level", type text}, {"CWS Job Category", type text}, {"Linked Evergreen Requisition", type text}, {"Approvals to Open Requisition", Int64.Type}, {"Date Req. Initiated", type date}, {"Date Req.  Approved", type date}, {"Date Req. Assigned", type date}, {"Date First Posted", type date}, {"Date Moved to Offer Stage", type date}, {"Date Offer Accepted", type date}, {"Date Offer Completed (Admin Step)", type date}, {"Start Date", type date}, {"Days to Approve", Int64.Type}, {"Days to Assign", Int64.Type}, {"Days to Post", Int64.Type}, {"Days Frozen", Int64.Type}, {"Days to Offer", Int64.Type}, {"Days to Accept", type number}, {"Days to Start", Int64.Type}, {"Days for Total Process", type number}, {"Total Applications", Int64.Type}, {"Total TA Screens", Int64.Type}, {"Total Sent to Assessment", Int64.Type}, {"Total Sent to Hiring Mgr.", Int64.Type}, {"Total Hiring Mgr. Interviews", Int64.Type}, {"Total Rejected Offers", Int64.Type}, {"Total Failed BGC", Int64.Type}, {"Non-Dispositioned Candidates", Int64.Type}, {"Job Req Initiator", type text}, {"Primary TA Coordinator", type text}, {"HRBP", type text}, {"Job Req. Reason", type text}, {"Replacement for Worker", type text}, {"Justification", type text}, {"Diverse Hire?", type text}, {"Referred by", type text}, {"Company_1", type text}, {"Position", type text}, {"Job Profile_2", type text}, {"Job Family", type text}, {"Job Family Group", type text}})
in
  #"Changed column type 1";
[FunctionQueryBinding = "{""exemplarFormulaName"":""Transform Sample file (2)""}"]
shared #"Transform file (2)" = (#"Parameter (2)" as binary) => let
  Source = Excel.Workbook(#"Parameter (2)", null, true),
  Navigation = Source{[Item = "Sheet1", Kind = "Sheet"]}[Data],
  #"Changed column type" = Table.TransformColumnTypes(Navigation, {{"Column1", type text}, {"Column2", type any}, {"Column3", type text}, {"Column4", type text}, {"Column5", type text}, {"Column6", type text}, {"Column7", type text}, {"Column8", type text}, {"Column9", type text}, {"Column10", type text}, {"Column11", type text}, {"Column12", type text}, {"Column13", type text}, {"Column14", type text}, {"Column15", type text}, {"Column16", type text}, {"Column17", type text}, {"Column18", type text}, {"Column19", type text}, {"Column20", type text}, {"Column21", type text}, {"Column22", type text}, {"Column23", type text}, {"Column24", type text}, {"Column25", type text}, {"Column26", type text}, {"Column27", type text}, {"Column28", type text}, {"Column29", type text}, {"Column30", type text}, {"Column31", type text}, {"Column32", type text}, {"Column33", type text}, {"Column34", type text}, {"Column35", type text}, {"Column36", type text}, {"Column37", type text}, {"Column38", type text}, {"Column39", type text}, {"Column40", type any}, {"Column41", type any}, {"Column42", type text}, {"Column43", type text}, {"Column44", type any}, {"Column45", type any}, {"Column46", type any}, {"Column47", type any}, {"Column48", type any}, {"Column49", type any}, {"Column50", type any}, {"Column51", type any}, {"Column52", type any}, {"Column53", type any}, {"Column54", type any}, {"Column55", type any}, {"Column56", type any}, {"Column57", type any}, {"Column58", type any}, {"Column59", type any}, {"Column60", type any}, {"Column61", type any}, {"Column62", type any}, {"Column63", type any}, {"Column64", type any}, {"Column65", type text}, {"Column66", type text}, {"Column67", type text}, {"Column68", type text}, {"Column69", type text}, {"Column70", type text}, {"Column71", type text}, {"Column72", type text}, {"Column73", type text}, {"Column74", type text}, {"Column75", type text}, {"Column76", type text}, {"Column77", type text}}),
  #"Removed top rows" = Table.Skip(#"Changed column type", 22),
  #"Promoted headers" = Table.PromoteHeaders(#"Removed top rows", [PromoteAllScalars = true]),
  #"Changed column type 1" = Table.TransformColumnTypes(#"Promoted headers", {{"Job Req #", type text}, {"Job Requisition Status", type text}, {"Recruiting Strategy Update", type text}, {"Skilled Trades", type text}, {"Filled by Worker", type text}, {"Job Application Source", type text}, {"Source Category", type text}, {"Source", type text}, {"Mass Load (EIB)", type text}, {"Job Posting Title", type text}, {"Job Profile", type text}, {"Primary Recruiters as of Last Assigned", type text}, {"Primary Recruiter", type text}, {"Previous Recruiter", type text}, {"Sourcer", type text}, {"Corporate Recruiting Supported", type text}, {"Corporate Recruiting Supported TEST", type text}, {"Hiring Manager", type text}, {"Business Category", type text}, {"Group", type text}, {"Service Line", type text}, {"Cost Center", type text}, {"Business Unit", type text}, {"Company", type text}, {"Supervisory Organization", type text}, {"Country", type text}, {"State", type text}, {"City", type text}, {"Location", type text}, {"Postal Code", type text}, {"Amazon Site Code", type text}, {"Region", type text}, {"Region Level 5", type text}, {"Worker Type", type text}, {"Worker Sub-Type", type text}, {"Exempt", type text}, {"Job Level", type text}, {"CWS Job Category", type text}, {"Linked Evergreen Requisition", type text}, {"Approvals to Open Requisition", Int64.Type}, {"Date Req. Initiated", type date}, {"Date Req.  Approved", type date}, {"Date Req. Assigned", type date}, {"Date First Posted", type date}, {"Date Moved to Offer Stage", type date}, {"Date Offer Accepted", type date}, {"Date Offer Completed (Admin Step)", type date}, {"Start Date", type date}, {"Days to Approve", Int64.Type}, {"Days to Assign", Int64.Type}, {"Days to Post", Int64.Type}, {"Days Frozen", Int64.Type}, {"Days to Offer", Int64.Type}, {"Days to Accept", type number}, {"Days to Start", Int64.Type}, {"Days for Total Process", type number}, {"Total Applications", Int64.Type}, {"Total TA Screens", Int64.Type}, {"Total Sent to Assessment", Int64.Type}, {"Total Sent to Hiring Mgr.", Int64.Type}, {"Total Hiring Mgr. Interviews", Int64.Type}, {"Total Rejected Offers", Int64.Type}, {"Total Failed BGC", Int64.Type}, {"Non-Dispositioned Candidates", Int64.Type}, {"Job Req Initiator", type text}, {"Primary TA Coordinator", type text}, {"HRBP", type text}, {"Job Req. Reason", type text}, {"Replacement for Worker", type text}, {"Justification", type text}, {"Diverse Hire?", type text}, {"Referred by", type text}, {"Company_1", type text}, {"Position", type text}, {"Job Profile_2", type text}, {"Job Family", type text}, {"Job Family Group", type text}})
in
  #"Changed column type 1";
shared per_diem_payout_log = let
  Source = SharePoint.Files("https://cushwake1.sharepoint.com/sites/BizOpsSupport/", [ApiVersion = 15]),
  #"Filtered rows" = Table.SelectRows(Source, each Text.Contains([Folder Path], "Per Diem Payouts")),
  #"Sorted rows 1" = Table.Sort(#"Filtered rows", {{"Date created", Order.Descending}}),
  #"Kept top rows" = Table.FirstN(#"Sorted rows 1", 1),
  #"Filtered hidden files" = Table.SelectRows(#"Kept top rows", each [Attributes]?[Hidden]? <> true),
  #"Invoke custom function" = Table.AddColumn(#"Filtered hidden files", "Transform file (5)", each #"Transform file (5)"([Content])),
  #"Renamed columns" = Table.RenameColumns(#"Invoke custom function", {{"Name", "Source.Name"}}),
  #"Removed other columns" = Table.SelectColumns(#"Renamed columns", {"Source.Name", "Transform file (5)"}),
  #"Expanded table column" = Table.ExpandTableColumn(#"Removed other columns", "Transform file (5)", Table.ColumnNames(#"Transform file (5)"(#"Sample file (5)"))),
  #"Changed column type" = Table.TransformColumnTypes(#"Expanded table column", {{"Source.Name", type text}, {"Supplier Number", Int64.Type}, {"GL Account Number", type text}, {"Account", Int64.Type}, {"Subsidiary", Int64.Type}, {"Cost Center", Int64.Type}, {"Supplier Invoice Number", type text}, {"Invoice Date", type date}, {"Gross Amount", type number}, {"Remark", type text}, {"GL Amount", type number}, {"Tx Ex", type text}, {"GL Reference2", type text}, {"Tax Rate Area", type text}, {"GL Sub- ledger", type text}, {"GL Sub Type", type text}, {"Currency Code From", type text}, {"Company", Int64.Type}, {"Multi Line Number", Int64.Type}, {"Invoice Pay Item", Int64.Type}, {"Business Unit", Int64.Type}, {"Payment Handling", type text}, {"Payee Number", Int64.Type}, {"User Code", type text}, {"Column24", type any}})
in
  #"Changed column type";
shared #"Sample file (3)" = let
  Source = SharePoint.Files("https://cushwake1.sharepoint.com/sites/BizOpsSupport/", [ApiVersion = 15]),
  #"Filtered rows 1" = Table.SelectRows(Source, each Text.Contains([Folder Path], "Per Diem Payout Log")),
  #"Sorted rows" = Table.Sort(#"Filtered rows 1", {{"Date created", Order.Descending}}),
  #"Filtered hidden files" = Table.SelectRows(#"Sorted rows", each [Attributes]?[Hidden]? <> true),
  Navigation = #"Filtered hidden files"{0}[Content]
in
  Navigation;
shared #"Parameter (3)" = let
  #"Parameter (3)" = #"Sample file (3)" meta [IsParameterQuery = true, IsParameterQueryRequired = true, Type = type binary, BinaryIdentifier = #"Sample file (3)"]
in
  #"Parameter (3)";
shared #"Transform Sample file (3)" = let
  Source = Excel.Workbook(#"Parameter (3)", null, true),
  Navigation = Source{[Item = "Per Diem Payouts", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(Navigation, [PromoteAllScalars = true])
in
  #"Promoted headers";
[FunctionQueryBinding = "{""exemplarFormulaName"":""Transform Sample file (3)""}"]
shared #"Transform file (3)" = (#"Parameter (3)" as binary) => let
  Source = Excel.Workbook(#"Parameter (3)", null, true),
  Navigation = Source{[Item = "Per Diem Payouts", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(Navigation, [PromoteAllScalars = true])
in
  #"Promoted headers";
shared #"Sample file (4)" = let
  Source = SharePoint.Files("https://cushwake1.sharepoint.com/sites/BizOpsSupport/", [ApiVersion = 15]),
  #"Filtered rows 1" = Table.SelectRows(Source, each Text.Contains([Folder Path], "Per Diem Payout Log")),
  #"Sorted rows" = Table.Sort(#"Filtered rows 1", {{"Date created", Order.Descending}}),
  #"Filtered hidden files" = Table.SelectRows(#"Sorted rows", each [Attributes]?[Hidden]? <> true),
  Navigation = #"Filtered hidden files"{0}[Content]
in
  Navigation;
shared #"Parameter (4)" = let
  #"Parameter (4)" = #"Sample file (4)" meta [IsParameterQuery = true, IsParameterQueryRequired = true, Type = type binary, BinaryIdentifier = #"Sample file (4)"]
in
  #"Parameter (4)";
shared #"Transform Sample file (4)" = let
  Source = Excel.Workbook(#"Parameter (4)", null, true),
  Navigation = Source{[Item = "Per Diem Payouts", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(Navigation, [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Source.Name", type text}, {"Index", Int64.Type}, {"Supplier Number", Int64.Type}, {"GL Account Number", type text}, {"Account", Int64.Type}, {"Subsidiary", Int64.Type}, {"Cost Center", Int64.Type}, {"Supplier Invoice Number", type text}, {"Invoice Date", type date}, {"Gross Amount", type number}, {"Remark", type text}, {"GL Amount", type number}, {"Tx Ex", type text}, {"GL Reference2", type any}, {"Tax Rate Area", type any}, {"GL Sub- ledger", type any}, {"GL Sub Type", type any}, {"Currency Code From", type any}, {"Company", Int64.Type}, {"Multi Line Number", Int64.Type}, {"Invoice Pay Item", Int64.Type}, {"Business Unit", Int64.Type}, {"Payment Handling", type any}, {"Payee Number", Int64.Type}, {"User Code", type text}, {"Column24", type any}})
in
  #"Changed column type";
[FunctionQueryBinding = "{""exemplarFormulaName"":""Transform Sample file (4)""}"]
shared #"Transform file (4)" = (#"Parameter (4)" as binary) => let
  Source = Excel.Workbook(#"Parameter (4)", null, true),
  Navigation = Source{[Item = "Per Diem Payouts", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(Navigation, [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Source.Name", type text}, {"Index", Int64.Type}, {"Supplier Number", Int64.Type}, {"GL Account Number", type text}, {"Account", Int64.Type}, {"Subsidiary", Int64.Type}, {"Cost Center", Int64.Type}, {"Supplier Invoice Number", type text}, {"Invoice Date", type date}, {"Gross Amount", type number}, {"Remark", type text}, {"GL Amount", type number}, {"Tx Ex", type text}, {"GL Reference2", type any}, {"Tax Rate Area", type any}, {"GL Sub- ledger", type any}, {"GL Sub Type", type any}, {"Currency Code From", type any}, {"Company", Int64.Type}, {"Multi Line Number", Int64.Type}, {"Invoice Pay Item", Int64.Type}, {"Business Unit", Int64.Type}, {"Payment Handling", type any}, {"Payee Number", Int64.Type}, {"User Code", type text}, {"Column24", type any}})
in
  #"Changed column type";
shared #"Sample file (5)" = let
  Source = SharePoint.Files("https://cushwake1.sharepoint.com/sites/BizOpsSupport/", [ApiVersion = 15]),
  #"Filtered rows" = Table.SelectRows(Source, each Text.Contains([Folder Path], "Per Diem Payouts")),
  #"Sorted rows 1" = Table.Sort(#"Filtered rows", {{"Date created", Order.Descending}}),
  #"Kept top rows" = Table.FirstN(#"Sorted rows 1", 1),
  #"Filtered hidden files" = Table.SelectRows(#"Kept top rows", each [Attributes]?[Hidden]? <> true),
  Navigation = #"Filtered hidden files"{0}[Content]
in
  Navigation;
shared #"Parameter (5)" = let
  #"Parameter (5)" = #"Sample file (5)" meta [IsParameterQuery = true, IsParameterQueryRequired = true, Type = type binary, BinaryIdentifier = #"Sample file (5)"]
in
  #"Parameter (5)";
shared #"Transform Sample file (5)" = let
  Source = Excel.Workbook(#"Parameter (5)", null, true),
  Navigation = Source{[Item = "Historical", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(Navigation, [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Supplier Number", Int64.Type}, {"GL Account Number", type text}, {"Account", Int64.Type}, {"Subsidiary", Int64.Type}, {"Cost Center", Int64.Type}, {"Supplier Invoice Number", type text}, {"Invoice Date", type date}, {"Gross Amount", type number}, {"Remark", type text}, {"GL Amount", type number}, {"Tx Ex", type text}, {"GL Reference2", type text}, {"Tax Rate Area", type text}, {"GL Sub- ledger", type text}, {"GL Sub Type", type text}, {"Currency Code From", type text}, {"Company", Int64.Type}, {"Multi Line Number", Int64.Type}, {"Invoice Pay Item", Int64.Type}, {"Business Unit", Int64.Type}, {"Payment Handling", type text}, {"Payee Number", Int64.Type}, {"User Code", type text}, {"Column24", type any}})
in
  #"Changed column type";
[FunctionQueryBinding = "{""exemplarFormulaName"":""Transform Sample file (5)""}"]
shared #"Transform file (5)" = (#"Parameter (5)" as binary) => let
  Source = Excel.Workbook(#"Parameter (5)", null, true),
  Navigation = Source{[Item = "Historical", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(Navigation, [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Supplier Number", Int64.Type}, {"GL Account Number", type text}, {"Account", Int64.Type}, {"Subsidiary", Int64.Type}, {"Cost Center", Int64.Type}, {"Supplier Invoice Number", type text}, {"Invoice Date", type date}, {"Gross Amount", type number}, {"Remark", type text}, {"GL Amount", type number}, {"Tx Ex", type text}, {"GL Reference2", type text}, {"Tax Rate Area", type text}, {"GL Sub- ledger", type text}, {"GL Sub Type", type text}, {"Currency Code From", type text}, {"Company", Int64.Type}, {"Multi Line Number", Int64.Type}, {"Invoice Pay Item", Int64.Type}, {"Business Unit", Int64.Type}, {"Payment Handling", type text}, {"Payee Number", Int64.Type}, {"User Code", type text}, {"Column24", type any}})
in
  #"Changed column type";
