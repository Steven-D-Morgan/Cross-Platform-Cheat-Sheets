Regional = 
VAR
SecondMgrTitle = LOOKUPVALUE(EmployeeList_RosterFull[wd_manager_title], EmployeeList_RosterFull[wd_id],GoalsActual[PeoplePortalRoster.mgr_id_wd])
VAR
SecondMgrName = LOOKUPVALUE(EmployeeList_RosterFull[wd_manager_name], EmployeeList_RosterFull[wd_id],GoalsActual[PeoplePortalRoster.mgr_id_wd])
Return
        SWITCH( TRUE()
            ,GoalsActual[business_title] = "TITLE HERE", "NAME HERE"
            ,GoalsActual[business_title] = "TITLE HERE", "NAME HERE"
            ,GoalsActual[Name] = "TITLE HERE", "NAME HERE"
            ,GoalsActual[Name] = "TITLE HERE", "NAME HERE"
            ,LEFT(GoalsActual[building]) = "V" && GoalsActual[PeoplePortalRoster.mgr_job] = "RMM", GoalsActual[PeoplePortalRoster.mgr_name_wd]
            ,LEFT(GoalsActual[building]) = "V" && SecondMgrTitle = "RMM", SecondMgrName
            ,COALESCE(LOOKUPVALUE(SiteList[REGIONAL LEADER], SiteList[Site], GoalsActual[building]),"Central Team")
        )