Scriptname skyrimnet_UDNG_PlayerAlias extends ReferenceAlias

skyrimnet_UDNG_Groups Property groups Auto 

Event OnInit() 
    Setup() 
EndEvent 

Event OnPlayerLoadGame()
    Setup() 
EndEvent

Function Setup()
    ; Creates the JSON list 
    ; skyrimnet_UDNG_BuildList.BuildDeviceListJson()
    groups.Setup()
    ((groups as Quest) as skyrimnet_UDNG_MCM).Setup() 
    skyrimnet_UDNG_MCM mcm = (groups as Quest) as skyrimnet_UDNG_MCM
    skynet_DeviousScript.RegisterDeviousActions(mcm)
    skynet_DeviousScript.RegisterDeviousDecorators()
EndFunction