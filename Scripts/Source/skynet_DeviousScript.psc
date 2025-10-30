Scriptname skynet_DeviousScript
bool bHasDD = False
bool bHasDDExpansion = False

bool function SendPapyrusEvent(String content, Actor source, Actor target) Global
    If source==none
        SkyrimNetApi.RegisterShortLivedEvent("DDUDNG","DDUDNG",content,"{\"info\":\""+content+"\"}",30000,source,target)
    Else
        SkyrimNetApi.RegisterShortLivedEvent(source.GetActorBase().GetName()+"DDUDNG","DDUDNG",content,"{\"info\":\""+content+"\"}",30000,source,target)
    EndIf
EndFunction



Actor function GetNearestAdultActor() Global
    return none
EndFunction

function LockDeviceOnActor(Actor akOriginator, string paramsJson, Form inventoryDevice) Global
    if akOriginator.IsChild()
        return
    endif
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    if !TargetAllowed(akOriginator, akTarget, true) || akTarget.IsChild()
        return
    endif
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
    Armor deviceInventory=(inventoryDevice as Armor);  
    libs_local.LockDevice(akTarget,deviceInventory,false)
    SendPapyrusEvent(akOriginator.GetDisplayName()+" locked a "+deviceInventory.GetName()+" on "+akTarget.GetDisplayName(),akOriginator,none) 
    return
EndFunction

bool Function DDNG_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    if akActor.IsChild()
        return false
    endif
    return true;
EndFunction

