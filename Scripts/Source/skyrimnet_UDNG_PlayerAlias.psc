Scriptname skyrimnet_UDNG_PlayerAlias extends ReferenceAlias

skyrimnet_UDNG_Groups Property groups Auto 


bool function SendPapyrusEvent(String content, Actor source, Actor target) Global
    If source==none
        SkyrimNetApi.RegisterShortLivedEvent("DDUDNG","DDUDNG",content,"{\"info\":\""+content+"\"}",30000,source,target)
    Else
        SkyrimNetApi.RegisterShortLivedEvent(source.GetActorBase().GetName()+"DDUDNG","DDUDNG",content,"{\"info\":\""+content+"\"}",30000,source,target)
    EndIf
EndFunction

Event OnInit() 
    Setup() 
EndEvent 

Event OnPlayerLoadGame()
    Setup() 
EndEvent

Function Setup()
    SkyrimNetApi.RegisterEventSchema("DDUDNG","SkyrimNet_DDUDNG Event","Events related to actors wearing DDNG devices","[{\"name\":\"info\",\"type\":0,\"required\":true,\"description\":\"Event Info\"}]","{\"recent_events\":\"{{info}}\",\"raw\":\"{{info}}\",\"compact\":\"{{info}}\",\"verbose\":\"{{info}}\"}",true,20000) 
    ; Creates the JSON list 
    ; skyrimnet_UDNG_BuildList.BuildDeviceListJson()
    groups.Setup()
    ((groups as Quest) as skyrimnet_UDNG_MCM).Setup() 
    skyrimnet_UDNG_MCM mcm = (groups as Quest) as skyrimnet_UDNG_MCM
    skynet_DeviousScript.RegisterDeviousActions(mcm)
    skynet_DeviousScript.RegisterDeviousDecorators()
    RegisterForModEvent("DeviceActorOrgasm", "OnOrgasm")
    RegisterForModEvent("UDEvent_DeviceLocked","DeviceLockedEvent")
    RegisterForModEvent("UDEvent_DeviceUnlocked","DeviceUnlockedEvent")
    RegisterForModEvent("UDEvent_DeviceMinigameBegin","OnStartMinigame")
    RegisterForModEvent("UDEvent_DeviceMinigameEnd","OnStopMinigame")
    RegisterForModEvent("UDEvent_VibDeviceEffectStart","OnVibrateStart")
    RegisterForModEvent("UDEvent_VibDeviceEffectUpdate","OnVibrateUpdate")
    RegisterForModEvent("UDEvent_VibDeviceEffectEnd","OnVibrateStop")
EndFunction

Event OnVibrateStart(String source, Form WearerF, Form Inv, Form Render,int zones,int baseStrength,int currentStrength)
    Actor Wearer = WearerF as Actor
    SendPapyrusEvent(Wearer.GetActorBase().GetName()+"'s "+Inv.getName()+" starts vibrating.",Wearer,none)
EndEvent
Event OnVibrateUpdate(String source, Form WearerF, Form Inv, Form Render,int zones,int baseStrength,int currentStrength,bool paused)
EndEvent
Event OnVibrateStop(String source, Form WearerF, Form Inv, Form Render,int zones,int baseStrength)
    Actor Wearer = WearerF as Actor
    SendPapyrusEvent(Wearer.GetActorBase().GetName()+"'s "+Inv.getName()+" stops vibrating.",Wearer,none)
EndEvent
Event DeviceLockedEvent(String source,Form WearerF,Form Inv,Form Render)
    Actor Wearer = WearerF as Actor
    SendPapyrusEvent(Wearer.GetActorBase().GetName()+" had a "+Inv.getName()+" locked on them.",Wearer,none)   
EndEvent
Event DeviceUnlockedEvent(String source,Form WearerF,Form Inv,Form Render)
    Actor Wearer = WearerF as Actor
    SendPapyrusEvent(Wearer.GetActorBase().GetName()+" had a "+Inv.getName()+" unlocked from them.",Wearer,none)   
