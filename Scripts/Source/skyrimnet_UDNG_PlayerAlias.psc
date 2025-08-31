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
    skynet_DeviousScript.RegisterDeviousActions()
    skynet_DeviousScript.RegisterDeviousDecorators()
EndFunction