Function RegisterDeviousActions(skyrimnet_UDNG_MCM mcm) global

    String refinement = "" 
    if !mcm.npc_unequip_others_allowed
        refinement = "other NPCs"
    endif 
    if !mcm.npc_unequip_self_allowed
        if refinement == "" 
            refinement += ", "
        endif 
        refinement = "themselves"
    endif 
    if !mcm.npc_unequip_player_allowed
        if refinement == "" 
            refinement += ", "
        endif 
        refinement = "player"
    endif 

    if refinement != ""
        refinement = "; target may not be: "+refinement
    endif 


    SkyrimNetApi.RegisterSubCategory("BDSMUNLOCK","unlock a gag, collar, chastity belt, or other BDSM device on a target","skynet_DeviousScript","DDNG_IsEligible","",1,"","UNEQUIP")

           SkyrimNetApi.RegisterAction("ExtCmdUnequipCollar", "Remove a collar on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipCollar_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipCollar", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipBelt", "Remove a Chastity Belt on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipBelt_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBelt", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipGag", "Remove a Gag on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipGag_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipGag", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipBinder", "Remove an Armbinder on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipBinder_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBinder", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipYoke", "Remove a yoke on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipYoke_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipYoke", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipElbowTie", "Remove an elbow tie on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipElbowTie_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipElbowTie", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipStraitJacket", "Remove a strait jacket on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipStraitJacket_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipStraitJacket", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipCorset", "Remove a corset on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipCorset_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipCorset", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipHood", "Remove a hood on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipHood_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipHood", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipHobbleSkirt", "Remove a hobble skirt on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipHobbleSkirt_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipHobbleSkirt", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipGloves", "Remove gloves on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipGloves_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipGloves", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipSuit", "Remove a suit on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipSuit_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipSuit", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipHarness", "Remove a harness on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipHarness_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipHarness", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipBlindfold", "Remove a blindfold on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipBlindfold_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBlindfold", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipAnkleShackles", "Remove ankle shackles on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipAnkleShackles_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipAnkleShackles", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipClamps", "Remove clamps on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipClamps_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipClamps", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipPlugVaginal", "Remove a vaginal plug on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipPlugVaginal_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPlugVaginal", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipPlugAnal", "Remove an anal plug on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipPlugAnal_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPlugAnal", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipPiercingsNipple", "Remove nipple piercings on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipPiercingsNipple_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPiercingsNipple", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipPiercingsVaginal", "Remove vaginal piercings on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipPiercingsVaginal_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPiercingsVaginal", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipArmCuffs", "Remove arm cuffs on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipArmCuffs_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipArmCuffs", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipLegCuffs", "Remove leg cuffs on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipLegCuffs_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipLegCuffs", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipBra", "Remove a bra on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipBra_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBra", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipPetSuit", "Remove a pet suit on the target actor"+refinement, \
                                    "skynet_DeviousScript", "ExtCmdUnequipPetSuit_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPetSuit", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
                
EndFunction

; -------------------------------- 
; Helper Function 
; -------------------------------- 

bool Function TargetAllowed(Actor akOriginator, Actor akTarget, bool locking) global 
    skyrimnet_UDNG_MCM mcm=Game.GetFormFromFile(0x00800, "SkyrimNetUDNG.esp") as skyrimnet_UDNG_MCM 
    if locking
        if akTarget == Game.GetPlayer() 
            if !mcm.npc_equip_player_allowed 
                Debug.Trace("[SkyrimNet_UDNG] TargetAllowed player is not allowed")
                return false 
            endif 
        elseif akTarget == akOriginator 
            if !mcm.npc_equip_self_allowed 
                Debug.Trace("[SkyrimNet_UDNG] TargetAllowed self is not allowed")
                return false 
            endif 
        elseif !mcm.npc_equip_others_allowed 
            Debug.Trace("[SkyrimNet_UDNG] TargetAllowed other is not allowed")
            return false 
        endif 
    else
        if akTarget == Game.GetPlayer() 
            if !mcm.npc_unequip_player_allowed 
                Debug.Trace("[SkyrimNet_UDNG] TargetAllowed player is not allowed")
                return false 
            endif 
        elseif akTarget == akOriginator 
            if !mcm.npc_unequip_self_allowed 
                Debug.Trace("[SkyrimNet_UDNG] TargetAllowed self is not allowed")
                return false 
            endif 
        elseif !mcm.npc_unequip_others_allowed 
            Debug.Trace("[SkyrimNet_UDNG] TargetAllowed other is not allowed")
            return false 
        endif 
    endif
    return true 
EndFunction 

Keyword Function Name_to_Keyword(zadlibs libs_local, String name) global
    if name == "collar" 
        return libs_local.zad_DeviousCollar
    elseif name == "belt"
        return libs_local.zad_DeviousBelt
    elseif name == "Gag"
        return libs_local.zad_DeviousGag
    elseif name == "Binder"
        return libs_local.zad_DeviousHeavyBondage
    elseif name == "Yoke"
        return libs_local.zad_DeviousYoke
    elseif name == "ElbowTie"
        return libs_local.zad_DeviousHeavyBondage
    elseif name == "StraitJacket"
        return libs_local.zad_DeviousHeavyBondage
    elseif name == "Corset"
        return libs_local.zad_DeviousCorset
    elseif name == "Hood"
        return libs_local.zad_DeviousHood
    elseif name == "HobbleSkirt"
        return libs_local.zad_DeviousHobbleSkirt
    elseif name == "Gloves"
        return libs_local.zad_DeviousGloves
    elseif name == "Suit"
        return libs_local.zad_DeviousSuit
    elseif name == "Harness"
        return libs_local.zad_DeviousHarness
    elseif name == "Blindfold"
        return libs_local.zad_DeviousBlindfold
    elseif name == "AnkleShackles"
        return libs_local.zad_DeviousAnkleShackles
    elseif name == "Clamps"
        return libs_local.zad_DeviousClamps
    elseif name == "PlugVaginal"
        return libs_local.zad_DeviousPlugVaginal
    elseif name == "PlugAnal"
        return libs_local.zad_DeviousPlugAnal
    elseif name == "PiercingsNipple"
        return libs_local.zad_DeviousPiercingsNipple
    elseif name == "PiercingsVaginal"
        return libs_local.zad_DeviousPiercingsVaginal
    elseif name == "ArmCuffs"
        return libs_local.zad_DeviousArmCuffs
    elseif name == "LegCuffs"
        return libs_local.zad_DeviousLegCuffs
    elseif name == "Bra"
        return libs_local.zad_DeviousBra
    elseif name == "PetSuit"
        return libs_local.zad_DeviousPetSuit
    endif 
    return None 
EndFunction 

bool Function ExtCmdUnequip_IsEligible(Actor akActor, String device_name) global
;    Debug.Trace("[SkyrimNet_UDNG] ExtCmdUnequip_IsEligible " + akActor.GetDisplayName()+" "+device_name)

    if akActor.IsInCombat()
        Debug.Trace("[SkyrimNet_UDNG] ExtCmdUnequip_IsEligible: " + akActor.GetDisplayName() + " is in combat. Not Eligible.")
        return false
    endif

    return true
EndFunction

Function ExtCmdUnequip(Actor akOriginator, String paramsJson, String name ) global 
    Actor player = Game.GetPlayer() 
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", player)
    String debug_target = SkyrimNetApi.GetJsonString(paramsJson, "debug_target","")
    Debug.Trace("[SkyrimNet_UDNG] paramsJson: "+paramsJson+" name: "+name+" debug_target:"+debug_target)
    ; ------ Used to Test This function, could be commented out in final build 
    ; You can't use the GetJsonActor, since the nearby targets are preloaded by the C code 
    if debug_target != "" 
        if debug_target == "self" 
            akTarget = akOriginator
        elseif debug_target == "player" 
            akTarget = player 
        else
            akTarget = None 
            Actor[] actors = MiscUtil.ScanCellActors(player, 1000)
            int j = actors.length - 1 
            while 0 <= j && akTarget == None 
                if actors[j].GetDisplayName() == debug_target
                    akTarget = actors[j] 
                endif 
                j -= 1 
            endwhile 

            if akTarget == None 
                Debug.Notification("failed to find other:"+debug_target)
                return 
            endif 
        endif 
    endif 
    if !TargetAllowed(akOriginator, akTarget,false) 
        return 
    endif 

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
    Keyword kword = Name_to_Keyword(libs_local, name) 
    if kword == None 
        SendPapyrusEvent("ExCmdUnequip unknown device name:"+name,akOriginator,none) 
        return 
    endif 
    if !akTarget.WornHasKeyword(kword)
        Debug.Trace("[SkyrimNet_UDNG] ExCmdUnequip target not wearing keyword "+kword) 
        return 
    endif 

    String o_name = akOriginator.GetDisplayName() 
    String t_name = akTarget.GetDisplayName() 
    Debug.Trace("[SkyrimNet_UDNG] ExtCmdUnequip "+o_name+" > "+t_name+" with "+name)
    if (libs_local.UnlockDeviceByKeyword(akTarget,kword))
        ; was causing `warning: Assigning None to a non-object variable named "::temp57"`
        SendPapyrusEvent(o_name+" unlocks a "+name+" on "+t_name,akOriginator,none) 
        Debug.Trace("[SkyrimNet_UDNG] ExtCmdUnequip success")
    else 
        SendPapyrusEvent(o_name+" tried, and failed, to unlock a "+name+" on "+t_name,akOriginator,none) 
        Debug.Trace("[SkyrimNet_UDNG] ExtCmdUnequip failed")
    EndIf
EndFunction

; -------------------------------- 
; Device Functions 
; -------------------------------- 

; -----
; Collar
; ----- 
bool Function ExtCmdUnequipCollar_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "collar") 
EndFunction