EndEvent
Event OnStartMinigame(String source,Form WearerF,Form HelperF,String minigame,float durability, Form Inv,Form Render)
    Actor Wearer = WearerF as Actor
    Actor Helper = HelperF as Actor
    If StringUtil.Find(minigame,"Struggle") != -1
        If helper==none 
            SendPapyrusEvent(Wearer.GetActorBase().GetName()+" starts struggling to escape from their "+Inv.getName()+".",Wearer,none)
        Else
            SendPapyrusEvent(Helper.GetActorBase().GetName()+" starts struggling to help "+Wearer.GetActorBase().GetName()+" escape from their "+Inv.getName()+".",Wearer,none)
        EndIf
    EndIf
    If StringUtil.Find(minigame,"Lockpick") != -1
        If helper==none 
            SendPapyrusEvent(Wearer.GetActorBase().GetName()+" starts picking the lock on their "+Inv.getName()+".",Wearer,none)
        Else
            SendPapyrusEvent(Helper.GetActorBase().GetName()+" starts picking the lock on "+Wearer.GetActorBase().GetName()+"'s "+Inv.getName()+".",Wearer,none)
        EndIf
    EndIf
    If StringUtil.Find(minigame,"Cutting") != -1
        If helper==none 
            SendPapyrusEvent(Wearer.GetActorBase().GetName()+" starts trying to cut off their "+Inv.getName()+".",Wearer,none)
        Else
            SendPapyrusEvent(Helper.GetActorBase().GetName()+" starts trying to cut off "+Wearer.GetActorBase().GetName()+"'s "+Inv.getName()+".",Wearer,none)
        EndIf
    EndIf
    If StringUtil.Find(minigame,"KeyUnlock") != -1
        If helper==none 
            SendPapyrusEvent(Wearer.GetActorBase().GetName()+" starts trying to unlock their "+Inv.getName()+" with a key.",Wearer,none)
        Else
            SendPapyrusEvent(Helper.GetActorBase().GetName()+" starts trying to unlock "+Wearer.GetActorBase().GetName()+"'s "+Inv.getName()+" with a key.",Wearer,none)
        EndIf
    EndIf
    If StringUtil.Find(minigame,"RepairLock") != -1
        If helper==none 
            SendPapyrusEvent(Wearer.GetActorBase().GetName()+" starts trying to repair the jammed lock on their "+Inv.getName()+".",Wearer,none)
        Else
            SendPapyrusEvent(Helper.GetActorBase().GetName()+" starts trying to repair the jammed lock on "+Wearer.GetActorBase().GetName()+"'s "+Inv.getName()+".",Wearer,none)
        EndIf
    EndIf
EndEvent
Event OnStopMinigame(String source,Form WearerF,Form HelperF,String minigame,float durability,bool isUnlocked,Form Inv,Form Render)
    Actor Wearer = WearerF as Actor
    Actor Helper = HelperF as Actor
    If isUnlocked
        If helper==none 
            SendPapyrusEvent(Wearer.GetActorBase().GetName()+" finally escaped from their "+Inv.getName()+".",Wearer,none)
        Else
            SendPapyrusEvent(Helper.GetActorBase().GetName()+" finally helped "+Wearer.GetActorBase().GetName()+" escape from their "+Inv.getName()+".",Wearer,none)
        EndIf
    Else
        If helper==none 
            SendPapyrusEvent(Wearer.GetActorBase().GetName()+" failed to escape from their "+Inv.getName()+".",Wearer,none)
        Else
            SendPapyrusEvent(Helper.GetActorBase().GetName()+" failed to help "+Wearer.GetActorBase().GetName()+" escape from their "+Inv.getName()+".",Wearer,none)
        EndIf

    EndIf

EndEvent
Event OnOrgasm(string eventName, string strArg, float numArg, Form sender)
    SendPapyrusEvent(strArg+" is cumming!",none,none)
EndEvent
