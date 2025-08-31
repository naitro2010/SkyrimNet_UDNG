Scriptname skynet_DeviousScript
bool bHasDD = False
bool bHasDDExpansion = False

bool function SendPapyrusEvent(String content, Actor source, Actor target) Global
    SkyrimNetApi.DirectNarration(content,source,none)
EndFunction


Actor function GetNearestAdultActor() Global
    return none
EndFunction

function LockDeviceOnActor(Actor akOriginator, string paramsJson, Form inventoryDevice) Global
    if akOriginator.IsChild()
        return
    endif
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    if akTarget.IsChild()
        return
    endif
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
    Armor deviceInventory=(inventoryDevice as Armor);  
    libs_local.LockDevice(akTarget,deviceInventory,true)
    return
EndFunction

bool Function DDNG_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    if akActor.IsChild()
        return false
    endif
    return true;
EndFunction

Function RegisterDeviousActions() global

SkyrimNetApi.RegisterSubCategory("BDSMUNLOCK","unlock something on an actor","skynet_DeviousScript","DDNG_IsEligible","",1,"","UNEQUIP")

           SkyrimNetApi.RegisterAction("ExtCmdUnequipCollar", "Remove a collar on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipCollar_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipCollar", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipBelt", "Remove a Chastity Belt on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBelt_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBelt", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipGag", "Remove a Gag on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipGag_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipGag", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipBinder", "Remove an Armbinder on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBinder_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBinder", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipYoke", "Remove a yoke on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipYoke_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipYoke", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipElbowTie", "Remove an elbow tie on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipElbowTie_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipElbowTie", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipStraitJacket", "Remove a strait jacket on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipStraitJacket_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipStraitJacket", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipCorset", "Remove a corset on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipCorset_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipCorset", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipHood", "Remove a hood on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipHood_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipHood", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipHobbleSkirt", "Remove a hobble skirt on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipHobbleSkirt_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipHobbleSkirt", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipGloves", "Remove gloves on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipGloves_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipGloves", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipSuit", "Remove a suit on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipSuit_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipSuit", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipHarness", "Remove a harness on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipHarness_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipHarness", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipBlindfold", "Remove a blindfold on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBlindfold_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBlindfold", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipAnkleShackles", "Remove ankle shackles on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipAnkleShackles_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipAnkleShackles", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipClamps", "Remove clamps on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipClamps_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipClamps", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipPlugVaginal", "Remove a vaginal plug on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPlugVaginal_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPlugVaginal", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipPlugAnal", "Remove an anal plug on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPlugAnal_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPlugAnal", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipPiercingsNipple", "Remove nipple piercings on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPiercingsNipple_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPiercingsNipple", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipPiercingsVaginal", "Remove vaginal piercings on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPiercingsVaginal_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPiercingsVaginal", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipArmCuffs", "Remove arm cuffs on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipArmCuffs_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipArmCuffs", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipLegCuffs", "Remove leg cuffs on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipLegCuffs_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipLegCuffs", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipBra", "Remove a bra on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBra_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBra", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipPetSuit", "Remove a pet suit on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPetSuit_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPetSuit", \
                                    "", "PAPYRUS_NESTED_ACTION", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 

           SkyrimnetApi.RegisterDecorator("devious_stuff", "skynet_DeviousScript", "DeviousContextDecorator")                 
EndFunction



bool Function ExtCmdUnequipCollar_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipCollar_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipCollar_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipCollar(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipCollar called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipCollar target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousCollar))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Collar on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipBelt_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipBelt_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipBelt_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipBelt(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipBelt called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipBelt target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousBelt))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Chastity Belt on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipGag(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipGag called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipGag target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousGag))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Gag on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipBinder_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipBinder_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipBinder_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipBinder(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipBinder called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipBinder target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousHeavyBondage))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the heavy bondage device on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipYoke_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipYoke_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipYoke_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipYoke(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipYoke called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipYoke target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousYoke))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Yoke on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipElbowTie_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipElbowTie_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipElbowTie_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipElbowTie(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipElbowTie called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipElbowTie target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousHeavyBondage))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the heavy bondage on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipStraitJacket_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipStraitJacket_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipStraitJacket_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipStraitJacket(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipStraitJacket called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipStraitJacket target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousHeavyBondage))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the heavy bondage on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipCorset_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipCorset_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipCorset_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipCorset(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipCorset called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipCorset target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousCorset))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Corset on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipHood_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipHood_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipHood_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipHood(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipHood called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipHood target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousHood))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Hood on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipHobbleSkirt_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipHobbleSkirt_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipHobbleSkirt_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipHobbleSkirt(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipHobbleSkirt called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipHobbleSkirt target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousHobbleSkirt))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Hobble Skirt on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipGloves_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipGloves_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipGloves_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipGloves(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipGloves called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipGloves target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousGloves))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Gloves on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipSuit_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipSuit_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipSuit_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipSuit(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipSuit called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipSuit target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousSuit))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Suit on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipHarness_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipHarness_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipHarness_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipHarness(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipHarness called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipHarness target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousHarness))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Harness on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipBlindfold_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipBlindfold_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipBlindfold_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipBlindfold(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipBlindfold called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipBlindfold target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousBlindfold))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Blindfold on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipAnkleShackles_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipAnkleShackles_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipAnkleShackles_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipAnkleShackles(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipAnkleShackles called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipAnkleShackles target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousAnkleShackles))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Ankle Shackles on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipClamps_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipClamps_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipClamps_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipClamps(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipClamps called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipClamps target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousClamps))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Clamps on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipPlugVaginal_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPlugVaginal_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipPlugVaginal_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipPlugVaginal(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPlugVaginal called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPlugVaginal target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousPlugVaginal))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Vaginal Plug on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipPlugAnal_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPlugAnal_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipPlugAnal_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipPlugAnal(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPlugAnal called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPlugAnal target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousPlugAnal))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Anal Plug on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipPiercingsNipple_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPiercingsNipple_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipPiercingsNipple_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipPiercingsNipple(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPiercingsNipple called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPiercingsNipple target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousPiercingsNipple))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Nipple Piercings on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipPiercingsVaginal_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPiercingsVaginal_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipPiercingsVaginal_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipPiercingsVaginal(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPiercingsVaginal called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPiercingsVaginal target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousPiercingsVaginal))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Vaginal Piercings on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipArmCuffs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipArmCuffs_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipArmCuffs_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipArmCuffs(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipArmCuffs called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipArmCuffs target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousArmCuffs))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Arm Cuffs on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipLegCuffs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipLegCuffs_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipLegCuffs_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipLegCuffs(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipLegCuffs called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipLegCuffs target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousLegCuffs))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Leg Cuffs on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipBra_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipBra_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipBra_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipBra(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipBra called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipBra target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousBra))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Bra on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction

bool Function ExtCmdUnequipPetSuit_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPetSuit_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] ExtCmdUnequipPetSuit_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function ExtCmdUnequipPetSuit(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())

    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs


    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPetSuit called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPetSuit target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousPetSuit))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Pet Suit on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

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


String Function DeviousContextDecorator(Actor akSpeaker) global
  zadLibs libs=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
  string deviousContext = " "
  if (akSpeaker == none)
    Return " "
  EndIF
  if akSpeaker.IsChild()
    Return " "
  EndIf
  Debug.Trace("[SkyrimNet] (DeviousScript) DeviousContextDecorator called with decoratorId: "+"and akActor: " + akSpeaker)
  Actor[] actor_list=MiscUtil.ScanCellNPCs(akSpeaker,radius=1200.0)
  Int actor_i=0
  While (actor_i <= actor_list.length)
  
    Actor akActor=Game.GetPlayer()
    If actor_i < actor_list.length
        akActor=actor_list[actor_i]
    EndIf
    if !(akActor == akSpeaker)
    if !(akActor == none)
        if !(akActor.IsChild())
            string actorName = akActor.GetLeveledActorBase().GetName()
            if akActor.WornHasKeyword(libs.zad_DeviousPlugVaginal)
              deviousContext=deviousContext+"\n"+(actorName + " has a plug in her pussy capable of powerful vibrations.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousPlugAnal)
              deviousContext=deviousContext+"\n"+(actorName + " has a plug in thier ass capable of powerful vibrations.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousBelt)
              deviousContext=deviousContext+"\n"+(actorName + " has a chastity belt locked over her pussy")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousCollar)
              deviousContext=deviousContext+"\n"+(actorName + " is wearing a collar marking her as someone's property.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousPiercingsNipple)
              deviousContext=deviousContext+"\n"+(actorName + " is wearing nipple piercings capable of powerful vibration.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousPiercingsVaginal)
              deviousContext=deviousContext+"\n"+(actorName + " is wearing a clitoral ring capable of powerful vibration.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousArmCuffs)
              deviousContext=deviousContext+"\n"+(actorName + " is wearing arm cuffs on each arm.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousLegCuffs)
              deviousContext=deviousContext+"\n"+(actorName + " is wearing leg cuffs on each leg.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousBra)
              deviousContext=deviousContext+"\n"+(actorName + "'s breasts are locked under a chastity bra.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousArmbinder)
              deviousContext=deviousContext+"\n"+(actorName + "'s hands are secured behind her back by an armbinder, leaving her helpless.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousYoke)
              deviousContext=deviousContext+"\n"+(actorName + "'s hands and neck are locked in an uncomfortable yoke, leaving her helpless.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousElbowTie)
              deviousContext=deviousContext+"\n"+(actorName + "'s arms are tied behind her back ina strict elbow tie, leaving her helpless.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousPetSuit)
              deviousContext=deviousContext+"\n"+(actorName + " is wearing a full-body suit made out of shiny latex (Referred to as Ebonite) leaving nothing to the imagination.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousStraitJacket)
              deviousContext=deviousContext+"\n"+(actorName + "'s arms are secured by a strait jacket, leaving her helpless.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousCorset)
              deviousContext=deviousContext+"\n"+(actorName + " is wearing a corset around her waist.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousHood)
              deviousContext=deviousContext+"\n"+(actorName + " is wearing a hood over her head.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousHobbleSkirt)
              deviousContext=deviousContext+"\n"+(actorName + " is wearing a confining hobble-skirt that is restricting her movements.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousGloves)
              deviousContext=deviousContext+"\n"+(actorName + " is wearing a a pair of locking gloves.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousSuit)
              deviousContext=deviousContext+"\n"+(actorName + " is wearing skin tight body-suit.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousGag)
              deviousContext=deviousContext+"\n"+(actorName + " is gagged and is drooling.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousGagPanel)
              deviousContext=deviousContext+"\n"+(actorName + " is gagged with a panel-gag that leaves her tongue exposed and is unable to close their mouth.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousGagLarge)
              deviousContext=deviousContext+"\n"+(actorName + " is gagged with a large gag and cannot speak clearly.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousHarness)
              deviousContext=deviousContext+"\n"+(actorName + " is wearing a form-fitting leather harness.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousBlindfold)
              deviousContext=deviousContext+"\n"+(actorName + " is blindfolded and cannot see where she is going.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousAnkleShackles)
              deviousContext=deviousContext+"\n"+(actorName + " is wearing a set of ankle shackles, restricting her ability to move quickly.")
            EndIf
            if akActor.WornHasKeyword(libs.zad_DeviousClamps)
              deviousContext=deviousContext+"\n"+(actorName + " is wearing a set of painful nipples clamps.")
            EndIf
        EndIf
    EndIf
    EndIf
    actor_i = actor_i+1
    
  EndWhile
  return deviousContext
EndFunction