Function ExtCmdUnequipCollar(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "collar")
EndFunction 

; -----
; Belt
; ----- 
bool Function ExtCmdUnequipBelt_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "Belt") 
EndFunction

Function ExtCmdUnequipBelt(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "Belt")
EndFunction 

; -----
; Gag
; ----- 
bool Function ExtCmdUnequipGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "Gag") 
EndFunction

Function ExtCmdUnequipGag(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "Gag")
EndFunction 

; -----
; Binder
; ----- 
bool Function ExtCmdUnequipBinder_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "Binder") 
EndFunction

Function ExtCmdUnequipBinder(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "Binder")
EndFunction 

; -----
; Yoke
; ----- 
bool Function ExtCmdUnequipYoke_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "Yoke") 
EndFunction

Function ExtCmdUnequipYoke(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "Yoke")
EndFunction 

; -----
; ElbowTie
; ----- 
bool Function ExtCmdUnequipElbowTie_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "ElbowTie") 
EndFunction

Function ExtCmdUnequipElbowTie(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "ElbowTie")
EndFunction 

; -----
; StraitJacket
; ----- 
bool Function ExtCmdUnequipStraitJacket_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "StraitJacket") 
EndFunction

Function ExtCmdUnequipStraitJacket(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "StraitJacket")
EndFunction 

; -----
; Corset
; ----- 
bool Function ExtCmdUnequipCorset_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "Corset") 
EndFunction

Function ExtCmdUnequipCorset(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "Corset")
EndFunction 

; -----
; Hood
; ----- 
bool Function ExtCmdUnequipHood_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "Hood") 
EndFunction

Function ExtCmdUnequipHood(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "Hood")
EndFunction 

; -----
; HobbleSkirt
; ----- 
bool Function ExtCmdUnequipHobbleSkirt_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "HobbleSkirt") 
EndFunction

Function ExtCmdUnequipHobbleSkirt(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "HobbleSkirt")
EndFunction 

; -----
; Gloves
; ----- 
bool Function ExtCmdUnequipGloves_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "Gloves") 
EndFunction

Function ExtCmdUnequipGloves(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "Gloves")
EndFunction 

; -----
; Suit
; ----- 
bool Function ExtCmdUnequipSuit_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "Suit") 
EndFunction

Function ExtCmdUnequipSuit(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "Suit")
EndFunction 

; -----
; Harness
; ----- 
bool Function ExtCmdUnequipHarness_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "Harness") 
EndFunction

Function ExtCmdUnequipHarness(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "Harness")
EndFunction 

; -----
; Blindfold
; ----- 
bool Function ExtCmdUnequipBlindfold_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "Blindfold") 
EndFunction

Function ExtCmdUnequipBlindfold(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "Blindfold")
EndFunction 

; -----
; AnkleShackles
; ----- 
bool Function ExtCmdUnequipAnkleShackles_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "AnkleShackles") 
EndFunction

Function ExtCmdUnequipAnkleShackles(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "AnkleShackles")
EndFunction 

; -----
; Clamps
; ----- 
bool Function ExtCmdUnequipClamps_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "Clamps") 
EndFunction

Function ExtCmdUnequipClamps(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "Clamps")
EndFunction 

; -----
; PlugVaginal
; ----- 
bool Function ExtCmdUnequipPlugVaginal_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "PlugVaginal") 
EndFunction

Function ExtCmdUnequipPlugVaginal(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "PlugVaginal")
EndFunction 

; -----
; PlugAnal
; ----- 
bool Function ExtCmdUnequipPlugAnal_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "PlugAnal") 
EndFunction

Function ExtCmdUnequipPlugAnal(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "PlugAnal")
EndFunction 

; -----
; PiercingsNipple
; ----- 
bool Function ExtCmdUnequipPiercingsNipple_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "PiercingsNipple") 
EndFunction

Function ExtCmdUnequipPiercingsNipple(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "PiercingsNipple")
EndFunction 

; -----
; PiercingsVaginal
; ----- 
bool Function ExtCmdUnequipPiercingsVaginal_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "PiercingsVaginal") 
EndFunction

Function ExtCmdUnequipPiercingsVaginal(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "PiercingsVaginal")
EndFunction 

; -----
; ArmCuffs
; ----- 
bool Function ExtCmdUnequipArmCuffs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "ArmCuffs") 
EndFunction

Function ExtCmdUnequipArmCuffs(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "ArmCuffs")
EndFunction 

; -----
; LegCuffs
; ----- 
bool Function ExtCmdUnequipLegCuffs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "LegCuffs") 
EndFunction

Function ExtCmdUnequipLegCuffs(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "LegCuffs")
EndFunction 

; -----
; Bra
; ----- 
bool Function ExtCmdUnequipBra_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "Bra") 
EndFunction

Function ExtCmdUnequipBra(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "Bra")
EndFunction 

; -----
; PetSuit
; ----- 
bool Function ExtCmdUnequipPetSuit_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "PetSuit") 
EndFunction

Function ExtCmdUnequipPetSuit(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "PetSuit")
EndFunction 

;-------------------------------------------------------------------
; Decorators
;-------------------------------------------------------------------

Function RegisterDeviousDecorators() global 
    SkyrimNetApi.RegisterDecorator("ddudng_get_devices", "skynet_DeviousScript","ddudng_get_devices")
EndFunction 

String Function ddudng_get_devices(Actor akSpeaker) global 
    zadLibs zlibs =Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs

    Armor[] devices = new Armor[43]
    String[] names = new String[43]
    devices[0] = zlibs.armbinder
    names[0] = "armbinder"
    devices[1] = zlibs.beltPadded
    names[1] = "beltPadded"
    devices[2] = zlibs.beltIron
    names[2] = "beltIron"
    devices[3] = zlibs.plugIron
    names[3] = "plugIron"
    devices[4] = zlibs.plugPrimitive
    names[4] = "plugPrimitive"
    devices[5] = zlibs.plugInflatable
    names[5] = "plugInflatable"
    devices[6] = zlibs.plugSoulgem
    names[6] = "plugSoulgem"
    devices[7] = zlibs.braPadded
    names[7] = "braPadded"
    devices[8] = zlibs.cuffsPaddedArms
    names[8] = "cuffsPaddedArms"
    devices[9] = zlibs.cuffsPaddedLegs
    names[9] = "cuffsPaddedLegs"
    devices[10] = zlibs.cuffsPaddedCollar
    names[10] = "cuffsPaddedCollar"
    devices[11] = zlibs.cuffsPaddedComplete
    names[11] = "cuffsPaddedComplete"
    devices[12] = zlibs.collarPosture
    names[12] = "collarPosture"
    devices[13] = zlibs.armbinder
    names[13] = "armbinder"
    devices[14] = zlibs.gagBall
    names[14] = "gagBall"
    devices[15] = zlibs.gagPanel
    names[15] = "gagPanel"
    devices[16] = zlibs.gagRing
    names[16] = "gagRing"
    devices[17] = zlibs.gagStrapBall
    names[17] = "gagStrapBall"
    devices[18] = zlibs.gagStrapRing
    names[18] = "gagStrapRing"
    devices[19] = zlibs.blindfold
    names[19] = "blindfold"
    devices[20] = zlibs.cuffsLeatherArms
    names[20] = "cuffsLeatherArms"
    devices[21] = zlibs.cuffsLeatherLegs
    names[21] = "cuffsLeatherLegs"
    devices[22] = zlibs.cuffsLeatherCollar
    names[22] = "cuffsLeatherCollar"
    devices[23] = zlibs.harnessBody
    names[23] = "harnessBody"
    devices[24] = zlibs.harnessCollar
    names[24] = "harnessCollar"
    devices[25] = zlibs.collarPostureLeather
    names[25] = "collarPostureLeather"
    devices[26] = zlibs.plugIronVag
    names[26] = "plugIronVag"
    devices[27] = zlibs.plugIronAn
    names[27] = "plugIronAn"
    devices[28] = zlibs.plugPrimitiveVag
    names[28] = "plugPrimitiveVag"
    devices[29] = zlibs.plugPrimitiveAn
    names[29] = "plugPrimitiveAn"
    devices[30] = zlibs.plugSoulgemVag
    names[30] = "plugSoulgemVag"
    devices[31] = zlibs.plugSoulgemAn
    names[31] = "plugSoulgemAn"
    devices[32] = zlibs.plugInflatableVag
    names[32] = "plugInflatableVag"
    devices[33] = zlibs.plugInflatableAn
    names[33] = "plugInflatableAn"
    devices[34] = zlibs.beltPaddedOpen
    names[34] = "beltPaddedOpen"
    devices[35] = zlibs.plugChargeableVag
    names[35] = "plugChargeableVag"
    devices[36] = zlibs.plugTrainingVag
    names[36] = "plugTrainingVag"
    devices[37] = zlibs.collarRestrictive
    names[37] = "collarRestrictive"
    devices[38] = zlibs.corset
    names[38] = "corset"
    devices[39] = zlibs.glovesRestrictive
    names[39] = "glovesRestrictive"
    devices[40] = zlibs.yoke
    names[40] = "yoke"
    devices[41] = zlibs.piercingVSoul
    names[41] = "piercingVSoul"
    devices[42] = zlibs.piercingNSoul
    names[42] = "piercingNSoul"

    String devices_str = "" 
    int i = devices.length
    while 0 < i
        i -= 1
        if akSpeaker.GetItemCount(devices[i]) > 0
            if devices_str != "" 
                devices_str += ","
            endif 
            devices_str += "\""+names[i]+"\""
        endif 
    endwhile 
    return "["+devices_str+"]"
EndFunction



