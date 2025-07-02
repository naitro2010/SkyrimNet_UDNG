Scriptname skynet_DeviousScript
bool bHasDD = False
bool bHasUD = False
bool bHasDDExpansion = False

bool function SendPapyrusEvent(String content, Actor source, Actor target) Global
    SkyrimNetApi.DirectNarration(content,source,none)
EndFunction




Actor function GetNearestAdultActor() Global
    return none
EndFunction



Function ActivateVibrator(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

    if (!akOriginator)
        Debug.Trace("[SkyrimNetInternal] ActivateRandomDevice: akOriginator is null")
        return
    endif
    If !UDAPI_local.isRegistered(akTarget)
        return
    EndIf
    Debug.Trace("[SkyrimNetInternal] ActivateRandomDevice: Activating a random UDNG device on " + akTarget.GetDisplayName())

    UD_CustomDevice_NPCSlot slot=UDAPI_local.getNPCSlotByActor(akTarget)
    UD_CustomDevice_RenderScript[] vibe_list=slot.getOffVibrators()
    Int deviceCount=slot.getOffVibratorNum()+(-1)
    If (deviceCount >= 0)
        Int deviceIdx=Utility.RandomInt(0,deviceCount)
        Debug.Trace("[SkyrimNetInternal] ActivateRandomDevice: Activating a random UDNG device " + deviceIdx + " on "  + akTarget.GetDisplayName())
        vibe_list[deviceIdx].activateDevice()
    EndIf
EndFunction

; Eligibility function for an "Animation<type>" action
bool Function ActivateVibrator_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[SkyrimNetInternal] ActivateRandomDevice_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[SkyrimNetInternal] ActivateRandomDevice_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction
bool Function DDNG_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return DeviousScript.DDNG_IsEligible(akActor,contextJson,paramsJson)
EndFunction
Function RegisterDeviousActions() global


          SkyrimNetApi.RegisterAction("ActivateVibrator", "Activate a vibrator on an actor.", \
                                "skynet_DeviousScript", "ActivateVibrator_IsEligible", \
                                "skynet_DeviousScript", "ActivateVibrator", \
                                "", "PAPYRUS", \
                                3, "{\"target\": \"Actor\"}") 

UnforgivingScript.RegisterUnforgivingActions()
SkyrimNetApi.RegisterSubCategory("BDSMUNLOCK","unlock something on an actor","skynet_DeviousScript","DDNG_IsEligible","",1,"","UNEQUIP")

           SkyrimNetApi.RegisterAction("ExtCmdUnequipCollar", "Remove a collar on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipCollar_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipCollar", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipBelt", "Remove a Chastity Belt on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBelt_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBelt", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipGag", "Remove a Gag on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipGag_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipGag", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipBinder", "Remove an Armbinder on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBinder_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBinder", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipYoke", "Remove a yoke on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipYoke_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipYoke", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipElbowTie", "Remove an elbow tie on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipElbowTie_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipElbowTie", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipStraitJacket", "Remove a strait jacket on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipStraitJacket_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipStraitJacket", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipCorset", "Remove a corset on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipCorset_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipCorset", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipHood", "Remove a hood on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipHood_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipHood", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipHobbleSkirt", "Remove a hobble skirt on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipHobbleSkirt_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipHobbleSkirt", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipGloves", "Remove gloves on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipGloves_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipGloves", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipSuit", "Remove a suit on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipSuit_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipSuit", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipHarness", "Remove a harness on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipHarness_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipHarness", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipBlindfold", "Remove a blindfold on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBlindfold_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBlindfold", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipAnkleShackles", "Remove ankle shackles on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipAnkleShackles_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipAnkleShackles", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipClamps", "Remove clamps on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipClamps_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipClamps", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipPlugVaginal", "Remove a vaginal plug on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPlugVaginal_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPlugVaginal", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipPlugAnal", "Remove an anal plug on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPlugAnal_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPlugAnal", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipPiercingsNipple", "Remove nipple piercings on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPiercingsNipple_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPiercingsNipple", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipPiercingsVaginal", "Remove vaginal piercings on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPiercingsVaginal_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPiercingsVaginal", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipArmCuffs", "Remove arm cuffs on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipArmCuffs_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipArmCuffs", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipLegCuffs", "Remove leg cuffs on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipLegCuffs_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipLegCuffs", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipBra", "Remove a bra on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBra_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipBra", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
    

           SkyrimNetApi.RegisterAction("ExtCmdUnequipPetSuit", "Remove a pet suit on the target actor", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPetSuit_IsEligible", \
                                    "skynet_DeviousScript", "ExtCmdUnequipPetSuit", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","UNEQUIP") 
SkyrimNetApi.RegisterSubCategory("BDSMLOCK","Pick a BDSM device to lock on an actor","DeviousScript","DDNG_IsEligible","",1,"","BDSMLOCK")
SkyrimNetApi.RegisterSubCategory("ANKLE_SHACKLES","Pick the ankle shackles to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","ANKLE_SHACKLES")
SkyrimNetApi.RegisterSubCategory("ARMBINDERS","Pick the arm binder to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","ARMBINDERS")
SkyrimNetApi.RegisterSubCategory("ARM_CUFFS","Pick the arm cuff to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","ARM_CUFFS")
SkyrimNetApi.RegisterSubCategory("CHASTITY_BELTS","Pick the chastity belt to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","CHASTITY_BELTS")
SkyrimNetApi.RegisterSubCategory("BLINDFOLDS","Pick the blindfold to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","BLINDFOLDS")
SkyrimNetApi.RegisterSubCategory("BOOTS","Pick the boot to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","BOOTS")
SkyrimNetApi.RegisterSubCategory("BUTTERFLY_BINDERS","Pick the butterfly binder to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","BUTTERFLY_BINDERS")
SkyrimNetApi.RegisterSubCategory("BOX_BINDERS","Pick the box binder to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","BOX_BINDERS")
SkyrimNetApi.RegisterSubCategory("COLLARS","Pick the collar to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","COLLARS")
SkyrimNetApi.RegisterSubCategory("CORSETS","Pick the corset to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","CORSETS")
SkyrimNetApi.RegisterSubCategory("ELBOW_BINDERS","Pick the elbow binder to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","ELBOW_BINDERS")
SkyrimNetApi.RegisterSubCategory("ELBOW_SHACKLES","Pick the elbow shackles to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","ELBOW_SHACKLES")
SkyrimNetApi.RegisterSubCategory("GAGS","Pick the gag to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","GAGS")
SkyrimNetApi.RegisterSubCategory("GLOVES","Pick the glove to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","GLOVES")
SkyrimNetApi.RegisterSubCategory("HARNESSES","Pick the harness to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","HARNESSES")
SkyrimNetApi.RegisterSubCategory("HOODS","Pick the hood to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","HOODS")
SkyrimNetApi.RegisterSubCategory("LEG_CUFFS","Pick the leg cuffs to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","LEG_CUFFS")
SkyrimNetApi.RegisterSubCategory("LEG_RESTRAINTS","Pick the leg restraint to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","LEG_RESTRAINTS")
SkyrimNetApi.RegisterSubCategory("PIERCINGS","Pick the piercing to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","PIERCINGS")
SkyrimNetApi.RegisterSubCategory("PLUGS","Pick the plug to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","PLUGS")
SkyrimNetApi.RegisterSubCategory("SUITS","Pick the suit to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","SUITS")
SkyrimNetApi.RegisterSubCategory("STRAITJACKETS","Pick the straitjacket to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","STRAITJACKETS")
SkyrimNetApi.RegisterSubCategory("WRIST_SHACKLES","Pick the wrist shackle to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","WRIST_SHACKLES")
SkyrimNetApi.RegisterSubCategory("YOKES","Pick the yoke to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","YOKES")
SkyrimNetApi.RegisterSubCategory("OTHER","Pick the other device to lock on the target","DeviousScript","DDNG_IsEligible","",1,"BDSMLOCK","OTHER")

           SkyrimNetApi.RegisterAction("LOCK_CHASTITY_BELT_PADDED", "Lock the Chastity Belt Padded on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_CHASTITY_BELT_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CHASTITY_BELT_IRON", "Lock the Chastity Belt Iron on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_CHASTITY_BELT_IRON", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ARMBINDER", "Lock the Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GAG_HARNESS_BALL", "Lock the Gag Harness Ball on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_GAG_HARNESS_BALL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CHASTITY_BELT_PADDED_OPEN", "Lock the Chastity Belt Padded Open on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_CHASTITY_BELT_PADDED_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_HARNESS", "Lock the Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_CUFFS_LEATHER_COLLAR", "Lock the Cuffs Leather Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_CUFFS_LEATHER_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_STEEL_CHASTITY_BELT_PADDED", "Lock the Steel Chastity Belt Padded on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_STEEL_CHASTITY_BELT_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_CHASTITY_BELT", "Lock the Iron Chastity Belt on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_IRON_CHASTITY_BELT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_ARMBINDER", "Lock the Black Leather Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_BLACK_LEATHER_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_SLAVE_HARNESS", "Lock the Black Leather Slave Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_LEATHER_SLAVE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_STEEL_CHASTITY_BELT_PADDED_OPEN", "Lock the Steel Chastity Belt Padded Open on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_STEEL_CHASTITY_BELT_PADDED_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GENITAL_PIERCING_SOUL_GEM", "Lock the Genital Piercing Soul Gem on the target", \
                                    "DeviousScriptPIERCINGS", "DDNG_IsEligible", \
                                    "DeviousScriptPIERCINGS", "LOCK_GENITAL_PIERCING_SOUL_GEM", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PIERCINGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_HIGH_SECURITY_ARMBINDER", "Lock the High Security Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_HIGH_SECURITY_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_STRAITJACKET_DRESS_ELEGANT", "Lock the Black Leather Straitjacket Dress Elegant on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_LEATHER_STRAITJACKET_DRESS_ELEGANT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_STRAITJACKET_DRESS_ELEGANT", "Lock the Black Ebonite Straitjacket Dress Elegant on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_EBONITE_STRAITJACKET_DRESS_ELEGANT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_STRAITJACKET_DRESS_ELEGANT", "Lock the Red Leather Straitjacket Dress Elegant on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_LEATHER_STRAITJACKET_DRESS_ELEGANT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_STRAITJACKET_DRESS_ELEGANT", "Lock the Red Ebonite Straitjacket Dress Elegant on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_EBONITE_STRAITJACKET_DRESS_ELEGANT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_STRAITJACKET_DRESS_ELEGANT", "Lock the White Leather Straitjacket Dress Elegant on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_LEATHER_STRAITJACKET_DRESS_ELEGANT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_STRAITJACKET_DRESS_ELEGANT", "Lock the White Ebonite Straitjacket Dress Elegant on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_EBONITE_STRAITJACKET_DRESS_ELEGANT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_STRAITJACKET_DRESS_ELEGANT_OPEN", "Lock the Black Ebonite Straitjacket Dress Elegant Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_EBONITE_STRAITJACKET_DRESS_ELEGANT_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_STRAITJACKET_DRESS_ELEGANT_OPEN", "Lock the Red Ebonite Straitjacket Dress Elegant Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_EBONITE_STRAITJACKET_DRESS_ELEGANT_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_STRAITJACKET_DRESS_ELEGANT_OPEN", "Lock the White Ebonite Straitjacket Dress Elegant Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_EBONITE_STRAITJACKET_DRESS_ELEGANT_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_STRAITJACKET_DRESS_ELEGANT_OPEN", "Lock the Black Leather Straitjacket Dress Elegant Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_LEATHER_STRAITJACKET_DRESS_ELEGANT_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_STRAITJACKET_DRESS_ELEGANT_OPEN", "Lock the Red Leather Straitjacket Dress Elegant Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_LEATHER_STRAITJACKET_DRESS_ELEGANT_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_STRAITJACKET_DRESS_ELEGANT_OPEN", "Lock the White Leather Straitjacket Dress Elegant Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_LEATHER_STRAITJACKET_DRESS_ELEGANT_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_STRAITJACKET_DRESS_OPEN", "Lock the Black Leather Straitjacket Dress Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_LEATHER_STRAITJACKET_DRESS_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_STRAITJACKET_DRESS_CLEAVAGE", "Lock the Black Leather Straitjacket Dress Cleavage on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_LEATHER_STRAITJACKET_DRESS_CLEAVAGE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_STRAITJACKET_DRESS_CLEAVAGE", "Lock the Black Ebonite Straitjacket Dress Cleavage on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_EBONITE_STRAITJACKET_DRESS_CLEAVAGE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_STRAITJACKET_DRESS_OPEN", "Lock the Black Ebonite Straitjacket Dress Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_EBONITE_STRAITJACKET_DRESS_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_STRAITJACKET_DRESS_CLEAVAGE", "Lock the Red Ebonite Straitjacket Dress Cleavage on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_EBONITE_STRAITJACKET_DRESS_CLEAVAGE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_STRAITJACKET_DRESS_OPEN", "Lock the Red Ebonite Straitjacket Dress Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_EBONITE_STRAITJACKET_DRESS_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_STRAITJACKET_DRESS_CLEAVAGE", "Lock the White Ebonite Straitjacket Dress Cleavage on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_EBONITE_STRAITJACKET_DRESS_CLEAVAGE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_STRAITJACKET_DRESS_OPEN", "Lock the White Ebonite Straitjacket Dress Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_EBONITE_STRAITJACKET_DRESS_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_STRAITJACKET_DRESS_CLEAVAGE", "Lock the Red Leather Straitjacket Dress Cleavage on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_LEATHER_STRAITJACKET_DRESS_CLEAVAGE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_STRAITJACKET_DRESS_OPEN", "Lock the Red Leather Straitjacket Dress Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_LEATHER_STRAITJACKET_DRESS_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_STRAITJACKET_DRESS_CLEAVAGE", "Lock the White Leather Straitjacket Dress Cleavage on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_LEATHER_STRAITJACKET_DRESS_CLEAVAGE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_STRAITJACKET_DRESS_OPEN", "Lock the White Leather Straitjacket Dress Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_LEATHER_STRAITJACKET_DRESS_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_HOOD", "Lock the White Leather Hood on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_WHITE_LEATHER_HOOD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_MUZZLE_LIPS_GAG", "Lock the Black Leather Muzzle Lips Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_LEATHER_MUZZLE_LIPS_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_CHASTITY_HARNESS_NO_COLLAR", "Lock the Red Ebonite Chastity Harness No Collar on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_EBONITE_CHASTITY_HARNESS_NO_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LUSTROUS_CHASTITY_BELT_PADDED_OPEN", "Lock the Red Lustrous Chastity Belt Padded Open on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_RED_LUSTROUS_CHASTITY_BELT_PADDED_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LUSTROUS_CHASTITY_BELT_PADDED_OPEN", "Lock the White Lustrous Chastity Belt Padded Open on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_WHITE_LUSTROUS_CHASTITY_BELT_PADDED_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_HOOD", "Lock the Red Ebonite Hood on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_RED_EBONITE_HOOD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_HOOD", "Lock the White Ebonite Hood on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_WHITE_EBONITE_HOOD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_MASK_OPEN_EYES", "Lock the Red Ebonite Mask Open Eyes on the target", \
                                    "DeviousScriptOTHER", "DDNG_IsEligible", \
                                    "DeviousScriptOTHER", "LOCK_RED_EBONITE_MASK_OPEN_EYES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LUSTROUS_CHASTITY_BRA_PADDED", "Lock the Red Lustrous Chastity Bra Padded on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_LUSTROUS_CHASTITY_BRA_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LUSTROUS_CHASTITY_BRA_PADDED", "Lock the White Lustrous Chastity Bra Padded on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_LUSTROUS_CHASTITY_BRA_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TRANSPARENT_CATSUIT", "Lock the Transparent Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_TRANSPARENT_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_MASK_OPEN_EYES", "Lock the White Ebonite Mask Open Eyes on the target", \
                                    "DeviousScriptOTHER", "DDNG_IsEligible", \
                                    "DeviousScriptOTHER", "LOCK_WHITE_EBONITE_MASK_OPEN_EYES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_MASK_OPEN", "Lock the Red Ebonite Mask Open on the target", \
                                    "DeviousScriptOTHER", "DDNG_IsEligible", \
                                    "DeviousScriptOTHER", "LOCK_RED_EBONITE_MASK_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_MASK_OPEN_FACE", "Lock the Red Ebonite Mask Open Face on the target", \
                                    "DeviousScriptOTHER", "DDNG_IsEligible", \
                                    "DeviousScriptOTHER", "LOCK_RED_EBONITE_MASK_OPEN_FACE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LUSTROUS_COLLAR_PADDED_POSTURE", "Lock the Red Lustrous Collar Padded Posture on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_LUSTROUS_COLLAR_PADDED_POSTURE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LUSTROUS_COLLAR_PADDED_POSTURE", "Lock the White Lustrous Collar Padded Posture on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_LUSTROUS_COLLAR_PADDED_POSTURE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LUSTROUS_COLLAR_PADDED", "Lock the Black Lustrous Collar Padded on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_BLACK_LUSTROUS_COLLAR_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LUSTROUS_COLLAR_PADDED", "Lock the Red Lustrous Collar Padded on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_LUSTROUS_COLLAR_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LUSTROUS_COLLAR_PADDED", "Lock the White Lustrous Collar Padded on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_LUSTROUS_COLLAR_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LUSTROUS_CUFFS_PADDED_LEGS", "Lock the Black Lustrous Cuffs Padded Legs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_BLACK_LUSTROUS_CUFFS_PADDED_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LUSTROUS_CUFFS_PADDED_LEGS", "Lock the Red Lustrous Cuffs Padded Legs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_RED_LUSTROUS_CUFFS_PADDED_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LUSTROUS_CUFFS_PADDED_LEGS", "Lock the White Lustrous Cuffs Padded Legs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_WHITE_LUSTROUS_CUFFS_PADDED_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LUSTROUS_CUFFS_PADDED_ARMS", "Lock the Black Lustrous Cuffs Padded Arms on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_BLACK_LUSTROUS_CUFFS_PADDED_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LUSTROUS_CUFFS_PADDED_ARMS", "Lock the Red Lustrous Cuffs Padded Arms on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_RED_LUSTROUS_CUFFS_PADDED_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LUSTROUS_CUFFS_PADDED_ARMS", "Lock the White Lustrous Cuffs Padded Arms on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_WHITE_LUSTROUS_CUFFS_PADDED_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAG_LARGE_BALL_SIMPLE", "Lock the Red Ebonite Gag Large Ball Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_EBONITE_GAG_LARGE_BALL_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAG_LARGE_BALL_HARNESS", "Lock the Red Ebonite Gag Large Ball Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_EBONITE_GAG_LARGE_BALL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_GAG_LARGE_BALL_HARNESS", "Lock the Black Leather Gag Large Ball Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_LEATHER_GAG_LARGE_BALL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_GAG_LARGE_BALL_SIMPLE", "Lock the Black Leather Gag Large Ball Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_LEATHER_GAG_LARGE_BALL_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_GAG_LARGE_BALL_HARNESS", "Lock the Red Leather Gag Large Ball Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_LEATHER_GAG_LARGE_BALL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_GAG_LARGE_BALL_SIMPLE", "Lock the Red Leather Gag Large Ball Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_LEATHER_GAG_LARGE_BALL_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAG_LARGE_BALL_HARNESS", "Lock the White Ebonite Gag Large Ball Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_EBONITE_GAG_LARGE_BALL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAG_LARGE_BALL_SIMPLE", "Lock the White Ebonite Gag Large Ball Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_EBONITE_GAG_LARGE_BALL_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_GAG_LARGE_BALL_HARNESS", "Lock the White Leather Gag Large Ball Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_LEATHER_GAG_LARGE_BALL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_GAG_LARGE_BALL_SIMPLE", "Lock the White Leather Gag Large Ball Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_LEATHER_GAG_LARGE_BALL_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_ROPE_COLLAR", "Lock the Black Rope Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_BLACK_ROPE_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_ROPE_COLLAR", "Lock the Red Rope Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_ROPE_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_ROPE_COLLAR", "Lock the White Rope Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_ROPE_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_ROPE_BALL_GAG", "Lock the Black Rope Ball Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_ROPE_BALL_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_ROPE_BALL_GAG", "Lock the Red Rope Ball Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_ROPE_BALL_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_ROPE_BALL_GAG", "Lock the White Rope Ball Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_ROPE_BALL_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_ROPE_BIT_GAG", "Lock the Black Rope Bit Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_ROPE_BIT_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_ROPE_BIT_GAG", "Lock the Red Rope Bit Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_ROPE_BIT_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_STRAITJACKET_DRESS_ELEGANT_TOPLESS", "Lock the Black Leather Straitjacket Dress Elegant Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_LEATHER_STRAITJACKET_DRESS_ELEGANT_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_STRAITJACKET_DRESS_ELEGANT_TOPLESS", "Lock the Red Leather Straitjacket Dress Elegant Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_LEATHER_STRAITJACKET_DRESS_ELEGANT_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_STRAITJACKET_DRESS_ELEGANT_TOPLESS", "Lock the White Leather Straitjacket Dress Elegant Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_LEATHER_STRAITJACKET_DRESS_ELEGANT_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_STRAITJACKET_DRESS_ELEGANT_TOPLESS", "Lock the Black Ebonite Straitjacket Dress Elegant Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_EBONITE_STRAITJACKET_DRESS_ELEGANT_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_STRAITJACKET_DRESS_ELEGANT_TOPLESS", "Lock the Red Ebonite Straitjacket Dress Elegant Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_EBONITE_STRAITJACKET_DRESS_ELEGANT_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_STRAITJACKET_DRESS_ELEGANT_TOPLESS", "Lock the White Ebonite Straitjacket Dress Elegant Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_EBONITE_STRAITJACKET_DRESS_ELEGANT_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_SLAVE_HARNESS_NO_COLLAR", "Lock the Red Leather Slave Harness No Collar on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_LEATHER_SLAVE_HARNESS_NO_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_SLAVE_HARNESS_NO_COLLAR", "Lock the Black Leather Slave Harness No Collar on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_LEATHER_SLAVE_HARNESS_NO_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_SLAVE_HARNESS_NO_COLLAR", "Lock the Black Ebonite Slave Harness No Collar on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_EBONITE_SLAVE_HARNESS_NO_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_CHASTITY_HARNESS_NO_COLLAR", "Lock the Black Leather Chastity Harness No Collar on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_LEATHER_CHASTITY_HARNESS_NO_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_CHASTITY_HARNESS_NO_COLLAR", "Lock the Black Ebonite Chastity Harness No Collar on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_EBONITE_CHASTITY_HARNESS_NO_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_FACE_MASK", "Lock the White Ebonite Face Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_WHITE_EBONITE_FACE_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_RESTRICTIVE_CHASTITY_CORSET", "Lock the Black Leather Restrictive Chastity Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_LEATHER_RESTRICTIVE_CHASTITY_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_RESTRICTIVE_CHASTITY_CORSET_OPEN", "Lock the Black Leather Restrictive Chastity Corset Open on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_LEATHER_RESTRICTIVE_CHASTITY_CORSET_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_RESTRICTIVE_CHASTITY_CORSET", "Lock the Black Ebonite Restrictive Chastity Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_EBONITE_RESTRICTIVE_CHASTITY_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_RESTRICTIVE_CHASTITY_CORSET_OPEN", "Lock the Black Ebonite Restrictive Chastity Corset Open on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_EBONITE_RESTRICTIVE_CHASTITY_CORSET_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_CHASTITY_HARNESS", "Lock the Black Leather Chastity Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_LEATHER_CHASTITY_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_RESTRICTIVE_CHASTITY_CORSET", "Lock the Red Ebonite Restrictive Chastity Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_EBONITE_RESTRICTIVE_CHASTITY_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_RESTRICTIVE_CHASTITY_CORSET_OPEN", "Lock the Red Ebonite Restrictive Chastity Corset Open on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_EBONITE_RESTRICTIVE_CHASTITY_CORSET_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_RESTRICTIVE_CHASTITY_CORSET", "Lock the Red Leather Restrictive Chastity Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_LEATHER_RESTRICTIVE_CHASTITY_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_RESTRICTIVE_CHASTITY_CORSET_OPEN", "Lock the Red Leather Restrictive Chastity Corset Open on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_LEATHER_RESTRICTIVE_CHASTITY_CORSET_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_RESTRICTIVE_CHASTITY_CORSET", "Lock the White Ebonite Restrictive Chastity Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_EBONITE_RESTRICTIVE_CHASTITY_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_RESTRICTIVE_CHASTITY_CORSET_OPEN", "Lock the White Ebonite Restrictive Chastity Corset Open on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_EBONITE_RESTRICTIVE_CHASTITY_CORSET_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_RESTRICTIVE_CHASTITY_CORSET_OPEN", "Lock the White Leather Restrictive Chastity Corset Open on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_LEATHER_RESTRICTIVE_CHASTITY_CORSET_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_STRAITJACKET_CATSUIT", "Lock the Black Ebonite Straitjacket Catsuit on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_EBONITE_STRAITJACKET_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_STRAITJACKET_CATSUIT_OPEN", "Lock the Black Ebonite Straitjacket Catsuit Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_EBONITE_STRAITJACKET_CATSUIT_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_STRAITJACKET_CATSUIT_TOPLESS", "Lock the Black Ebonite Straitjacket Catsuit Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_EBONITE_STRAITJACKET_CATSUIT_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_STRAITJACKET_CATSUIT", "Lock the Red Ebonite Straitjacket Catsuit on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_EBONITE_STRAITJACKET_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_STRAITJACKET_CATSUIT_OPEN", "Lock the Red Ebonite Straitjacket Catsuit Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_EBONITE_STRAITJACKET_CATSUIT_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_STRAITJACKET_CATSUIT_TOPLESS", "Lock the Red Ebonite Straitjacket Catsuit Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_EBONITE_STRAITJACKET_CATSUIT_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_STRAITJACKET_CATSUIT", "Lock the White Ebonite Straitjacket Catsuit on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_EBONITE_STRAITJACKET_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_STRAITJACKET_CATSUIT_OPEN", "Lock the White Ebonite Straitjacket Catsuit Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_EBONITE_STRAITJACKET_CATSUIT_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_STRAITJACKET_CATSUIT_TOPLESS", "Lock the White Ebonite Straitjacket Catsuit Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_EBONITE_STRAITJACKET_CATSUIT_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_BOXBINDER", "Lock the Red Ebonite Boxbinder on the target", \
                                    "DeviousScriptBOX_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptBOX_BINDERS", "LOCK_RED_EBONITE_BOXBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOX_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_BOXBINDER", "Lock the White Ebonite Boxbinder on the target", \
                                    "DeviousScriptBOX_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptBOX_BINDERS", "LOCK_WHITE_EBONITE_BOXBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOX_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_BOXBINDER_OUTFIT", "Lock the Red Ebonite Boxbinder Outfit on the target", \
                                    "DeviousScriptBOX_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptBOX_BINDERS", "LOCK_RED_EBONITE_BOXBINDER_OUTFIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOX_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_BOXBINDER_OUTFIT", "Lock the White Ebonite Boxbinder Outfit on the target", \
                                    "DeviousScriptBOX_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptBOX_BINDERS", "LOCK_WHITE_EBONITE_BOXBINDER_OUTFIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOX_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WOODEN_YOKE", "Lock the Wooden Yoke on the target", \
                                    "DeviousScriptYOKES", "DDNG_IsEligible", \
                                    "DeviousScriptYOKES", "LOCK_WOODEN_YOKE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","YOKES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_RESTRICTIVE_CHASTITY_CORSET", "Lock the White Leather Restrictive Chastity Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_LEATHER_RESTRICTIVE_CHASTITY_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_BLINDFOLD_UNLOCKED", "Lock the Black Leather Blindfold Unlocked on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_BLACK_LEATHER_BLINDFOLD_UNLOCKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_SLAVE_HARNESS_UNLOCKED", "Lock the Black Leather Slave Harness Unlocked on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_LEATHER_SLAVE_HARNESS_UNLOCKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_RING_SLAVE_BOOTS", "Lock the Iron Ring Slave Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_IRON_RING_SLAVE_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_BLINDFOLD_CUSTOM", "Lock the Black Leather Blindfold Custom on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_BLACK_LEATHER_BLINDFOLD_CUSTOM", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_RING_SLAVE_BOOTS_UNLOCKED", "Lock the Iron Ring Slave Boots Unlocked on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_IRON_RING_SLAVE_BOOTS_UNLOCKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_CHASTITY_HARNESS", "Lock the Black Ebonite Chastity Harness on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_BLACK_EBONITE_CHASTITY_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_COLLAR_HARNESS", "Lock the Black Ebonite Collar Harness on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_BLACK_EBONITE_COLLAR_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_ARMBINDER", "Lock the Black Ebonite Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_BLACK_EBONITE_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_COLLAR", "Lock the Black Ebonite Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_BLACK_EBONITE_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_CUFFS_ARMS", "Lock the Black Ebonite Cuffs Arms on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_BLACK_EBONITE_CUFFS_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_CUFFS_LEGS", "Lock the Black Ebonite Cuffs Legs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_BLACK_EBONITE_CUFFS_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_BLINDFOLD", "Lock the Black Ebonite Blindfold on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_BLACK_EBONITE_BLINDFOLD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAG_BALL_HARNESS", "Lock the Black Ebonite Gag Ball Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_EBONITE_GAG_BALL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAG_RING_HARNESS", "Lock the Black Ebonite Gag Ring Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_EBONITE_GAG_RING_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAG_PANEL_HARNESS", "Lock the Black Ebonite Gag Panel Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_EBONITE_GAG_PANEL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAG_BALL_SIMPLE", "Lock the Black Ebonite Gag Ball Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_EBONITE_GAG_BALL_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAG_RING_SIMPLE", "Lock the Black Ebonite Gag Ring Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_EBONITE_GAG_RING_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_COLLAR_POSTURE", "Lock the Black Ebonite Collar Posture on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_BLACK_EBONITE_COLLAR_POSTURE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_CHASTITY_HARNESS", "Lock the White Leather Chastity Harness on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_WHITE_LEATHER_CHASTITY_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_CHASTITY_HARNESS", "Lock the White Ebonite Chastity Harness on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_WHITE_EBONITE_CHASTITY_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_COLLAR_HARNESS", "Lock the White Leather Collar Harness on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_LEATHER_COLLAR_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_COLLAR_HARNESS", "Lock the White Ebonite Collar Harness on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_EBONITE_COLLAR_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_ARMBINDER", "Lock the White Leather Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_WHITE_LEATHER_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_ARMBINDER", "Lock the White Ebonite Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_WHITE_EBONITE_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_COLLAR", "Lock the White Leather Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_LEATHER_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_COLLAR", "Lock the White Ebonite Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_EBONITE_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_CUFFS_ARMS", "Lock the White Leather Cuffs Arms on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_WHITE_LEATHER_CUFFS_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_CUFFS_ARMS", "Lock the White Ebonite Cuffs Arms on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_WHITE_EBONITE_CUFFS_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_CUFFS_LEGS", "Lock the White Leather Cuffs Legs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_WHITE_LEATHER_CUFFS_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_CUFFS_LEGS", "Lock the White Ebonite Cuffs Legs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_WHITE_EBONITE_CUFFS_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_BLINDFOLD", "Lock the White Leather Blindfold on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_WHITE_LEATHER_BLINDFOLD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_BLINDFOLD", "Lock the White Ebonite Blindfold on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_WHITE_EBONITE_BLINDFOLD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_GAG_BALL_HARNESS", "Lock the White Leather Gag Ball Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_LEATHER_GAG_BALL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAG_BALL_HARNESS", "Lock the White Ebonite Gag Ball Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_EBONITE_GAG_BALL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_GAG_RING_HARNESS", "Lock the White Leather Gag Ring Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_LEATHER_GAG_RING_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAG_RING_HARNESS", "Lock the White Ebonite Gag Ring Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_EBONITE_GAG_RING_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_GAG_PANEL_HARNESS", "Lock the White Leather Gag Panel Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_LEATHER_GAG_PANEL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAG_PANEL_HARNESS", "Lock the White Ebonite Gag Panel Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_EBONITE_GAG_PANEL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_GAG_BALL_SIMPLE", "Lock the White Leather Gag Ball Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_LEATHER_GAG_BALL_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAG_BALL_SIMPLE", "Lock the White Ebonite Gag Ball Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_EBONITE_GAG_BALL_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_GAG_RING_SIMPLE", "Lock the White Leather Gag Ring Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_LEATHER_GAG_RING_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAG_RING_SIMPLE", "Lock the White Ebonite Gag Ring Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_EBONITE_GAG_RING_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_COLLAR_POSTURE", "Lock the White Leather Collar Posture on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_LEATHER_COLLAR_POSTURE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_COLLAR_POSTURE", "Lock the White Ebonite Collar Posture on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_EBONITE_COLLAR_POSTURE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_CHASTITY_HARNESS", "Lock the Red Leather Chastity Harness on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_RED_LEATHER_CHASTITY_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_CHASTITY_HARNESS", "Lock the Red Ebonite Chastity Harness on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_RED_EBONITE_CHASTITY_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_COLLAR_HARNESS", "Lock the Red Leather Collar Harness on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_LEATHER_COLLAR_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_COLLAR_HARNESS", "Lock the Red Ebonite Collar Harness on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_EBONITE_COLLAR_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_ARMBINDER", "Lock the Red Leather Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_RED_LEATHER_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_ARMBINDER", "Lock the Red Ebonite Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_RED_EBONITE_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_COLLAR", "Lock the Red Leather Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_LEATHER_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_COLLAR", "Lock the Red Ebonite Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_EBONITE_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_CUFFS_ARMS", "Lock the Red Leather Cuffs Arms on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_RED_LEATHER_CUFFS_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_CUFFS_ARMS", "Lock the Red Ebonite Cuffs Arms on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_RED_EBONITE_CUFFS_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_CUFFS_LEGS", "Lock the Red Leather Cuffs Legs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_RED_LEATHER_CUFFS_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_CUFFS_LEGS", "Lock the Red Ebonite Cuffs Legs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_RED_EBONITE_CUFFS_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_BLINDFOLD", "Lock the Red Leather Blindfold on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_RED_LEATHER_BLINDFOLD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_BLINDFOLD", "Lock the Red Ebonite Blindfold on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_RED_EBONITE_BLINDFOLD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_GAG_BALL_HARNESS", "Lock the Red Leather Gag Ball Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_LEATHER_GAG_BALL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAG_BALL_HARNESS", "Lock the Red Ebonite Gag Ball Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_EBONITE_GAG_BALL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_GAG_RING_HARNESS", "Lock the Red Leather Gag Ring Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_LEATHER_GAG_RING_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAG_RING_HARNESS", "Lock the Red Ebonite Gag Ring Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_EBONITE_GAG_RING_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_GAG_PANEL_HARNESS", "Lock the Red Leather Gag Panel Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_LEATHER_GAG_PANEL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAG_PANEL_HARNESS", "Lock the Red Ebonite Gag Panel Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_EBONITE_GAG_PANEL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_GAG_BALL_SIMPLE", "Lock the Red Leather Gag Ball Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_LEATHER_GAG_BALL_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAG_BALL_SIMPLE", "Lock the Red Ebonite Gag Ball Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_EBONITE_GAG_BALL_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_GAG_RING_SIMPLE", "Lock the Red Leather Gag Ring Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_LEATHER_GAG_RING_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAG_RING_SIMPLE", "Lock the Red Ebonite Gag Ring Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_EBONITE_GAG_RING_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_COLLAR_POSTURE", "Lock the Red Leather Collar Posture on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_LEATHER_COLLAR_POSTURE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_COLLAR_POSTURE", "Lock the Red Ebonite Collar Posture on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_EBONITE_COLLAR_POSTURE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_PONY_BOOTS", "Lock the Black Leather Pony Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLACK_LEATHER_PONY_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_PONY_BOOTS", "Lock the Black Ebonite Pony Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLACK_EBONITE_PONY_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_PONY_BOOTS", "Lock the White Leather Pony Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_WHITE_LEATHER_PONY_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_PONY_BOOTS", "Lock the White Ebonite Pony Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_WHITE_EBONITE_PONY_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_PONY_BOOTS", "Lock the Red Leather Pony Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_RED_LEATHER_PONY_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_PONY_BOOTS", "Lock the Red Ebonite Pony Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_RED_EBONITE_PONY_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_HARNESS_UNLOCKED", "Lock the Black Ebonite Harness Unlocked on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_EBONITE_HARNESS_UNLOCKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_SLAVE_HARNESS_UNLOCKED", "Lock the White Slave Harness Unlocked on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_SLAVE_HARNESS_UNLOCKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_SLAVE_HARNESS_UNLOCKED", "Lock the White Ebonite Slave Harness Unlocked on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_EBONITE_SLAVE_HARNESS_UNLOCKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_SLAVE_HARNESS_UNLOCKED", "Lock the Red Leather Slave Harness Unlocked on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_LEATHER_SLAVE_HARNESS_UNLOCKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_SLAVE_HARNESS_UNLOCKED", "Lock the Red Ebonite Slave Harness Unlocked on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_EBONITE_SLAVE_HARNESS_UNLOCKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_BLINDFOLD_CUSTOM", "Lock the Black Ebonite Blindfold Custom on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_BLACK_EBONITE_BLINDFOLD_CUSTOM", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_BLINDFOLD_CUSTOM", "Lock the White Leather Blindfold Custom on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_WHITE_LEATHER_BLINDFOLD_CUSTOM", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_BLINDFOLD_CUSTOM", "Lock the White Ebonite Blindfold Custom on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_WHITE_EBONITE_BLINDFOLD_CUSTOM", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_BLINDFOLD_CUSTOM", "Lock the Red Leather Blindfold Custom on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_RED_LEATHER_BLINDFOLD_CUSTOM", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_BLINDFOLD_CUSTOM", "Lock the Red Ebonite Blindfold Custom on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_RED_EBONITE_BLINDFOLD_CUSTOM", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_BLINDFOLD_UNLOCKED", "Lock the Black Ebonite Blindfold Unlocked on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_BLACK_EBONITE_BLINDFOLD_UNLOCKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_BLINDFOLD_UNLOCKED", "Lock the White Leather Blindfold Unlocked on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_WHITE_LEATHER_BLINDFOLD_UNLOCKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_BLINDFOLD_UNLOCKED", "Lock the White Ebonite Blindfold Unlocked on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_WHITE_EBONITE_BLINDFOLD_UNLOCKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_BLINDFOLD_UNLOCKED", "Lock the Red Leather Blindfold Unlocked on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_RED_LEATHER_BLINDFOLD_UNLOCKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_BLINDFOLD_UNLOCKED", "Lock the Red Ebonite Blindfold Unlocked on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_RED_EBONITE_BLINDFOLD_UNLOCKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_RESTRICTIVE_BOOTS", "Lock the Black Leather Restrictive Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLACK_LEATHER_RESTRICTIVE_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_RESTRICTIVE_BOOTS_UNLOCKED", "Lock the Black Leather Restrictive Boots Unlocked on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLACK_LEATHER_RESTRICTIVE_BOOTS_UNLOCKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PLUG_GREATER_SOULGEM_VAGINAL", "Lock the Plug Greater Soulgem Vaginal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_PLUG_GREATER_SOULGEM_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PLUG_GREATER_SOULGEM_ANAL", "Lock the Plug Greater Soulgem Anal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_PLUG_GREATER_SOULGEM_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PLUG_GRAND_SOULGEM_VAGINAL", "Lock the Plug Grand Soulgem Vaginal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_PLUG_GRAND_SOULGEM_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PLUG_GRAND_SOULGEM_ANAL", "Lock the Plug Grand Soulgem Anal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_PLUG_GRAND_SOULGEM_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PLUG_BLACK_SOULGEM_VAGINAL", "Lock the Plug Black Soulgem Vaginal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_PLUG_BLACK_SOULGEM_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PLUG_BLACK_SOULGEM_ANAL", "Lock the Plug Black Soulgem Anal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_PLUG_BLACK_SOULGEM_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PLUG_FILLED_SOULGEM_VAGINAL", "Lock the Plug Filled Soulgem Vaginal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_PLUG_FILLED_SOULGEM_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PLUG_FILLED_SOULGEM_ANAL", "Lock the Plug Filled Soulgem Anal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_PLUG_FILLED_SOULGEM_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PLUG_SHOCK_VAGINAL", "Lock the Plug Shock Vaginal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_PLUG_SHOCK_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PLUG_SHOCK_ANAL", "Lock the Plug Shock Anal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_PLUG_SHOCK_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GENITAL_PIERCING_COMMON_SOUL_GEM", "Lock the Genital Piercing Common Soul Gem on the target", \
                                    "DeviousScriptPIERCINGS", "DDNG_IsEligible", \
                                    "DeviousScriptPIERCINGS", "LOCK_GENITAL_PIERCING_COMMON_SOUL_GEM", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PIERCINGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_JEWELED_PIERCINGS_NIPPLES_COMMON_SOULGEM", "Lock the Jeweled Piercings Nipples Common Soulgem on the target", \
                                    "DeviousScriptPIERCINGS", "DDNG_IsEligible", \
                                    "DeviousScriptPIERCINGS", "LOCK_JEWELED_PIERCINGS_NIPPLES_COMMON_SOULGEM", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PIERCINGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GENITAL_PIERCING_SHOCK", "Lock the Genital Piercing Shock on the target", \
                                    "DeviousScriptPIERCINGS", "DDNG_IsEligible", \
                                    "DeviousScriptPIERCINGS", "LOCK_GENITAL_PIERCING_SHOCK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PIERCINGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_JEWELED_PIERCINGS_NIPPLES_SHOCK", "Lock the Jeweled Piercings Nipples Shock on the target", \
                                    "DeviousScriptPIERCINGS", "DDNG_IsEligible", \
                                    "DeviousScriptPIERCINGS", "LOCK_JEWELED_PIERCINGS_NIPPLES_SHOCK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PIERCINGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_RESTRICTIVE_CORSET", "Lock the White Leather Restrictive Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_LEATHER_RESTRICTIVE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_RESTRICTIVE_COLLAR", "Lock the White Leather Restrictive Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_LEATHER_RESTRICTIVE_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_RESTRICTIVE_GLOVES", "Lock the White Leather Restrictive Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_WHITE_LEATHER_RESTRICTIVE_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_RESTRICTIVE_BOOTS", "Lock the White Leather Restrictive Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_WHITE_LEATHER_RESTRICTIVE_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_RESTRICTIVE_CORSET", "Lock the Red Leather Restrictive Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_LEATHER_RESTRICTIVE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_RESTRICTIVE_COLLAR", "Lock the Red Leather Restrictive Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_LEATHER_RESTRICTIVE_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_RESTRICTIVE_GLOVES", "Lock the Red Leather Restrictive Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_RED_LEATHER_RESTRICTIVE_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_RESTRICTIVE_BOOTS", "Lock the Red Leather Restrictive Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_RED_LEATHER_RESTRICTIVE_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_RESTRICTIVE_CORSET", "Lock the Black Ebonite Restrictive Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_EBONITE_RESTRICTIVE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_RESTRICTIVE_COLLAR", "Lock the Black Ebonite Restrictive Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_BLACK_EBONITE_RESTRICTIVE_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_RESTRICTIVE_GLOVES", "Lock the Black Ebonite Restrictive Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_BLACK_EBONITE_RESTRICTIVE_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_RESTRICTIVE_BOOTS", "Lock the Black Ebonite Restrictive Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLACK_EBONITE_RESTRICTIVE_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_RESTRICTIVE_CORSET", "Lock the White Ebonite Restrictive Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_EBONITE_RESTRICTIVE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_RESTRICTIVE_COLLAR", "Lock the White Ebonite Restrictive Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_EBONITE_RESTRICTIVE_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_RESTRICTIVE_GLOVES", "Lock the White Ebonite Restrictive Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_WHITE_EBONITE_RESTRICTIVE_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_RESTRICTIVE_BOOTS", "Lock the White Ebonite Restrictive Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_WHITE_EBONITE_RESTRICTIVE_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_RESTRICTIVE_CORSET", "Lock the Red Ebonite Restrictive Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_EBONITE_RESTRICTIVE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_RESTRICTIVE_COLLAR", "Lock the Red Ebonite Restrictive Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_EBONITE_RESTRICTIVE_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_RESTRICTIVE_GLOVES", "Lock the Red Ebonite Restrictive Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_RED_EBONITE_RESTRICTIVE_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_RESTRICTIVE_BOOTS", "Lock the Red Ebonite Restrictive Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_RED_EBONITE_RESTRICTIVE_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_SLAVE_HARNESS", "Lock the Black Ebonite Slave Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_EBONITE_SLAVE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_SLAVE_HARNESS", "Lock the Red Ebonite Slave Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_EBONITE_SLAVE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_SLAVE_HARNESS", "Lock the Red Leather Slave Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_LEATHER_SLAVE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_SLAVE_HARNESS", "Lock the White Ebonite Slave Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_EBONITE_SLAVE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_SLAVE_HARNESS", "Lock the White Leather Slave Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_LEATHER_SLAVE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_SCOLDS_BRIDLE_LIGHT", "Lock the Iron Scolds Bridle Light on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_IRON_SCOLDS_BRIDLE_LIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_SCOLDS_BRIDLE", "Lock the Iron Scolds Bridle on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_IRON_SCOLDS_BRIDLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_SCOLDS_BRIDLE_HEAVY", "Lock the Iron Scolds Bridle Heavy on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_IRON_SCOLDS_BRIDLE_HEAVY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_SCOLDS_BRIDLE_LIGHT", "Lock the Rusty Iron Scolds Bridle Light on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RUSTY_IRON_SCOLDS_BRIDLE_LIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_SCOLDS_BRIDLE", "Lock the Rusty Iron Scolds Bridle on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RUSTY_IRON_SCOLDS_BRIDLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_SCOLDS_BRIDLE_HEAVY", "Lock the Rusty Iron Scolds Bridle Heavy on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RUSTY_IRON_SCOLDS_BRIDLE_HEAVY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_PEAR_OF_ANGUISH_ANAL", "Lock the Iron Pear of Anguish Anal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_IRON_PEAR_OF_ANGUISH_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_PEAR_OF_ANGUISH_CHAIN_ANAL", "Lock the Iron Pear of Anguish Chain Anal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_IRON_PEAR_OF_ANGUISH_CHAIN_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_PEAR_OF_ANGUISH_SIGN_ANAL", "Lock the Iron Pear of Anguish Sign Anal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_IRON_PEAR_OF_ANGUISH_SIGN_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_PEAR_OF_ANGUISH_BELL_ANAL", "Lock the Iron Pear of Anguish Bell Anal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_IRON_PEAR_OF_ANGUISH_BELL_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_PEAR_OF_ANGUISH_VAGINAL", "Lock the Iron Pear of Anguish Vaginal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_IRON_PEAR_OF_ANGUISH_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_PEAR_OF_ANGUISH_CHAIN_VAGINAL", "Lock the Iron Pear of Anguish Chain Vaginal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_IRON_PEAR_OF_ANGUISH_CHAIN_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_PEAR_OF_ANGUISH_BELL_VAGINAL", "Lock the Iron Pear of Anguish Bell Vaginal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_IRON_PEAR_OF_ANGUISH_BELL_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_CHAIN_HARNESS_BODY", "Lock the Iron Chain Harness Body on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_IRON_CHAIN_HARNESS_BODY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_CHAIN_HARNESS_LEGS", "Lock the Iron Chain Harness Legs on the target", \
                                    "DeviousScriptLEG_RESTRAINTS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_RESTRAINTS", "LOCK_IRON_CHAIN_HARNESS_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_RESTRAINTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_CHAIN_HARNESS_ARMS", "Lock the Iron Chain Harness Arms on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_IRON_CHAIN_HARNESS_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_CHAIN_HARNESS_BRA", "Lock the Iron Chain Harness Bra on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_IRON_CHAIN_HARNESS_BRA", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_CHAIN_HARNESS_ANKLES", "Lock the Iron Chain Harness Ankles on the target", \
                                    "DeviousScriptANKLE_SHACKLES", "DDNG_IsEligible", \
                                    "DeviousScriptANKLE_SHACKLES", "LOCK_IRON_CHAIN_HARNESS_ANKLES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ANKLE_SHACKLES") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_CHAIN_HARNESS_WRISTS", "Lock the Iron Chain Harness Wrists on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_IRON_CHAIN_HARNESS_WRISTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_CHAIN_HARNESS_NIPPLE_CHAIN", "Lock the Iron Chain Harness Nipple Chain on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_IRON_CHAIN_HARNESS_NIPPLE_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_CHAIN_HARNESS", "Lock the Iron Chain Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_IRON_CHAIN_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_CLAMPS_NIPPLES", "Lock the Iron Clamps Nipples on the target", \
                                    "DeviousScriptPIERCINGS", "DDNG_IsEligible", \
                                    "DeviousScriptPIERCINGS", "LOCK_IRON_CLAMPS_NIPPLES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PIERCINGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_GAG_CHOKE_PEAR", "Lock the Iron Gag Choke Pear on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_IRON_GAG_CHOKE_PEAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_PIERCINGS_NIPPLES", "Lock the Iron Piercings Nipples on the target", \
                                    "DeviousScriptPIERCINGS", "DDNG_IsEligible", \
                                    "DeviousScriptPIERCINGS", "LOCK_IRON_PIERCINGS_NIPPLES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PIERCINGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_COLLAR_NIPPLE_CHAIN", "Lock the Iron Collar Nipple Chain on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_IRON_COLLAR_NIPPLE_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_COLLAR", "Lock the Iron Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_IRON_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_COLLAR", "Lock the Rusty Iron Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RUSTY_IRON_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_CHAIN_HARNESS_ARMS", "Lock the Rusty Iron Chain Harness Arms on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RUSTY_IRON_CHAIN_HARNESS_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_CHAIN_HARNESS_BODY", "Lock the Rusty Iron Chain Harness Body on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RUSTY_IRON_CHAIN_HARNESS_BODY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_CHAIN_HARNESS_ANKLES", "Lock the Rusty Iron Chain Harness Ankles on the target", \
                                    "DeviousScriptLEG_RESTRAINTS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_RESTRAINTS", "LOCK_RUSTY_IRON_CHAIN_HARNESS_ANKLES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_RESTRAINTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_CHAIN_HARNESS_BRA", "Lock the Rusty Iron Chain Harness Bra on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RUSTY_IRON_CHAIN_HARNESS_BRA", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_CHAIN_HARNESS_LEGS", "Lock the Rusty Iron Chain Harness Legs on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RUSTY_IRON_CHAIN_HARNESS_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_CHAIN_HARNESS_NIPPLE_CHAIN", "Lock the Rusty Iron Chain Harness Nipple Chain on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RUSTY_IRON_CHAIN_HARNESS_NIPPLE_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_CHAIN_HARNESS", "Lock the Rusty Iron Chain Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RUSTY_IRON_CHAIN_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_MASK_OF_SHAME", "Lock the Mask of Shame on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_MASK_OF_SHAME", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_SHACKLES", "Lock the Iron Shackles on the target", \
                                    "DeviousScriptWRIST_SHACKLES", "DDNG_IsEligible", \
                                    "DeviousScriptWRIST_SHACKLES", "LOCK_IRON_SHACKLES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","WRIST_SHACKLES") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_GAG_RING", "Lock the Iron Gag Ring on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_IRON_GAG_RING", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_GAG_BIT", "Lock the Iron Gag Bit on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_IRON_GAG_BIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_GAG_WOOD_BIT", "Lock the Iron Gag Wood Bit on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_IRON_GAG_WOOD_BIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_BALLET_BOOTS", "Lock the Iron Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_IRON_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_BALLET_BOOTS_REINFORCED", "Lock the Iron Ballet Boots Reinforced on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_IRON_BALLET_BOOTS_REINFORCED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_BALLET_BOOTS", "Lock the Rusty Iron Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_RUSTY_IRON_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_BALLET_BOOTS_REINFORCED", "Lock the Rusty Iron Ballet Boots Reinforced on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_RUSTY_IRON_BALLET_BOOTS_REINFORCED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_GAG_BIT", "Lock the Rusty Iron Gag Bit on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RUSTY_IRON_GAG_BIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_GAG_WOOD_BIT", "Lock the Rusty Iron Gag Wood Bit on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RUSTY_IRON_GAG_WOOD_BIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_SHACKLES", "Lock the Rusty Iron Shackles on the target", \
                                    "DeviousScriptWRIST_SHACKLES", "DDNG_IsEligible", \
                                    "DeviousScriptWRIST_SHACKLES", "LOCK_RUSTY_IRON_SHACKLES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","WRIST_SHACKLES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_GAG_RING", "Lock the Rusty Iron Gag Ring on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RUSTY_IRON_GAG_RING", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_COLLAR_NIPPLE_CHAIN", "Lock the Rusty Iron Collar Nipple Chain on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RUSTY_IRON_COLLAR_NIPPLE_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_PEAR_OF_ANGUISH_BELL_ANAL", "Lock the Rusty Iron Pear of Anguish Bell Anal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_RUSTY_IRON_PEAR_OF_ANGUISH_BELL_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_PEAR_OF_ANGUISH_SIGN_ANAL", "Lock the Rusty Iron Pear of Anguish Sign Anal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_RUSTY_IRON_PEAR_OF_ANGUISH_SIGN_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_PEAR_OF_ANGUISH_BELL_VAGINAL", "Lock the Rusty Iron Pear of Anguish Bell Vaginal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_RUSTY_IRON_PEAR_OF_ANGUISH_BELL_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_PEAR_OF_ANGUISH_CHAIN_ANAL", "Lock the Rusty Iron Pear of Anguish Chain Anal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_RUSTY_IRON_PEAR_OF_ANGUISH_CHAIN_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_PEAR_OF_ANGUISH_CHAIN_VAGINAL", "Lock the Rusty Iron Pear of Anguish Chain Vaginal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_RUSTY_IRON_PEAR_OF_ANGUISH_CHAIN_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_PEAR_OF_ANGUISH_ANAL", "Lock the Rusty Iron Pear of Anguish Anal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_RUSTY_IRON_PEAR_OF_ANGUISH_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_PEAR_OF_ANGUISH_VAGINAL", "Lock the Rusty Iron Pear of Anguish Vaginal on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_RUSTY_IRON_PEAR_OF_ANGUISH_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_CLAMPS_NIPPLES", "Lock the Rusty Iron Clamps Nipples on the target", \
                                    "DeviousScriptPIERCINGS", "DDNG_IsEligible", \
                                    "DeviousScriptPIERCINGS", "LOCK_RUSTY_IRON_CLAMPS_NIPPLES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PIERCINGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_PIERCINGS_NIPPLES", "Lock the Rusty Iron Piercings Nipples on the target", \
                                    "DeviousScriptPIERCINGS", "DDNG_IsEligible", \
                                    "DeviousScriptPIERCINGS", "LOCK_RUSTY_IRON_PIERCINGS_NIPPLES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PIERCINGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_GAG_CHOKE_PEAR", "Lock the Rusty Iron Gag Choke Pear on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RUSTY_IRON_GAG_CHOKE_PEAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_CHAIN_HARNESS_WRISTS", "Lock the Rusty Iron Chain Harness Wrists on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RUSTY_IRON_CHAIN_HARNESS_WRISTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_HOBBLE_DRESS_EXTREME", "Lock the Black Leather Hobble Dress Extreme on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_LEATHER_HOBBLE_DRESS_EXTREME", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_SLAVE_BALLET_HEELS", "Lock the Black Leather Slave Ballet Heels on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLACK_LEATHER_SLAVE_BALLET_HEELS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_PAW_BONDAGE_MITTENS", "Lock the Black Leather Paw Bondage Mittens on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_BLACK_LEATHER_PAW_BONDAGE_MITTENS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_PAW_BONDAGE_MITTENS", "Lock the Red Leather Paw Bondage Mittens on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_RED_LEATHER_PAW_BONDAGE_MITTENS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_PAW_BONDAGE_MITTENS", "Lock the White Leather Paw Bondage Mittens on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_WHITE_LEATHER_PAW_BONDAGE_MITTENS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_SLAVE_BALLET_HEELS", "Lock the Red Leather Slave Ballet Heels on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_RED_LEATHER_SLAVE_BALLET_HEELS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_SLAVE_BALLET_HEELS", "Lock the White Leather Slave Ballet Heels on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_WHITE_LEATHER_SLAVE_BALLET_HEELS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_HOBBLE_DRESS_EXTREME", "Lock the Black Ebonite Hobble Dress Extreme on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_EBONITE_HOBBLE_DRESS_EXTREME", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_HOBBLE_DRESS", "Lock the Black Ebonite Hobble Dress on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_EBONITE_HOBBLE_DRESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_HOBBLE_DRESS", "Lock the Red Ebonite Hobble Dress on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_EBONITE_HOBBLE_DRESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_HOBBLE_DRESS", "Lock the White Ebonite Hobble Dress on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_EBONITE_HOBBLE_DRESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_HOBBLE_DRESS_OPEN", "Lock the Red Ebonite Hobble Dress Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_EBONITE_HOBBLE_DRESS_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_HOBBLE_DRESS_OPEN", "Lock the White Ebonite Hobble Dress Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_EBONITE_HOBBLE_DRESS_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_HOBBLE_DRESS_OPEN", "Lock the Black Ebonite Hobble Dress Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_EBONITE_HOBBLE_DRESS_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_HOBBLE_DRESS", "Lock the Black Leather Hobble Dress on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_LEATHER_HOBBLE_DRESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_HOBBLE_DRESS_EXTREME", "Lock the Red Leather Hobble Dress Extreme on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_LEATHER_HOBBLE_DRESS_EXTREME", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_HOBBLE_DRESS_EXTREME", "Lock the White Leather Hobble Dress Extreme on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_LEATHER_HOBBLE_DRESS_EXTREME", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_HOBBLE_DRESS", "Lock the Red Leather Hobble Dress on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_LEATHER_HOBBLE_DRESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_HOBBLE_DRESS", "Lock the White Leather Hobble Dress on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_LEATHER_HOBBLE_DRESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_HOBBLE_DRESS_OPEN", "Lock the Red Leather Hobble Dress Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_LEATHER_HOBBLE_DRESS_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_HOBBLE_DRESS_OPEN", "Lock the White Leather Hobble Dress Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_LEATHER_HOBBLE_DRESS_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_HOBBLE_DRESS_OPEN", "Lock the Black Leather Hobble Dress Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_LEATHER_HOBBLE_DRESS_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_HOBBLE_DRESS_EXTREME_OPEN", "Lock the White Leather Hobble Dress Extreme Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_LEATHER_HOBBLE_DRESS_EXTREME_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_HOBBLE_DRESS_EXTREME_OPEN", "Lock the Red Leather Hobble Dress Extreme Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_LEATHER_HOBBLE_DRESS_EXTREME_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_HOBBLE_DRESS_EXTREME_OPEN", "Lock the Black Leather Hobble Dress Extreme Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_LEATHER_HOBBLE_DRESS_EXTREME_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_HOBBLE_DRESS_EXTREME", "Lock the Red Ebonite Hobble Dress Extreme on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_EBONITE_HOBBLE_DRESS_EXTREME", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_HOBBLE_DRESS_EXTREME", "Lock the White Ebonite Hobble Dress Extreme on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_EBONITE_HOBBLE_DRESS_EXTREME", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_HOBBLE_DRESS_EXTREME_OPEN", "Lock the Red Ebonite Hobble Dress Extreme Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_EBONITE_HOBBLE_DRESS_EXTREME_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_HOBBLE_DRESS_EXTREME_OPEN", "Lock the White Ebonite Hobble Dress Extreme Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_EBONITE_HOBBLE_DRESS_EXTREME_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_HOBBLE_DRESS_EXTREME_OPEN", "Lock the Black Ebonite Hobble Dress Extreme Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_EBONITE_HOBBLE_DRESS_EXTREME_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_PAW_BONDAGE_MITTENS", "Lock the Red Ebonite Paw Bondage Mittens on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_RED_EBONITE_PAW_BONDAGE_MITTENS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_PAW_BONDAGE_MITTENS", "Lock the White Ebonite Paw Bondage Mittens on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_WHITE_EBONITE_PAW_BONDAGE_MITTENS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_PAW_BONDAGE_MITTENS", "Lock the Black Ebonite Paw Bondage Mittens on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_BLACK_EBONITE_PAW_BONDAGE_MITTENS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_HOBBLE_DRESS_ELEGANT", "Lock the Black Leather Hobble Dress Elegant on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_LEATHER_HOBBLE_DRESS_ELEGANT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_HOBBLE_DRESS_ELEGANT", "Lock the Red Leather Hobble Dress Elegant on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_LEATHER_HOBBLE_DRESS_ELEGANT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_HOBBLE_DRESS_ELEGANT", "Lock the White Leather Hobble Dress Elegant on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_LEATHER_HOBBLE_DRESS_ELEGANT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_HOBBLE_DRESS_ELEGANT", "Lock the Black Ebonite Hobble Dress Elegant on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_EBONITE_HOBBLE_DRESS_ELEGANT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_HOBBLE_DRESS_ELEGANT", "Lock the Red Ebonite Hobble Dress Elegant on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_EBONITE_HOBBLE_DRESS_ELEGANT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_HOBBLE_DRESS_ELEGANT", "Lock the White Ebonite Hobble Dress Elegant on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_EBONITE_HOBBLE_DRESS_ELEGANT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_STRAITJACKET", "Lock the Black Ebonite Straitjacket on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_EBONITE_STRAITJACKET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_COLLAR_SHORT_CHAIN", "Lock the Iron Collar Short Chain on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_IRON_COLLAR_SHORT_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_COLLAR_MEDIUM_CHAIN", "Lock the Iron Collar Medium Chain on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_IRON_COLLAR_MEDIUM_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_COLLAR_LENGTHY_CHAIN", "Lock the Iron Collar Lengthy Chain on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_IRON_COLLAR_LENGTHY_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_COLLAR_LONG_CHAIN", "Lock the Iron Collar Long Chain on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_IRON_COLLAR_LONG_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_COLLAR_SHORT_CHAIN", "Lock the Rusty Iron Collar Short Chain on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RUSTY_IRON_COLLAR_SHORT_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_COLLAR_MEDIUM_CHAIN", "Lock the Rusty Iron Collar Medium Chain on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RUSTY_IRON_COLLAR_MEDIUM_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_COLLAR_LENGTHY_CHAIN", "Lock the Rusty Iron Collar Lengthy Chain on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RUSTY_IRON_COLLAR_LENGTHY_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_COLLAR_LONG_CHAIN", "Lock the Rusty Iron Collar Long Chain on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RUSTY_IRON_COLLAR_LONG_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PLUG_TAIL_EOSTRE", "Lock the Plug Tail Eostre on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_PLUG_TAIL_EOSTRE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PLUG_TAIL_VR", "Lock the Plug Tail V r on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_PLUG_TAIL_VR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PLUG_TAIL_VR_BOW", "Lock the Plug Tail V r Bow on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_PLUG_TAIL_VR_BOW", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PLUG_TAIL_GEFJUN", "Lock the Plug Tail Gefjun on the target", \
                                    "DeviousScriptPLUGS", "DDNG_IsEligible", \
                                    "DeviousScriptPLUGS", "LOCK_PLUG_TAIL_GEFJUN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_FETTERS_CHAIN", "Lock the Iron Fetters Chain on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_IRON_FETTERS_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_FETTERS_CHAIN", "Lock the Rusty Iron Fetters Chain on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_RUSTY_IRON_FETTERS_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_FETTERS_BALL_CHAIN", "Lock the Iron Fetters Ball Chain on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_IRON_FETTERS_BALL_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_FETTERS_BALL_CHAIN_LONG", "Lock the Iron Fetters Ball Chain Long on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_IRON_FETTERS_BALL_CHAIN_LONG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_FETTERS_BALL_CHAIN", "Lock the Rusty Iron Fetters Ball Chain on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_RUSTY_IRON_FETTERS_BALL_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_FETTERS_BALL_CHAIN_LONG", "Lock the Rusty Iron Fetters Ball Chain Long on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_RUSTY_IRON_FETTERS_BALL_CHAIN_LONG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_PRISONER_CHAINS", "Lock the Iron Prisoner Chains on the target", \
                                    "DeviousScriptLEG_RESTRAINTS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_RESTRAINTS", "LOCK_IRON_PRISONER_CHAINS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_RESTRAINTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_PRISONER_CHAINS", "Lock the Rusty Iron Prisoner Chains on the target", \
                                    "DeviousScriptLEG_RESTRAINTS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_RESTRAINTS", "LOCK_RUSTY_IRON_PRISONER_CHAINS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_RESTRAINTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_ELBOWBINDER", "Lock the Black Leather Elbowbinder on the target", \
                                    "DeviousScriptELBOW_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptELBOW_BINDERS", "LOCK_BLACK_LEATHER_ELBOWBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ELBOW_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_HANDCUFFS", "Lock the Iron Handcuffs on the target", \
                                    "DeviousScriptWRIST_SHACKLES", "DDNG_IsEligible", \
                                    "DeviousScriptWRIST_SHACKLES", "LOCK_IRON_HANDCUFFS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","WRIST_SHACKLES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RUSTY_IRON_HANDCUFFS", "Lock the Rusty Iron Handcuffs on the target", \
                                    "DeviousScriptWRIST_SHACKLES", "DDNG_IsEligible", \
                                    "DeviousScriptWRIST_SHACKLES", "LOCK_RUSTY_IRON_HANDCUFFS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","WRIST_SHACKLES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_STRAITJACKET_LEGBINDER", "Lock the Black Ebonite Straitjacket Legbinder on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_EBONITE_STRAITJACKET_LEGBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_STRAITJACKET_LEGBINDER", "Lock the Red Ebonite Straitjacket Legbinder on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_EBONITE_STRAITJACKET_LEGBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_STRAITJACKET_OPEN_LEGBINDER", "Lock the Black Ebonite Straitjacket Open Legbinder on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_EBONITE_STRAITJACKET_OPEN_LEGBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_STRAITJACKET_OPEN_LEGBINDER", "Lock the Red Ebonite Straitjacket Open Legbinder on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_EBONITE_STRAITJACKET_OPEN_LEGBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_STRAITJACKET_OPEN_LEGBINDER", "Lock the White Ebonite Straitjacket Open Legbinder on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_EBONITE_STRAITJACKET_OPEN_LEGBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_STRAITJACKET_LEGBINDER", "Lock the White Ebonite Straitjacket Legbinder on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_EBONITE_STRAITJACKET_LEGBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_STRAITJACKET", "Lock the Red Ebonite Straitjacket on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_EBONITE_STRAITJACKET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_STRAITJACKET_OPEN", "Lock the Black Ebonite Straitjacket Open on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_EBONITE_STRAITJACKET_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_STRAITJACKET_TOPLESS", "Lock the Red Ebonite Straitjacket Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_EBONITE_STRAITJACKET_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_STRAITJACKET_TOPLESS", "Lock the White Ebonite Straitjacket Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_EBONITE_STRAITJACKET_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_STRAITJACKET", "Lock the White Ebonite Straitjacket on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_EBONITE_STRAITJACKET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_STRAITJACKET", "Lock the Black Leather Straitjacket on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_LEATHER_STRAITJACKET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_STRAITJACKET_LEGBINDER", "Lock the Black Leather Straitjacket Legbinder on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_LEATHER_STRAITJACKET_LEGBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_STRAITJACKET_LEGBINDER", "Lock the Red Leather Straitjacket Legbinder on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_LEATHER_STRAITJACKET_LEGBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_STRAITJACKET", "Lock the Red Leather Straitjacket on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_LEATHER_STRAITJACKET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_STRAITJACKET", "Lock the White Leather Straitjacket on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_LEATHER_STRAITJACKET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_STRAITJACKET_OPEN_LEGBINDER", "Lock the Black Leather Straitjacket Open Legbinder on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_LEATHER_STRAITJACKET_OPEN_LEGBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_STRAITJACKET_OPEN_LEGBINDER", "Lock the Red Leather Straitjacket Open Legbinder on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_LEATHER_STRAITJACKET_OPEN_LEGBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_STRAITJACKET_OPEN_LEGBINDER", "Lock the White Leather Straitjacket Open Legbinder on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_LEATHER_STRAITJACKET_OPEN_LEGBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_STRAITJACKET_LEGBINDER", "Lock the White Leather Straitjacket Legbinder on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_LEATHER_STRAITJACKET_LEGBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_STRAITJACKET_TOPLESS", "Lock the White Leather Straitjacket Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_LEATHER_STRAITJACKET_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_STRAITJACKET_TOPLESS", "Lock the Red Leather Straitjacket Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_LEATHER_STRAITJACKET_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_STRAITJACKET_TOPLESS", "Lock the Black Leather Straitjacket Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_LEATHER_STRAITJACKET_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_STRAITJACKET_DRESS", "Lock the Black Ebonite Straitjacket Dress on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_EBONITE_STRAITJACKET_DRESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_STRAITJACKET_DRESS_TOPLESS", "Lock the Black Ebonite Straitjacket Dress Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_EBONITE_STRAITJACKET_DRESS_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAG_PONY", "Lock the Black Ebonite Gag Pony on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_EBONITE_GAG_PONY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_GAG_PONY", "Lock the Black Leather Gag Pony on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_LEATHER_GAG_PONY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAG_PONY_STRAP", "Lock the Black Ebonite Gag Pony Strap on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_EBONITE_GAG_PONY_STRAP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_GAG_PONY_STRAP", "Lock the Black Leather Gag Pony Strap on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_LEATHER_GAG_PONY_STRAP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAG_PONY_EARS", "Lock the Black Ebonite Gag Pony Ears on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_EBONITE_GAG_PONY_EARS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_GAG_PONY_EARS", "Lock the Black Leather Gag Pony Ears on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_LEATHER_GAG_PONY_EARS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAG_PONY_BLINDERS", "Lock the Black Ebonite Gag Pony Blinders on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_EBONITE_GAG_PONY_BLINDERS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_GAG_PONY_BLINDERS", "Lock the Black Leather Gag Pony Blinders on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_LEATHER_GAG_PONY_BLINDERS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAG_PONY_HARNESS", "Lock the Black Ebonite Gag Pony Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_EBONITE_GAG_PONY_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_GAG_PONY_HARNESS", "Lock the Black Leather Gag Pony Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_LEATHER_GAG_PONY_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAG_PONY", "Lock the Red Ebonite Gag Pony on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_EBONITE_GAG_PONY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_GAG_PONY", "Lock the Red Leather Gag Pony on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_LEATHER_GAG_PONY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAG_PONY", "Lock the White Ebonite Gag Pony on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_EBONITE_GAG_PONY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_GAG_PONY", "Lock the White Leather Gag Pony on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_LEATHER_GAG_PONY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAG_PONY_STRAP", "Lock the Red Ebonite Gag Pony Strap on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_EBONITE_GAG_PONY_STRAP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_GAG_PONY_STRAP", "Lock the Red Leather Gag Pony Strap on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_LEATHER_GAG_PONY_STRAP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAG_PONY_STRAP", "Lock the White Ebonite Gag Pony Strap on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_EBONITE_GAG_PONY_STRAP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_GAG_PONY_STRAP", "Lock the White Leather Gag Pony Strap on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_LEATHER_GAG_PONY_STRAP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAG_PONY_EARS", "Lock the Red Ebonite Gag Pony Ears on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_EBONITE_GAG_PONY_EARS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_GAG_PONY_EARS", "Lock the Red Leather Gag Pony Ears on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_LEATHER_GAG_PONY_EARS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAG_PONY_EARS", "Lock the White Ebonite Gag Pony Ears on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_EBONITE_GAG_PONY_EARS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_GAG_PONY_EARS", "Lock the White Leather Gag Pony Ears on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_LEATHER_GAG_PONY_EARS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAG_PONY_BLINDERS", "Lock the Red Ebonite Gag Pony Blinders on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_EBONITE_GAG_PONY_BLINDERS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_GAG_PONY_BLINDERS", "Lock the Red Leather Gag Pony Blinders on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_LEATHER_GAG_PONY_BLINDERS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAG_PONY_BLINDERS", "Lock the White Ebonite Gag Pony Blinders on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_EBONITE_GAG_PONY_BLINDERS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_GAG_PONY_BLINDERS", "Lock the White Leather Gag Pony Blinders on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_LEATHER_GAG_PONY_BLINDERS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAG_PONY_HARNESS", "Lock the Red Ebonite Gag Pony Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_EBONITE_GAG_PONY_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_GAG_PONY_HARNESS", "Lock the Red Leather Gag Pony Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_LEATHER_GAG_PONY_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAG_PONY_HARNESS", "Lock the White Ebonite Gag Pony Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_EBONITE_GAG_PONY_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_GAG_PONY_HARNESS", "Lock the White Leather Gag Pony Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_LEATHER_GAG_PONY_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_BREAST_YOKE", "Lock the Iron Breast Yoke on the target", \
                                    "DeviousScriptYOKES", "DDNG_IsEligible", \
                                    "DeviousScriptYOKES", "LOCK_IRON_BREAST_YOKE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","YOKES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_CATSUIT", "Lock the Black Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_CATSUIT_GLOVES", "Lock the Black Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_BLACK_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_CATSUIT_SOCKS", "Lock the Black Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptOTHER", "DDNG_IsEligible", \
                                    "DeviousScriptOTHER", "LOCK_BLACK_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_CATSUIT_COLLAR", "Lock the Black Ebonite Catsuit Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_BLACK_EBONITE_CATSUIT_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAS_MASK", "Lock the Black Ebonite Gas Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_BLACK_EBONITE_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_CATSUIT_LONG_GLOVES", "Lock the Black Ebonite Catsuit Long Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_BLACK_EBONITE_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_CATSUIT_BALLET_BOOTS", "Lock the Black Ebonite Catsuit Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLACK_EBONITE_CATSUIT_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_HOOD", "Lock the Black Ebonite Hood on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_BLACK_EBONITE_HOOD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TRANSPARENT_CATSUIT_HIGH_HEELS", "Lock the Transparent Catsuit High Heels on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_TRANSPARENT_CATSUIT_HIGH_HEELS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_STEEL_YOKE", "Lock the Steel Yoke on the target", \
                                    "DeviousScriptYOKES", "DDNG_IsEligible", \
                                    "DeviousScriptYOKES", "LOCK_STEEL_YOKE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","YOKES") 
    
           SkyrimNetApi.RegisterAction("LOCK_STEEL_MANACLES", "Lock the Steel Manacles on the target", \
                                    "DeviousScriptWRIST_SHACKLES", "DDNG_IsEligible", \
                                    "DeviousScriptWRIST_SHACKLES", "LOCK_STEEL_MANACLES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","WRIST_SHACKLES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_STEEL_FETTERS_CHAIN", "Lock the Black Steel Fetters Chain on the target", \
                                    "DeviousScriptLEG_RESTRAINTS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_RESTRAINTS", "LOCK_BLACK_STEEL_FETTERS_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_RESTRAINTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_SILVER_FETTERS_CHAIN", "Lock the Silver Fetters Chain on the target", \
                                    "DeviousScriptLEG_RESTRAINTS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_RESTRAINTS", "LOCK_SILVER_FETTERS_CHAIN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_RESTRAINTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_HOOD", "Lock the Black Leather Hood on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_BLACK_LEATHER_HOOD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_MASK_OPEN_EYES", "Lock the Black Ebonite Mask Open Eyes on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_BLACK_EBONITE_MASK_OPEN_EYES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_MASK_OPEN_FACE", "Lock the Black Ebonite Mask Open Face on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_BLACK_EBONITE_MASK_OPEN_FACE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_MASK_OPEN", "Lock the Black Ebonite Mask Open on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_BLACK_EBONITE_MASK_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLUE_EBONITE_CATSUIT", "Lock the Blue Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLUE_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CYAN_EBONITE_CATSUIT", "Lock the Cyan Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_CYAN_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREEN_EBONITE_CATSUIT", "Lock the Dark Green Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_DARK_GREEN_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREY_EBONITE_CATSUIT", "Lock the Dark Grey Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_DARK_GREY_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_RED_EBONITE_CATSUIT", "Lock the Dark Red Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_DARK_RED_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_EBONITE_CATSUIT", "Lock the Golden Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_GOLDEN_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GREEN_EBONITE_CATSUIT", "Lock the Green Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_GREEN_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_LIGHT_GREY_EBONITE_CATSUIT", "Lock the Light Grey Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_LIGHT_GREY_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ORANGE_EBONITE_CATSUIT", "Lock the Orange Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_ORANGE_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_EBONITE_CATSUIT", "Lock the Pink Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_PINK_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PURPLE_EBONITE_CATSUIT", "Lock the Purple Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_PURPLE_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_CATSUIT", "Lock the Red Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_REDWHITE_EBONITE_CATSUIT", "Lock the RedWhite Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_REDWHITE_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_CATSUIT", "Lock the White Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_YELLOW_EBONITE_CATSUIT", "Lock the Yellow Ebonite Catsuit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_YELLOW_EBONITE_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLUE_EBONITE_CATSUIT_GLOVES", "Lock the Blue Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_BLUE_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_CYAN_EBONITE_CATSUIT_GLOVES", "Lock the Cyan Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_CYAN_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREEN_EBONITE_CATSUIT_GLOVES", "Lock the Dark Green Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_DARK_GREEN_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREY_EBONITE_CATSUIT_GLOVES", "Lock the Dark Grey Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_DARK_GREY_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_RED_EBONITE_CATSUIT_GLOVES", "Lock the Dark Red Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_DARK_RED_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_EBONITE_CATSUIT_GLOVES", "Lock the Golden Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_GOLDEN_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_GREEN_EBONITE_CATSUIT_GLOVES", "Lock the Green Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_GREEN_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_LIGHT_GREY_EBONITE_CATSUIT_GLOVES", "Lock the Light Grey Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_LIGHT_GREY_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_ORANGE_EBONITE_CATSUIT_GLOVES", "Lock the Orange Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_ORANGE_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_EBONITE_CATSUIT_GLOVES", "Lock the Pink Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_PINK_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_PURPLE_EBONITE_CATSUIT_GLOVES", "Lock the Purple Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_PURPLE_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_CATSUIT_GLOVES", "Lock the Red Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_RED_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_REDWHITE_EBONITE_CATSUIT_GLOVES", "Lock the RedWhite Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_REDWHITE_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_CATSUIT_GLOVES", "Lock the White Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_WHITE_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_YELLOW_EBONITE_CATSUIT_GLOVES", "Lock the Yellow Ebonite Catsuit Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_YELLOW_EBONITE_CATSUIT_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLUE_EBONITE_CATSUIT_SOCKS", "Lock the Blue Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLUE_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CYAN_EBONITE_CATSUIT_SOCKS", "Lock the Cyan Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_CYAN_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREEN_EBONITE_CATSUIT_SOCKS", "Lock the Dark Green Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_DARK_GREEN_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREY_EBONITE_CATSUIT_SOCKS", "Lock the Dark Grey Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_DARK_GREY_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_RED_EBONITE_CATSUIT_SOCKS", "Lock the Dark Red Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_DARK_RED_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_EBONITE_CATSUIT_SOCKS", "Lock the Golden Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_GOLDEN_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GREEN_EBONITE_CATSUIT_SOCKS", "Lock the Green Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_GREEN_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_LIGHT_GREY_EBONITE_CATSUIT_SOCKS", "Lock the Light Grey Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_LIGHT_GREY_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ORANGE_EBONITE_CATSUIT_SOCKS", "Lock the Orange Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_ORANGE_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_EBONITE_CATSUIT_SOCKS", "Lock the Pink Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_PINK_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PURPLE_EBONITE_CATSUIT_SOCKS", "Lock the Purple Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_PURPLE_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_CATSUIT_SOCKS", "Lock the Red Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_REDWHITE_EBONITE_CATSUIT_SOCKS", "Lock the RedWhite Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_REDWHITE_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_CATSUIT_SOCKS", "Lock the White Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_YELLOW_EBONITE_CATSUIT_SOCKS", "Lock the Yellow Ebonite Catsuit Socks on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_YELLOW_EBONITE_CATSUIT_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLUE_EBONITE_CATSUIT_COLLAR", "Lock the Blue Ebonite Catsuit Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_BLUE_EBONITE_CATSUIT_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CYAN_EBONITE_CATSUIT_COLLAR", "Lock the Cyan Ebonite Catsuit Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_CYAN_EBONITE_CATSUIT_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREEN_EBONITE_CATSUIT_COLLAR", "Lock the Dark Green Ebonite Catsuit Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_DARK_GREEN_EBONITE_CATSUIT_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREY_EBONITE_CATSUIT_COLLAR", "Lock the Dark Grey Ebonite Catsuit Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_DARK_GREY_EBONITE_CATSUIT_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_RED_EBONITE_CATSUIT_COLLAR", "Lock the Dark Red Ebonite Catsuit Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_DARK_RED_EBONITE_CATSUIT_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_EBONITE_CATSUIT_COLLAR", "Lock the Golden Ebonite Catsuit Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_GOLDEN_EBONITE_CATSUIT_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GREEN_EBONITE_CATSUIT_COLLAR", "Lock the Green Ebonite Catsuit Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_GREEN_EBONITE_CATSUIT_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_LIGHT_GREY_EBONITE_CATSUIT_COLLAR", "Lock the Light Grey Ebonite Catsuit Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_LIGHT_GREY_EBONITE_CATSUIT_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ORANGE_EBONITE_CATSUIT_COLLAR", "Lock the Orange Ebonite Catsuit Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_ORANGE_EBONITE_CATSUIT_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_EBONITE_CATSUIT_COLLAR", "Lock the Pink Ebonite Catsuit Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_PINK_EBONITE_CATSUIT_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PURPLE_EBONITE_CATSUIT_COLLAR", "Lock the Purple Ebonite Catsuit Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_PURPLE_EBONITE_CATSUIT_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_CATSUIT_COLLAR", "Lock the Red Ebonite Catsuit Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_EBONITE_CATSUIT_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_CATSUIT_COLLAR", "Lock the White Ebonite Catsuit Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_EBONITE_CATSUIT_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_YELLOW_EBONITE_CATSUIT_COLLAR", "Lock the Yellow Ebonite Catsuit Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_YELLOW_EBONITE_CATSUIT_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLUE_EBONITE_CATSUIT_LONG_GLOVES", "Lock the Blue Ebonite Catsuit Long Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_BLUE_EBONITE_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_CYAN_EBONITE_CATSUIT_LONG_GLOVES", "Lock the Cyan Ebonite Catsuit Long Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_CYAN_EBONITE_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREEN_EBONITE_CATSUIT_LONG_GLOVES", "Lock the Dark Green Ebonite Catsuit Long Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_DARK_GREEN_EBONITE_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREY_EBONITE_CATSUIT_LONG_GLOVES", "Lock the Dark Grey Ebonite Catsuit Long Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_DARK_GREY_EBONITE_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_RED_EBONITE_CATSUIT_LONG_GLOVES", "Lock the Dark Red Ebonite Catsuit Long Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_DARK_RED_EBONITE_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_EBONITE_CATSUIT_LONG_GLOVES", "Lock the Golden Ebonite Catsuit Long Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_GOLDEN_EBONITE_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_GREEN_EBONITE_CATSUIT_LONG_GLOVES", "Lock the Green Ebonite Catsuit Long Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_GREEN_EBONITE_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_LIGHT_GREY_EBONITE_CATSUIT_LONG_GLOVES", "Lock the Light Grey Ebonite Catsuit Long Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_LIGHT_GREY_EBONITE_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_ORANGE_EBONITE_CATSUIT_LONG_GLOVES", "Lock the Orange Ebonite Catsuit Long Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_ORANGE_EBONITE_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_EBONITE_CATSUIT_LONG_GLOVES", "Lock the Pink Ebonite Catsuit Long Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_PINK_EBONITE_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_PURPLE_EBONITE_CATSUIT_LONG_GLOVES", "Lock the Purple Ebonite Catsuit Long Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_PURPLE_EBONITE_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_CATSUIT_LONG_GLOVES", "Lock the Red Ebonite Catsuit Long Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_RED_EBONITE_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_CATSUIT_LONG_GLOVES", "Lock the White Ebonite Catsuit Long Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_WHITE_EBONITE_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_YELLOW_EBONITE_CATSUIT_LONG_GLOVES", "Lock the Yellow Ebonite Catsuit Long Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_YELLOW_EBONITE_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLUE_EBONITE_CATSUIT_BALLET_BOOTS", "Lock the Blue Ebonite Catsuit Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLUE_EBONITE_CATSUIT_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CYAN_EBONITE_CATSUIT_BALLET_BOOTS", "Lock the Cyan Ebonite Catsuit Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_CYAN_EBONITE_CATSUIT_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREEN_EBONITE_CATSUIT_BALLET_BOOTS", "Lock the Dark Green Ebonite Catsuit Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_DARK_GREEN_EBONITE_CATSUIT_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREY_EBONITE_CATSUIT_BALLET_BOOTS", "Lock the Dark Grey Ebonite Catsuit Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_DARK_GREY_EBONITE_CATSUIT_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_RED_EBONITE_CATSUIT_BALLET_BOOTS", "Lock the Dark Red Ebonite Catsuit Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_DARK_RED_EBONITE_CATSUIT_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_EBONITE_CATSUIT_BALLET_BOOTS", "Lock the Golden Ebonite Catsuit Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_GOLDEN_EBONITE_CATSUIT_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GREEN_EBONITE_CATSUIT_BALLET_BOOTS", "Lock the Green Ebonite Catsuit Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_GREEN_EBONITE_CATSUIT_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_LIGHT_GREY_EBONITE_CATSUIT_BALLET_BOOTS", "Lock the Light Grey Ebonite Catsuit Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_LIGHT_GREY_EBONITE_CATSUIT_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ORANGE_EBONITE_CATSUIT_BALLET_BOOTS", "Lock the Orange Ebonite Catsuit Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_ORANGE_EBONITE_CATSUIT_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_EBONITE_CATSUIT_BALLET_BOOTS", "Lock the Pink Ebonite Catsuit Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_PINK_EBONITE_CATSUIT_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PURPLE_EBONITE_CATSUIT_BALLET_BOOTS", "Lock the Purple Ebonite Catsuit Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_PURPLE_EBONITE_CATSUIT_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_CATSUIT_BALLET_BOOTS", "Lock the Red Ebonite Catsuit Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_RED_EBONITE_CATSUIT_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_CATSUIT_BALLET_BOOTS", "Lock the White Ebonite Catsuit Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_WHITE_EBONITE_CATSUIT_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_YELLOW_EBONITE_CATSUIT_BALLET_BOOTS", "Lock the Yellow Ebonite Catsuit Ballet Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_YELLOW_EBONITE_CATSUIT_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLUE_EBONITE_GAS_MASK", "Lock the Blue Ebonite Gas Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_BLUE_EBONITE_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CYAN_EBONITE_GAS_MASK", "Lock the Cyan Ebonite Gas Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_CYAN_EBONITE_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREEN_EBONITE_GAS_MASK", "Lock the Dark Green Ebonite Gas Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_DARK_GREEN_EBONITE_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREY_EBONITE_GAS_MASK", "Lock the Dark Grey Ebonite Gas Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_DARK_GREY_EBONITE_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_RED_EBONITE_GAS_MASK", "Lock the Dark Red Ebonite Gas Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_DARK_RED_EBONITE_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_EBONITE_GAS_MASK", "Lock the Golden Ebonite Gas Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_GOLDEN_EBONITE_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GREEN_EBONITE_GAS_MASK", "Lock the Green Ebonite Gas Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_GREEN_EBONITE_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_LIGHT_GREY_EBONITE_GAS_MASK", "Lock the Light Grey Ebonite Gas Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_LIGHT_GREY_EBONITE_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ORANGE_EBONITE_GAS_MASK", "Lock the Orange Ebonite Gas Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_ORANGE_EBONITE_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_EBONITE_GAS_MASK", "Lock the Pink Ebonite Gas Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_PINK_EBONITE_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PURPLE_EBONITE_GAS_MASK", "Lock the Purple Ebonite Gas Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_PURPLE_EBONITE_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAS_MASK", "Lock the Red Ebonite Gas Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_RED_EBONITE_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAS_MASK", "Lock the White Ebonite Gas Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_WHITE_EBONITE_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_YELLOW_EBONITE_GAS_MASK", "Lock the Yellow Ebonite Gas Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_YELLOW_EBONITE_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLUE_EBONITE_GAS_MASK_TUBE", "Lock the Blue Ebonite Gas Mask tube on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_BLUE_EBONITE_GAS_MASK_TUBE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CYAN_EBONITE_GAS_MASK_TUBE", "Lock the Cyan Ebonite Gas Mask tube on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_CYAN_EBONITE_GAS_MASK_TUBE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREEN_EBONITE_GAS_MASK_TUBE", "Lock the Dark Green Ebonite Gas Mask tube on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_DARK_GREEN_EBONITE_GAS_MASK_TUBE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREY_EBONITE_GAS_MASK_TUBE", "Lock the Dark Grey Ebonite Gas Mask tube on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_DARK_GREY_EBONITE_GAS_MASK_TUBE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_RED_EBONITE_GAS_MASK_TUBE", "Lock the Dark Red Ebonite Gas Mask tube on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_DARK_RED_EBONITE_GAS_MASK_TUBE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_EBONITE_GAS_MASK_TUBE", "Lock the Golden Ebonite Gas Mask tube on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_GOLDEN_EBONITE_GAS_MASK_TUBE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GREEN_EBONITE_GAS_MASK_TUBE", "Lock the Green Ebonite Gas Mask tube on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_GREEN_EBONITE_GAS_MASK_TUBE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_LIGHT_GREY_EBONITE_GAS_MASK_TUBE", "Lock the Light Grey Ebonite Gas Mask tube on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_LIGHT_GREY_EBONITE_GAS_MASK_TUBE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ORANGE_EBONITE_GAS_MASK_TUBE", "Lock the Orange Ebonite Gas Mask tube on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_ORANGE_EBONITE_GAS_MASK_TUBE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_EBONITE_GAS_MASK_TUBE", "Lock the Pink Ebonite Gas Mask tube on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_PINK_EBONITE_GAS_MASK_TUBE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PURPLE_EBONITE_GAS_MASK_TUBE", "Lock the Purple Ebonite Gas Mask tube on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_PURPLE_EBONITE_GAS_MASK_TUBE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAS_MASK_TUBE", "Lock the Red Ebonite Gas Mask tube on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_RED_EBONITE_GAS_MASK_TUBE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAS_MASK_TUBE", "Lock the White Ebonite Gas Mask tube on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_WHITE_EBONITE_GAS_MASK_TUBE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_YELLOW_EBONITE_GAS_MASK_TUBE", "Lock the Yellow Ebonite Gas Mask tube on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_YELLOW_EBONITE_GAS_MASK_TUBE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAS_MASK_TUBE", "Lock the Black Ebonite Gas Mask tube on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_BLACK_EBONITE_GAS_MASK_TUBE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLUE_EBONITE_GAS_MASK_FILTER", "Lock the Blue Ebonite Gas Mask filter on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_BLUE_EBONITE_GAS_MASK_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CYAN_EBONITE_GAS_MASK_FILTER", "Lock the Cyan Ebonite Gas Mask filter on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_CYAN_EBONITE_GAS_MASK_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREEN_EBONITE_GAS_MASK_FILTER", "Lock the Dark Green Ebonite Gas Mask filter on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_DARK_GREEN_EBONITE_GAS_MASK_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREY_EBONITE_GAS_MASK_FILTER", "Lock the Dark Grey Ebonite Gas Mask filter on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_DARK_GREY_EBONITE_GAS_MASK_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_RED_EBONITE_GAS_MASK_FILTER", "Lock the Dark Red Ebonite Gas Mask filter on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_DARK_RED_EBONITE_GAS_MASK_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_EBONITE_GAS_MASK_FILTER", "Lock the Golden Ebonite Gas Mask filter on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_GOLDEN_EBONITE_GAS_MASK_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GREEN_EBONITE_GAS_MASK_FILTER", "Lock the Green Ebonite Gas Mask filter on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_GREEN_EBONITE_GAS_MASK_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_LIGHT_GREY_EBONITE_GAS_MASK_FILTER", "Lock the Light Grey Ebonite Gas Mask filter on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_LIGHT_GREY_EBONITE_GAS_MASK_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ORANGE_EBONITE_GAS_MASK_FILTER", "Lock the Orange Ebonite Gas Mask filter on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_ORANGE_EBONITE_GAS_MASK_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_EBONITE_GAS_MASK_FILTER", "Lock the Pink Ebonite Gas Mask filter on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_PINK_EBONITE_GAS_MASK_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PURPLE_EBONITE_GAS_MASK_FILTER", "Lock the Purple Ebonite Gas Mask filter on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_PURPLE_EBONITE_GAS_MASK_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAS_MASK_FILTER", "Lock the Red Ebonite Gas Mask filter on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_EBONITE_GAS_MASK_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAS_MASK_FILTER", "Lock the White Ebonite Gas Mask filter on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_EBONITE_GAS_MASK_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_YELLOW_EBONITE_GAS_MASK_FILTER", "Lock the Yellow Ebonite Gas Mask filter on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_YELLOW_EBONITE_GAS_MASK_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAS_MASK_FILTER", "Lock the Black Ebonite Gas Mask filter on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_EBONITE_GAS_MASK_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLUE_EBONITE_GAS_MASK_REBREATHER", "Lock the Blue Ebonite Gas Mask rebreather on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLUE_EBONITE_GAS_MASK_REBREATHER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CYAN_EBONITE_GAS_MASK_REBREATHER", "Lock the Cyan Ebonite Gas Mask rebreather on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_CYAN_EBONITE_GAS_MASK_REBREATHER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREEN_EBONITE_GAS_MASK_REBREATHER", "Lock the Dark Green Ebonite Gas Mask rebreather on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_DARK_GREEN_EBONITE_GAS_MASK_REBREATHER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREY_EBONITE_GAS_MASK_REBREATHER", "Lock the Dark Grey Ebonite Gas Mask rebreather on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_DARK_GREY_EBONITE_GAS_MASK_REBREATHER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_RED_EBONITE_GAS_MASK_REBREATHER", "Lock the Dark Red Ebonite Gas Mask rebreather on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_DARK_RED_EBONITE_GAS_MASK_REBREATHER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_EBONITE_GAS_MASK_REBREATHER", "Lock the Golden Ebonite Gas Mask rebreather on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_GOLDEN_EBONITE_GAS_MASK_REBREATHER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GREEN_EBONITE_GAS_MASK_REBREATHER", "Lock the Green Ebonite Gas Mask rebreather on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_GREEN_EBONITE_GAS_MASK_REBREATHER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_LIGHT_GREY_EBONITE_GAS_MASK_REBREATHER", "Lock the Light Grey Ebonite Gas Mask rebreather on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_LIGHT_GREY_EBONITE_GAS_MASK_REBREATHER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ORANGE_EBONITE_GAS_MASK_REBREATHER", "Lock the Orange Ebonite Gas Mask rebreather on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_ORANGE_EBONITE_GAS_MASK_REBREATHER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_EBONITE_GAS_MASK_REBREATHER", "Lock the Pink Ebonite Gas Mask rebreather on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_PINK_EBONITE_GAS_MASK_REBREATHER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PURPLE_EBONITE_GAS_MASK_REBREATHER", "Lock the Purple Ebonite Gas Mask rebreather on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_PURPLE_EBONITE_GAS_MASK_REBREATHER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_GAS_MASK_REBREATHER", "Lock the Red Ebonite Gas Mask rebreather on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_EBONITE_GAS_MASK_REBREATHER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_GAS_MASK_REBREATHER", "Lock the White Ebonite Gas Mask rebreather on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_EBONITE_GAS_MASK_REBREATHER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_YELLOW_EBONITE_GAS_MASK_REBREATHER", "Lock the Yellow Ebonite Gas Mask rebreather on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_YELLOW_EBONITE_GAS_MASK_REBREATHER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAS_MASK_REBREATHER", "Lock the Black Ebonite Gas Mask rebreather on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_EBONITE_GAS_MASK_REBREATHER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_CHASTITY_BELT_PADDED", "Lock the Golden Chastity Belt Padded on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_GOLDEN_CHASTITY_BELT_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_CHASTITY_BRA_PADDED", "Lock the Golden Chastity Bra Padded on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_GOLDEN_CHASTITY_BRA_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_SILVER_CHASTITY_BELT_PADDED", "Lock the Silver Chastity Belt Padded on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_SILVER_CHASTITY_BELT_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_SILVER_CHASTITY_BRA_PADDED", "Lock the Silver Chastity Bra Padded on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_SILVER_CHASTITY_BRA_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_COLLAR_PADDED_POSTURE", "Lock the Golden Collar Padded Posture on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_GOLDEN_COLLAR_PADDED_POSTURE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_SILVER_COLLAR_PADDED_POSTURE", "Lock the Silver Collar Padded Posture on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_SILVER_COLLAR_PADDED_POSTURE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_CUFFS_PADDED_ARMS", "Lock the Golden Cuffs Padded Arms on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_GOLDEN_CUFFS_PADDED_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_CUFFS_PADDED_LEGS", "Lock the Golden Cuffs Padded Legs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_GOLDEN_CUFFS_PADDED_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_COLLAR_PADDED", "Lock the Golden Collar Padded on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_GOLDEN_COLLAR_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_SILVER_CUFFS_PADDED_ARMS", "Lock the Silver Cuffs Padded Arms on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_SILVER_CUFFS_PADDED_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_SILVER_COLLAR_PADDED", "Lock the Silver Collar Padded on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_SILVER_COLLAR_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_SILVER_CUFFS_PADDED_LEGS", "Lock the Silver Cuffs Padded Legs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_SILVER_CUFFS_PADDED_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_ELBOWBINDER", "Lock the Black Ebonite Elbowbinder on the target", \
                                    "DeviousScriptELBOW_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptELBOW_BINDERS", "LOCK_BLACK_EBONITE_ELBOWBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ELBOW_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_ELBOWBINDER", "Lock the Red Ebonite Elbowbinder on the target", \
                                    "DeviousScriptELBOW_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptELBOW_BINDERS", "LOCK_RED_EBONITE_ELBOWBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ELBOW_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_ELBOWBINDER", "Lock the White Ebonite Elbowbinder on the target", \
                                    "DeviousScriptELBOW_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptELBOW_BINDERS", "LOCK_WHITE_EBONITE_ELBOWBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ELBOW_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_ELBOWBINDER", "Lock the Red Leather Elbowbinder on the target", \
                                    "DeviousScriptELBOW_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptELBOW_BINDERS", "LOCK_RED_LEATHER_ELBOWBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ELBOW_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_ELBOWBINDER", "Lock the White Leather Elbowbinder on the target", \
                                    "DeviousScriptELBOW_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptELBOW_BINDERS", "LOCK_WHITE_LEATHER_ELBOWBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ELBOW_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TRANSPARENT_RESTRICTIVE_COLLAR", "Lock the Transparent Restrictive Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_TRANSPARENT_RESTRICTIVE_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TRANSPARENT_RESTRICTIVE_BOOTS", "Lock the Transparent Restrictive Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_TRANSPARENT_RESTRICTIVE_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TRANSPARENT_RESTRICTIVE_CORSET", "Lock the Transparent Restrictive Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_TRANSPARENT_RESTRICTIVE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAG_LARGE_BALL_SIMPLE", "Lock the Black Ebonite Gag Large Ball Simple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_EBONITE_GAG_LARGE_BALL_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_GAG_LARGE_BALL_HARNESS", "Lock the Black Ebonite Gag Large Ball Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_EBONITE_GAG_LARGE_BALL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ROPE_BLINDFOLD", "Lock the Rope Blindfold on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_ROPE_BLINDFOLD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ROPE_BALL_GAG", "Lock the Rope Ball Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_ROPE_BALL_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ROPE_BIT_GAG", "Lock the Rope Bit Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_ROPE_BIT_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ROPE_COLLAR", "Lock the Rope Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_ROPE_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_STRICT_ROPE_ARMBINDER", "Lock the Strict Rope Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_STRICT_ROPE_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ROPE_BODY_RESTRAINT", "Lock the Rope Body Restraint on the target", \
                                    "DeviousScriptOTHER", "DDNG_IsEligible", \
                                    "DeviousScriptOTHER", "LOCK_ROPE_BODY_RESTRAINT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_ROPE_ARMBINDER", "Lock the Rope Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_ROPE_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TRANSPARENT_HOBBLE_DRESS_EXTREME", "Lock the Transparent Hobble Dress Extreme on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_TRANSPARENT_HOBBLE_DRESS_EXTREME", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TRANSPARENT_CATSUIT_LONG_GLOVES", "Lock the Transparent Catsuit Long Gloves on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_TRANSPARENT_CATSUIT_LONG_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TRANSPARENT_MASK_OPEN_EYES", "Lock the Transparent Mask Open Eyes on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_TRANSPARENT_MASK_OPEN_EYES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TRANSPARENT_MASK_OPEN_FACE", "Lock the Transparent Mask Open Face on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_TRANSPARENT_MASK_OPEN_FACE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TRANSPARENT_MASK_OPEN", "Lock the Transparent Mask Open on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_TRANSPARENT_MASK_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_FACE_MASK", "Lock the Black Ebonite Face Mask on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_BLACK_EBONITE_FACE_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TRANSPARENT_FACE_MASK", "Lock the Transparent Face Mask on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_TRANSPARENT_FACE_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_PONY_PLAY_BOOTS", "Lock the Black Ebonite Pony Play Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLACK_EBONITE_PONY_PLAY_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_PET_SUIT", "Lock the Black Leather Pet Suit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_LEATHER_PET_SUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_PET_SUIT", "Lock the Red Leather Pet Suit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_LEATHER_PET_SUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_PET_SUIT", "Lock the White Leather Pet Suit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_LEATHER_PET_SUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TAPE_GAG", "Lock the Tape Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_TAPE_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_PET_SUIT", "Lock the Black Ebonite Pet Suit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_EBONITE_PET_SUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_PET_SUIT", "Lock the Red Ebonite Pet Suit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_EBONITE_PET_SUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_PET_SUIT", "Lock the White Ebonite Pet Suit on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_EBONITE_PET_SUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_STRAITJACKET_DRESS", "Lock the Red Ebonite Straitjacket Dress on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_EBONITE_STRAITJACKET_DRESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_STRAITJACKET_DRESS", "Lock the White Ebonite Straitjacket Dress on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_EBONITE_STRAITJACKET_DRESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_STRAITJACKET_DRESS_TOPLESS", "Lock the Red Ebonite Straitjacket Dress Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_EBONITE_STRAITJACKET_DRESS_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_STRAITJACKET_DRESS_TOPLESS", "Lock the White Ebonite Straitjacket Dress Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_EBONITE_STRAITJACKET_DRESS_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_STRAITJACKET_DRESS", "Lock the Black Leather Straitjacket Dress on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_LEATHER_STRAITJACKET_DRESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_STRAITJACKET_DRESS_TOPLESS", "Lock the Black Leather Straitjacket Dress Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_BLACK_LEATHER_STRAITJACKET_DRESS_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_STRAITJACKET_DRESS", "Lock the Red Leather Straitjacket Dress on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_LEATHER_STRAITJACKET_DRESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_STRAITJACKET_DRESS", "Lock the White Leather Straitjacket Dress on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_LEATHER_STRAITJACKET_DRESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_STRAITJACKET_DRESS_TOPLESS", "Lock the Red Leather Straitjacket Dress Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_RED_LEATHER_STRAITJACKET_DRESS_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_STRAITJACKET_DRESS_TOPLESS", "Lock the White Leather Straitjacket Dress Topless on the target", \
                                    "DeviousScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "DeviousScriptSTRAITJACKETS", "LOCK_WHITE_LEATHER_STRAITJACKET_DRESS_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_COLLAR_SIMPLE", "Lock the Black Ebonite Collar Simple on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_BLACK_EBONITE_COLLAR_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_COLLAR_SIMPLE", "Lock the Red Ebonite Collar Simple on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_EBONITE_COLLAR_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_COLLAR_SIMPLE", "Lock the White Ebonite Collar Simple on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_EBONITE_COLLAR_SIMPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_COLLAR_STUDDED", "Lock the Black Ebonite Collar Studded on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_BLACK_EBONITE_COLLAR_STUDDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_COLLAR_STUDDED", "Lock the Red Ebonite Collar Studded on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_EBONITE_COLLAR_STUDDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_COLLAR_STUDDED", "Lock the White Ebonite Collar Studded on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_EBONITE_COLLAR_STUDDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_COLLAR_SPIKED", "Lock the Black Ebonite Collar Spiked on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_BLACK_EBONITE_COLLAR_SPIKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_COLLAR_SPIKED", "Lock the Red Ebonite Collar Spiked on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_EBONITE_COLLAR_SPIKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_COLLAR_SPIKED", "Lock the White Ebonite Collar Spiked on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_EBONITE_COLLAR_SPIKED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CROTCH_ROPE", "Lock the Crotch Rope on the target", \
                                    "DeviousScriptOTHER", "DDNG_IsEligible", \
                                    "DeviousScriptOTHER", "LOCK_CROTCH_ROPE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_ROPE_ARM_CUFFS", "Lock the Rope Arm Cuffs on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_ROPE_ARM_CUFFS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ROPE_LEG_CUFFS", "Lock the Rope Leg Cuffs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_ROPE_LEG_CUFFS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_FULL_TOP_CHAOTIC_ROPE_HARNESS", "Lock the Full Top Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_FULL_TOP_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_HISHI_CHAOTIC_ROPE_HARNESS", "Lock the Hishi Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_HISHI_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_PENTAGRAM_CHAOTIC_ROPE_HARNESS", "Lock the Pentagram Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_PENTAGRAM_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_SIMPLE_CHAOTIC_ROPE_HARNESS", "Lock the Simple Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_SIMPLE_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_TOP_CHAOTIC_ROPE_HARNESS", "Lock the Top Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_TOP_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_CHAOTIC_ROPE_HARNESS", "Lock the Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_PENTAGRAM_CHAOTIC_ROPE_CORSET", "Lock the Pentagram Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_PENTAGRAM_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_SIMPLE_CHAOTIC_ROPE_CORSET", "Lock the Simple Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_SIMPLE_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TOP_CHAOTIC_ROPE_CORSET", "Lock the Top Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_TOP_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CHAOTIC_ROPE_CORSET", "Lock the Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PENTAGRAM_ROPE_CORSET", "Lock the Pentagram Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_PENTAGRAM_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_SIMPLE_ROPE_CORSET", "Lock the Simple Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_SIMPLE_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TOP_ROPE_CORSET", "Lock the Top Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_TOP_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ROPE_CORSET", "Lock the Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP", "Lock the Chaotic Pentagram Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CHAOTIC_SIMPLE_ROPE_CORSET_EXP", "Lock the Chaotic Simple Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_CHAOTIC_SIMPLE_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CHAOTIC_TOP_ROPE_CORSET_EXP", "Lock the Chaotic Top Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_CHAOTIC_TOP_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CHAOTIC_ROPE_CORSET_EXP", "Lock the Chaotic Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_CHAOTIC_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PENTAGRAM_ROPE_CORSET_EXP", "Lock the Pentagram Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_PENTAGRAM_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_SIMPLE_ROPE_CORSET_EXP", "Lock the Simple Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_SIMPLE_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TOP_ROPE_CORSET_EXP", "Lock the Top Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_TOP_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ROPE_CORSET_EXP", "Lock the Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_EXTREME_ROPE_HARNESS", "Lock the Extreme Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_EXTREME_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_FULL_TOP_ROPE_HARNESS", "Lock the Full Top Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_FULL_TOP_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_HISHI_KARADA_ROPE_HARNESS", "Lock the Hishi Karada Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_HISHI_KARADA_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_PENTAGRAM_CROTCH_ROPE_HARNESS", "Lock the Pentagram Crotch Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_PENTAGRAM_CROTCH_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_PENTAGRAM_ROPE_HARNESS", "Lock the Pentagram Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_PENTAGRAM_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_SIMPLE_CROTCH_ROPE_HARNESS", "Lock the Simple Crotch Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_SIMPLE_CROTCH_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_SIMPLE_ROPE_HARNESS", "Lock the Simple Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_SIMPLE_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_TOP_CROTCH_ROPE_HARNESS", "Lock the Top Crotch Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_TOP_CROTCH_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_TOP_ROPE_HARNESS", "Lock the Top Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_TOP_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_CHAIN_COLLAR", "Lock the Chain Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_CHAIN_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BELL_COLLAR", "Lock the Bell Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_BELL_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_KITTEN_COLLAR", "Lock the Kitten Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_KITTEN_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PET_COLLAR", "Lock the Pet Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_PET_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PUPPY_COLLAR", "Lock the Puppy Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_PUPPY_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_BONE_GAG", "Lock the Black Bone Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_BONE_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_BONE_GAG", "Lock the Pink Bone Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_PINK_BONE_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_BONE_GAG", "Lock the Red Bone Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_BONE_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_EXTREME_BALL_GAG_HARNESS_PURPLE", "Lock the Extreme Ball Gag Harness Purple on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_EXTREME_BALL_GAG_HARNESS_PURPLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_EXTREME_BALL_GAG_HARNESS_RED", "Lock the Extreme Ball Gag Harness Red on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_EXTREME_BALL_GAG_HARNESS_RED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_EXTREME_INFLATABLE_GAG_HARNESS", "Lock the Extreme Inflatable Gag Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_EXTREME_INFLATABLE_GAG_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_EXTREME_PANEL_GAG_HARNESS", "Lock the Extreme Panel Gag Harness on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_EXTREME_PANEL_GAG_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_EXTREME_BALL_GAG_HARNESS_BLACK", "Lock the Extreme Ball Gag Harness Black on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_EXTREME_BALL_GAG_HARNESS_BLACK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_CROTCH_ROPE", "Lock the Red Crotch Rope on the target", \
                                    "DeviousScriptOTHER", "DDNG_IsEligible", \
                                    "DeviousScriptOTHER", "LOCK_RED_CROTCH_ROPE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_ROPE_ARM_CUFFS", "Lock the Red Rope Arm Cuffs on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_RED_ROPE_ARM_CUFFS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_ROPE_LEG_CUFFS", "Lock the Red Rope Leg Cuffs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_RED_ROPE_LEG_CUFFS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_FULL_TOP_CHAOTIC_ROPE_HARNESS", "Lock the Red Full Top Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_FULL_TOP_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_HISHI_CHAOTIC_ROPE_HARNESS", "Lock the Red Hishi Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_HISHI_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_CHAOTIC_ROPE_HARNESS", "Lock the Red Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_PENTAGRAM_CHAOTIC_ROPE_HARNESS", "Lock the Red Pentagram Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_PENTAGRAM_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_SIMPLE_CHAOTIC_ROPE_HARNESS", "Lock the Red Simple Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_SIMPLE_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_TOP_CHAOTIC_ROPE_HARNESS", "Lock the Red Top Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_TOP_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_CHAOTIC_ROPE_CORSET", "Lock the Red Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_PENTAGRAM_CHAOTIC_ROPE_CORSET", "Lock the Red Pentagram Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_PENTAGRAM_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_SIMPLE_CHAOTIC_ROPE_CORSET", "Lock the Red Simple Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_SIMPLE_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_TOP_CHAOTIC_ROPE_CORSET", "Lock the Red Top Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_TOP_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_ROPE_CORSET", "Lock the Red Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_PENTAGRAM_ROPE_CORSET", "Lock the Red Pentagram Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_PENTAGRAM_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_SIMPLE_ROPE_CORSET", "Lock the Red Simple Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_SIMPLE_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_TOP_ROPE_CORSET", "Lock the Red Top Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_TOP_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_CHAOTIC_ROPE_CORSET_EXP", "Lock the Red Chaotic Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_CHAOTIC_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP", "Lock the Red Chaotic Pentagram Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_CHAOTIC_SIMPLE_ROPE_CORSET_EXP", "Lock the Red Chaotic Simple Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_CHAOTIC_SIMPLE_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_CHAOTIC_TOP_ROPE_CORSET_EXP", "Lock the Red Chaotic Top Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_CHAOTIC_TOP_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_ROPE_CORSET_EXP", "Lock the Red Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_PENTAGRAM_ROPE_CORSET_EXP", "Lock the Red Pentagram Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_PENTAGRAM_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_SIMPLE_ROPE_CORSET_EXP", "Lock the Red Simple Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_SIMPLE_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_TOP_ROPE_CORSET_EXP", "Lock the Red Top Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_TOP_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EXTREME_ROPE_HARNESS", "Lock the Red Extreme Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_EXTREME_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_FULL_TOP_ROPE_HARNESS", "Lock the Red Full Top Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_FULL_TOP_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_HISHI_KARADA_ROPE_HARNESS", "Lock the Red Hishi Karada Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_HISHI_KARADA_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_PENTAGRAM_CROTCH_ROPE_HARNESS", "Lock the Red Pentagram Crotch Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_PENTAGRAM_CROTCH_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_PENTAGRAM_ROPE_HARNESS", "Lock the Red Pentagram Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_PENTAGRAM_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_SIMPLE_CROTCH_ROPE_HARNESS", "Lock the Red Simple Crotch Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_SIMPLE_CROTCH_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_SIMPLE_ROPE_HARNESS", "Lock the Red Simple Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_SIMPLE_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_TOP_CROTCH_ROPE_HARNESS", "Lock the Red Top Crotch Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_TOP_CROTCH_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_TOP_ROPE_HARNESS", "Lock the Red Top Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_TOP_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_CROTCH_ROPE", "Lock the Black Crotch Rope on the target", \
                                    "DeviousScriptOTHER", "DDNG_IsEligible", \
                                    "DeviousScriptOTHER", "LOCK_BLACK_CROTCH_ROPE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_ROPE_ARM_CUFFS", "Lock the Black Rope Arm Cuffs on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_BLACK_ROPE_ARM_CUFFS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_ROPE_LEG_CUFFS", "Lock the Black Rope Leg Cuffs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_BLACK_ROPE_LEG_CUFFS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_FULL_TOP_CHAOTIC_ROPE_HARNESS", "Lock the Black Full Top Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_FULL_TOP_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_HISHI_CHAOTIC_ROPE_HARNESS", "Lock the Black Hishi Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_HISHI_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_CHAOTIC_ROPE_HARNESS", "Lock the Black Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_PENTAGRAM_CHAOTIC_ROPE_HARNESS", "Lock the Black Pentagram Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_PENTAGRAM_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_SIMPLE_CHAOTIC_ROPE_HARNESS", "Lock the Black Simple Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_SIMPLE_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_TOP_CHAOTIC_ROPE_HARNESS", "Lock the Black Top Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_TOP_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_CHAOTIC_ROPE_CORSET", "Lock the Black Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_PENTAGRAM_CHAOTIC_ROPE_CORSET", "Lock the Black Pentagram Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_PENTAGRAM_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_SIMPLE_CHAOTIC_ROPE_CORSET", "Lock the Black Simple Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_SIMPLE_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_TOP_CHAOTIC_ROPE_CORSET", "Lock the Black Top Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_TOP_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_ROPE_CORSET", "Lock the Black Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_PENTAGRAM_ROPE_CORSET", "Lock the Black Pentagram Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_PENTAGRAM_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_SIMPLE_ROPE_CORSET", "Lock the Black Simple Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_SIMPLE_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_TOP_ROPE_CORSET", "Lock the Black Top Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_TOP_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_CHAOTIC_ROPE_CORSET_EXP", "Lock the Black Chaotic Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_CHAOTIC_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP", "Lock the Black Chaotic Pentagram Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_CHAOTIC_SIMPLE_ROPE_CORSET_EXP", "Lock the Black Chaotic Simple Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_CHAOTIC_SIMPLE_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_CHAOTIC_TOP_ROPE_CORSET_EXP", "Lock the Black Chaotic Top Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_CHAOTIC_TOP_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_ROPE_CORSET_EXP", "Lock the Black Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_PENTAGRAM_ROPE_CORSET_EXP", "Lock the Black Pentagram Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_PENTAGRAM_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_SIMPLE_ROPE_CORSET_EXP", "Lock the Black Simple Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_SIMPLE_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_TOP_ROPE_CORSET_EXP", "Lock the Black Top Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_TOP_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EXTREME_ROPE_HARNESS", "Lock the Black Extreme Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_EXTREME_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_FULL_TOP_ROPE_HARNESS", "Lock the Black Full Top Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_FULL_TOP_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_HISHI_KARADA_ROPE_HARNESS", "Lock the Black Hishi Karada Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_HISHI_KARADA_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_PENTAGRAM_CROTCH_ROPE_HARNESS", "Lock the Black Pentagram Crotch Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_PENTAGRAM_CROTCH_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_PENTAGRAM_ROPE_HARNESS", "Lock the Black Pentagram Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_PENTAGRAM_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_SIMPLE_CROTCH_ROPE_HARNESS", "Lock the Black Simple Crotch Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_SIMPLE_CROTCH_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_SIMPLE_ROPE_HARNESS", "Lock the Black Simple Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_SIMPLE_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_TOP_CROTCH_ROPE_HARNESS", "Lock the Black Top Crotch Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_TOP_CROTCH_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_TOP_ROPE_HARNESS", "Lock the Black Top Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_TOP_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_CROTCH_ROPE", "Lock the White Crotch Rope on the target", \
                                    "DeviousScriptOTHER", "DDNG_IsEligible", \
                                    "DeviousScriptOTHER", "LOCK_WHITE_CROTCH_ROPE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_ROPE_ARM_CUFFS", "Lock the White Rope Arm Cuffs on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_WHITE_ROPE_ARM_CUFFS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_ROPE_LEG_CUFFS", "Lock the White Rope Leg Cuffs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_WHITE_ROPE_LEG_CUFFS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_FULL_TOP_CHAOTIC_ROPE_HARNESS", "Lock the White Full Top Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_FULL_TOP_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_HISHI_CHAOTIC_ROPE_HARNESS", "Lock the White Hishi Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_HISHI_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_CHAOTIC_ROPE_HARNESS", "Lock the White Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_PENTAGRAM_CHAOTIC_ROPE_HARNESS", "Lock the White Pentagram Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_PENTAGRAM_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_SIMPLE_CHAOTIC_ROPE_HARNESS", "Lock the White Simple Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_SIMPLE_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_TOP_CHAOTIC_ROPE_HARNESS", "Lock the White Top Chaotic Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_TOP_CHAOTIC_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_CHAOTIC_ROPE_CORSET", "Lock the White Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_PENTAGRAM_CHAOTIC_ROPE_CORSET", "Lock the White Pentagram Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_PENTAGRAM_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_SIMPLE_CHAOTIC_ROPE_CORSET", "Lock the White Simple Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_SIMPLE_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_TOP_CHAOTIC_ROPE_CORSET", "Lock the White Top Chaotic Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_TOP_CHAOTIC_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_ROPE_CORSET", "Lock the White Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_PENTAGRAM_ROPE_CORSET", "Lock the White Pentagram Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_PENTAGRAM_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_SIMPLE_ROPE_CORSET", "Lock the White Simple Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_SIMPLE_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_TOP_ROPE_CORSET", "Lock the White Top Rope Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_TOP_ROPE_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_CHAOTIC_ROPE_CORSET_EXP", "Lock the White Chaotic Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_CHAOTIC_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP", "Lock the White Chaotic Pentagram Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_CHAOTIC_SIMPLE_ROPE_CORSET_EXP", "Lock the White Chaotic Simple Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_CHAOTIC_SIMPLE_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_CHAOTIC_TOP_ROPE_CORSET_EXP", "Lock the White Chaotic Top Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_CHAOTIC_TOP_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_ROPE_CORSET_EXP", "Lock the White Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_PENTAGRAM_ROPE_CORSET_EXP", "Lock the White Pentagram Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_PENTAGRAM_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_SIMPLE_ROPE_CORSET_EXP", "Lock the White Simple Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_SIMPLE_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_TOP_ROPE_CORSET_EXP", "Lock the White Top Rope Corset Exp on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_TOP_ROPE_CORSET_EXP", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EXTREME_ROPE_HARNESS", "Lock the White Extreme Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_EXTREME_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_FULL_TOP_ROPE_HARNESS", "Lock the White Full Top Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_FULL_TOP_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_HISHI_KARADA_ROPE_HARNESS", "Lock the White Hishi Karada Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_HISHI_KARADA_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_PENTAGRAM_CROTCH_ROPE_HARNESS", "Lock the White Pentagram Crotch Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_PENTAGRAM_CROTCH_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_PENTAGRAM_ROPE_HARNESS", "Lock the White Pentagram Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_PENTAGRAM_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_SIMPLE_CROTCH_ROPE_HARNESS", "Lock the White Simple Crotch Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_SIMPLE_CROTCH_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_SIMPLE_ROPE_HARNESS", "Lock the White Simple Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_SIMPLE_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_TOP_CROTCH_ROPE_HARNESS", "Lock the White Top Crotch Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_TOP_CROTCH_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_TOP_ROPE_HARNESS", "Lock the White Top Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_TOP_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_ELBOW_SHACKLES_WITH_COLLAR", "Lock the Elbow Shackles with Collar on the target", \
                                    "DeviousScriptELBOW_SHACKLES", "DDNG_IsEligible", \
                                    "DeviousScriptELBOW_SHACKLES", "LOCK_ELBOW_SHACKLES_WITH_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ELBOW_SHACKLES") 
    
           SkyrimNetApi.RegisterAction("LOCK_HOOKED_ELBOW_SHACKLES", "Lock the Hooked Elbow Shackles on the target", \
                                    "DeviousScriptELBOW_SHACKLES", "DDNG_IsEligible", \
                                    "DeviousScriptELBOW_SHACKLES", "LOCK_HOOKED_ELBOW_SHACKLES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ELBOW_SHACKLES") 
    
           SkyrimNetApi.RegisterAction("LOCK_ELBOW_SHACKLES", "Lock the Elbow Shackles on the target", \
                                    "DeviousScriptELBOW_SHACKLES", "DDNG_IsEligible", \
                                    "DeviousScriptELBOW_SHACKLES", "LOCK_ELBOW_SHACKLES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ELBOW_SHACKLES") 
    
           SkyrimNetApi.RegisterAction("LOCK_INFLATABLE_PANEL_GAG", "Lock the Inflatable Panel Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_INFLATABLE_PANEL_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_BOXBINDER", "Lock the Black Ebonite Boxbinder on the target", \
                                    "DeviousScriptBOX_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptBOX_BINDERS", "LOCK_BLACK_EBONITE_BOXBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOX_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_BOXBINDER_OUTFIT", "Lock the Black Ebonite Boxbinder Outfit on the target", \
                                    "DeviousScriptBOX_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptBOX_BINDERS", "LOCK_BLACK_EBONITE_BOXBINDER_OUTFIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOX_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_SLAVE_HARNESS_NO_COLLAR", "Lock the White Leather Slave Harness No Collar on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_LEATHER_SLAVE_HARNESS_NO_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_CHASTITY_HARNESS_NO_COLLAR", "Lock the White Leather Chastity Harness No Collar on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_LEATHER_CHASTITY_HARNESS_NO_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_CHASTITY_HARNESS_NO_COLLAR", "Lock the Red Leather Chastity Harness No Collar on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_LEATHER_CHASTITY_HARNESS_NO_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_SLAVE_HARNESS_NO_COLLAR", "Lock the White Ebonite Slave Harness No Collar on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_EBONITE_SLAVE_HARNESS_NO_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_SLAVE_HARNESS_NO_COLLAR", "Lock the Red Ebonite Slave Harness No Collar on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_EBONITE_SLAVE_HARNESS_NO_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_CHASTITY_HARNESS_NO_COLLAR", "Lock the White Ebonite Chastity Harness No Collar on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_EBONITE_CHASTITY_HARNESS_NO_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_CHASTITY_BELT_PADDED_OPEN", "Lock the Golden Chastity Belt Padded Open on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_GOLDEN_CHASTITY_BELT_PADDED_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_SILVER_CHASTITY_BELT_PADDED_OPEN", "Lock the Silver Chastity Belt Padded Open on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_SILVER_CHASTITY_BELT_PADDED_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_CATSUIT_BOOTS", "Lock the Black Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLACK_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLUE_EBONITE_CATSUIT_BOOTS", "Lock the Blue Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLUE_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CYAN_EBONITE_CATSUIT_BOOTS", "Lock the Cyan Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_CYAN_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREEN_EBONITE_CATSUIT_BOOTS", "Lock the Dark Green Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_DARK_GREEN_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_GREY_EBONITE_CATSUIT_BOOTS", "Lock the Dark Grey Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_DARK_GREY_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DARK_RED_EBONITE_CATSUIT_BOOTS", "Lock the Dark Red Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_DARK_RED_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GOLDEN_EBONITE_CATSUIT_BOOTS", "Lock the Golden Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_GOLDEN_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_GREEN_EBONITE_CATSUIT_BOOTS", "Lock the Green Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_GREEN_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_LIGHT_GREY_EBONITE_CATSUIT_BOOTS", "Lock the Light Grey Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_LIGHT_GREY_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ORANGE_EBONITE_CATSUIT_BOOTS", "Lock the Orange Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_ORANGE_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_EBONITE_CATSUIT_BOOTS", "Lock the Pink Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_PINK_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PURPLE_EBONITE_CATSUIT_BOOTS", "Lock the Purple Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_PURPLE_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_CATSUIT_BOOTS", "Lock the Red Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_RED_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_REDWHITE_EBONITE_CATSUIT_BOOTS", "Lock the RedWhite Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_REDWHITE_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_CATSUIT_BOOTS", "Lock the White Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_WHITE_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_YELLOW_EBONITE_CATSUIT_BOOTS", "Lock the Yellow Ebonite Catsuit Boots on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_YELLOW_EBONITE_CATSUIT_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_CHASTITY_BRA_PADDED", "Lock the Red Chastity Bra Padded on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_RED_CHASTITY_BRA_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_CHASTITY_BELT_PADDED", "Lock the Red Chastity Belt Padded on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_RED_CHASTITY_BELT_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_CHASTITY_BELT_PADDED", "Lock the White Chastity Belt Padded on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_WHITE_CHASTITY_BELT_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_CHASTITY_BELT_PADDED", "Lock the Black Chastity Belt Padded on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_BLACK_CHASTITY_BELT_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_CHASTITY_BRA_PADDED", "Lock the White Chastity Bra Padded on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_WHITE_CHASTITY_BRA_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_CHASTITY_BRA_PADDED", "Lock the Black Chastity Bra Padded on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_BLACK_CHASTITY_BRA_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_COLLAR_PADDED_POSTURE", "Lock the Red Collar Padded Posture on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_COLLAR_PADDED_POSTURE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_COLLAR_PADDED_POSTURE", "Lock the White Collar Padded Posture on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_COLLAR_PADDED_POSTURE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_COLLAR_PADDED_POSTURE", "Lock the Black Collar Padded Posture on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_BLACK_COLLAR_PADDED_POSTURE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_CUFFS_PADDED_ARMS", "Lock the Red Cuffs Padded Arms on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_RED_CUFFS_PADDED_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_CUFFS_PADDED_ARMS", "Lock the White Cuffs Padded Arms on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_WHITE_CUFFS_PADDED_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_CUFFS_PADDED_ARMS", "Lock the Black Cuffs Padded Arms on the target", \
                                    "DeviousScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptARM_CUFFS", "LOCK_BLACK_CUFFS_PADDED_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_COLLAR_PADDED", "Lock the Red Collar Padded on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_RED_COLLAR_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_COLLAR_PADDED", "Lock the White Collar Padded on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_WHITE_COLLAR_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_COLLAR_PADDED", "Lock the Black Collar Padded on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_BLACK_COLLAR_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_CUFFS_PADDED_LEGS", "Lock the Red Cuffs Padded Legs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_RED_CUFFS_PADDED_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_CUFFS_PADDED_LEGS", "Lock the White Cuffs Padded Legs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_WHITE_CUFFS_PADDED_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_CUFFS_PADDED_LEGS", "Lock the Black Cuffs Padded Legs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_BLACK_CUFFS_PADDED_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_CHASTITY_BELT_PADDED_OPEN", "Lock the Black Chastity Belt Padded Open on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_BLACK_CHASTITY_BELT_PADDED_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_CHASTITY_BELT_PADDED_OPEN", "Lock the White Chastity Belt Padded Open on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_WHITE_CHASTITY_BELT_PADDED_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_CHASTITY_BELT_PADDED_OPEN", "Lock the Red Chastity Belt Padded Open on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_RED_CHASTITY_BELT_PADDED_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_FACE_MASK", "Lock the Red Ebonite Face Mask on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_EBONITE_FACE_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_MASK_OPEN_FACE", "Lock the White Ebonite Mask Open Face on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_WHITE_EBONITE_MASK_OPEN_FACE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_MASK_OPEN", "Lock the White Ebonite Mask Open on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_WHITE_EBONITE_MASK_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_HOOD", "Lock the Red Leather Hood on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_RED_LEATHER_HOOD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_HIGH_HEELS", "Lock the White Leather High Heels on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_WHITE_LEATHER_HIGH_HEELS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_HIGH_HEELS", "Lock the Red Leather High Heels on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_RED_LEATHER_HIGH_HEELS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_HIGH_HEELS", "Lock the White Ebonite High Heels on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_WHITE_EBONITE_HIGH_HEELS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_HIGH_HEELS", "Lock the Red Ebonite High Heels on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_RED_EBONITE_HIGH_HEELS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_HIGH_HEELS", "Lock the Black Ebonite High Heels on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLACK_EBONITE_HIGH_HEELS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_HIGH_HEELS", "Lock the Black Leather High Heels on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLACK_LEATHER_HIGH_HEELS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LUSTROUS_COLLAR_PADDED_POSTURE", "Lock the Black Lustrous Collar Padded Posture on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_BLACK_LUSTROUS_COLLAR_PADDED_POSTURE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LUSTROUS_CHASTITY_BRA_PADDED", "Lock the Black Lustrous Chastity Bra Padded on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_BLACK_LUSTROUS_CHASTITY_BRA_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LUSTROUS_CHASTITY_BELT_PADDED", "Lock the White Lustrous Chastity Belt Padded on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_WHITE_LUSTROUS_CHASTITY_BELT_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LUSTROUS_CHASTITY_BELT_PADDED", "Lock the Red Lustrous Chastity Belt Padded on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_RED_LUSTROUS_CHASTITY_BELT_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LUSTROUS_CHASTITY_BELT_PADDED", "Lock the Black Lustrous Chastity Belt Padded on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_BLACK_LUSTROUS_CHASTITY_BELT_PADDED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_MUZZLE_LIPS_GAG", "Lock the White Leather Muzzle Lips Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_LEATHER_MUZZLE_LIPS_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_MUZZLE_LIPS_GAG", "Lock the Red Leather Muzzle Lips Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_LEATHER_MUZZLE_LIPS_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_LEATHER_MUZZLE_LIPS_GAG", "Lock the Pink Leather Muzzle Lips Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_PINK_LEATHER_MUZZLE_LIPS_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_MUZZLE_LIPS_GAG", "Lock the White Ebonite Muzzle Lips Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_EBONITE_MUZZLE_LIPS_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_MUZZLE_LIPS_GAG", "Lock the Red Ebonite Muzzle Lips Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_EBONITE_MUZZLE_LIPS_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_EBONITE_MUZZLE_LIPS_GAG", "Lock the Pink Ebonite Muzzle Lips Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_PINK_EBONITE_MUZZLE_LIPS_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_MUZZLE_LIPS_GAG", "Lock the Black Ebonite Muzzle Lips Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_EBONITE_MUZZLE_LIPS_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LUSTROUS_CHASTITY_BELT_PADDED_OPEN", "Lock the Black Lustrous Chastity Belt Padded Open on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_BLACK_LUSTROUS_CHASTITY_BELT_PADDED_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TRANSPARENT_RESTRICTIVE_GLOVES", "Lock the Transparent Restrictive Gloves on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_TRANSPARENT_RESTRICTIVE_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_ROPE_HARNESS", "Lock the White Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_ROPE_HARNESS", "Lock the Red Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_ROPE_HARNESS", "Lock the Black Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_ROPE_HARNESS", "Lock the Rope Harness on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_ROPE_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_ROPE_BODY_RESTRAINT", "Lock the White Rope Body Restraint on the target", \
                                    "DeviousScriptLEG_RESTRAINTS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_RESTRAINTS", "LOCK_WHITE_ROPE_BODY_RESTRAINT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_RESTRAINTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_ROPE_BODY_RESTRAINT", "Lock the Red Rope Body Restraint on the target", \
                                    "DeviousScriptLEG_RESTRAINTS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_RESTRAINTS", "LOCK_RED_ROPE_BODY_RESTRAINT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_RESTRAINTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_ROPE_BODY_RESTRAINT", "Lock the Black Rope Body Restraint on the target", \
                                    "DeviousScriptLEG_RESTRAINTS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_RESTRAINTS", "LOCK_BLACK_ROPE_BODY_RESTRAINT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_RESTRAINTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_ROPE_BIT_GAG", "Lock the White Rope Bit Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_ROPE_BIT_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_ROPE_BLINDFOLD", "Lock the White Rope Blindfold on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_WHITE_ROPE_BLINDFOLD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_ROPE_BLINDFOLD", "Lock the Red Rope Blindfold on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_RED_ROPE_BLINDFOLD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_ROPE_BLINDFOLD", "Lock the Black Rope Blindfold on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_BLACK_ROPE_BLINDFOLD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_STRICT_WHITE_ROPE_ARMBINDER", "Lock the Strict White Rope Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_STRICT_WHITE_ROPE_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_STRICT_RED_ROPE_ARMBINDER", "Lock the Strict Red Rope Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_STRICT_RED_ROPE_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_STRICT_BLACK_ROPE_ARMBINDER", "Lock the Strict Black Rope Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_STRICT_BLACK_ROPE_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_ROPE_ARMBINDER", "Lock the White Rope Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_WHITE_ROPE_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_ROPE_ARMBINDER", "Lock the Red Rope Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_RED_ROPE_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_ROPE_ARMBINDER", "Lock the Black Rope Armbinder on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_BLACK_ROPE_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TRANSPARENT_RESTRICTIVE_CHASTITY_CORSET_OPEN", "Lock the Transparent Restrictive Chastity Corset Open on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_TRANSPARENT_RESTRICTIVE_CHASTITY_CORSET_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TRANSPARENT_RESTRICTIVE_CHASTITY_CORSET", "Lock the Transparent Restrictive Chastity Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_TRANSPARENT_RESTRICTIVE_CHASTITY_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_ARMBINDER_NEW", "Lock the Black Ebonite Armbinder New on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_BLACK_EBONITE_ARMBINDER_NEW", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_EBONITE_ARMBINDER_NEW", "Lock the Pink Ebonite Armbinder New on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_PINK_EBONITE_ARMBINDER_NEW", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PINK_LEATHER_ARMBINDER_NEW", "Lock the Pink Leather Armbinder New on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_PINK_LEATHER_ARMBINDER_NEW", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_ARMBINDER_NEW", "Lock the Black Leather Armbinder New on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_BLACK_LEATHER_ARMBINDER_NEW", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ARMBINDER_NEW", "Lock the Armbinder New on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_ARMBINDER_NEW", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_ARMBINDER_NEW", "Lock the White Ebonite Armbinder New on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_WHITE_EBONITE_ARMBINDER_NEW", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_ARMBINDER_NEW", "Lock the White Leather Armbinder New on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_WHITE_LEATHER_ARMBINDER_NEW", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_ARMBINDER_NEW", "Lock the Red Ebonite Armbinder New on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_RED_EBONITE_ARMBINDER_NEW", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_ARMBINDER_NEW", "Lock the Red Leather Armbinder New on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_RED_LEATHER_ARMBINDER_NEW", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_CHASTITY_HARNESS_CORSET", "Lock the Black Leather Chastity Harness Corset on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_LEATHER_CHASTITY_HARNESS_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_CATSUIT_TIGHT", "Lock the Black Leather Catsuit Tight on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_LEATHER_CATSUIT_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_CATSUIT_TIGHT", "Lock the Red Leather Catsuit Tight on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_LEATHER_CATSUIT_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_CATSUIT_TIGHT", "Lock the White Leather Catsuit Tight on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_LEATHER_CATSUIT_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_CHASTITY_HARNESS_CORSET", "Lock the Red Leather Chastity Harness Corset on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_LEATHER_CHASTITY_HARNESS_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_CHASTITY_HARNESS_CORSET", "Lock the White Leather Chastity Harness Corset on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_LEATHER_CHASTITY_HARNESS_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_GAS_GAG_FILTER", "Lock the Black Gas Gag Filter on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_BLACK_GAS_GAG_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_CATSUIT_TIGHT", "Lock the Black Ebonite Catsuit Tight on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_EBONITE_CATSUIT_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_CHASTITY_HARNESS_CORSET", "Lock the Black Ebonite Chastity Harness Corset on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_BLACK_EBONITE_CHASTITY_HARNESS_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_CATSUIT_TIGHT", "Lock the Red Ebonite Catsuit Tight on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_EBONITE_CATSUIT_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_CATSUIT_TIGHT", "Lock the White Ebonite Catsuit Tight on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_EBONITE_CATSUIT_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_CHASTITY_HARNESS_CORSET", "Lock the Red Ebonite Chastity Harness Corset on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_RED_EBONITE_CHASTITY_HARNESS_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_CHASTITY_HARNESS_CORSET", "Lock the White Ebonite Chastity Harness Corset on the target", \
                                    "DeviousScriptHARNESSES", "DDNG_IsEligible", \
                                    "DeviousScriptHARNESSES", "LOCK_WHITE_EBONITE_CHASTITY_HARNESS_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_BOXBINDER_HIDDEN_ARMS", "Lock the Black Ebonite Boxbinder Hidden arms on the target", \
                                    "DeviousScriptBOX_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptBOX_BINDERS", "LOCK_BLACK_EBONITE_BOXBINDER_HIDDEN_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOX_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_BOXBINDER_HIDDEN_ARMS", "Lock the Red Ebonite Boxbinder Hidden arms on the target", \
                                    "DeviousScriptBOX_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptBOX_BINDERS", "LOCK_RED_EBONITE_BOXBINDER_HIDDEN_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOX_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_BOXBINDER_HIDDEN_ARMS", "Lock the White Ebonite Boxbinder Hidden arms on the target", \
                                    "DeviousScriptBOX_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptBOX_BINDERS", "LOCK_WHITE_EBONITE_BOXBINDER_HIDDEN_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOX_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_GAS_GAG_FILTER", "Lock the Red Gas Gag Filter on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_RED_GAS_GAG_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_GAS_GAG_FILTER", "Lock the White Gas Gag Filter on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_WHITE_GAS_GAG_FILTER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_EXTREME_HOOD", "Lock the Black Leather Extreme Hood on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_BLACK_LEATHER_EXTREME_HOOD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_EXTREME_HOOD_OPEN", "Lock the Black Leather Extreme Hood Open on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_BLACK_LEATHER_EXTREME_HOOD_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_EXTREME_HOOD", "Lock the Red Leather Extreme Hood on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_RED_LEATHER_EXTREME_HOOD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_EXTREME_HOOD_OPEN", "Lock the Red Leather Extreme Hood Open on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_RED_LEATHER_EXTREME_HOOD_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_EXTREME_HOOD", "Lock the White Leather Extreme Hood on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_WHITE_LEATHER_EXTREME_HOOD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_EXTREME_HOOD_OPEN", "Lock the White Leather Extreme Hood Open on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_WHITE_LEATHER_EXTREME_HOOD_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_EXTREME_HOOD", "Lock the Black Ebonite Extreme Hood on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_BLACK_EBONITE_EXTREME_HOOD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_EXTREME_HOOD_OPEN", "Lock the Black Ebonite Extreme Hood Open on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_BLACK_EBONITE_EXTREME_HOOD_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_EXTREME_HOOD", "Lock the Red Ebonite Extreme Hood on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_RED_EBONITE_EXTREME_HOOD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_EXTREME_HOOD_OPEN", "Lock the Red Ebonite Extreme Hood Open on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_RED_EBONITE_EXTREME_HOOD_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_EXTREME_HOOD", "Lock the White Ebonite Extreme Hood on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_WHITE_EBONITE_EXTREME_HOOD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_EXTREME_HOOD_OPEN", "Lock the White Ebonite Extreme Hood Open on the target", \
                                    "DeviousScriptHOODS", "DDNG_IsEligible", \
                                    "DeviousScriptHOODS", "LOCK_WHITE_EBONITE_EXTREME_HOOD_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_JEWELED_RINGS_NIPPLES_SOULGEM", "Lock the Jeweled Rings Nipples Soulgem on the target", \
                                    "DeviousScriptPIERCINGS", "DDNG_IsEligible", \
                                    "DeviousScriptPIERCINGS", "LOCK_JEWELED_RINGS_NIPPLES_SOULGEM", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PIERCINGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_CATSUIT_TIGHT_OPEN", "Lock the Black Ebonite Catsuit Tight Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_EBONITE_CATSUIT_TIGHT_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_CATSUIT_TIGHT_OPEN_", "Lock the Red Ebonite Catsuit Tight Open  on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_EBONITE_CATSUIT_TIGHT_OPEN_", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_CATSUIT_TIGHT_OPEN", "Lock the White Ebonite Catsuit Tight Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_EBONITE_CATSUIT_TIGHT_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_CATSUIT_TIGHT_OPEN", "Lock the Black Leather Catsuit Tight Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_BLACK_LEATHER_CATSUIT_TIGHT_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_CATSUIT_TIGHT_OPEN", "Lock the Red Leather Catsuit Tight Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_RED_LEATHER_CATSUIT_TIGHT_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_CATSUIT_TIGHT_OPEN", "Lock the White Leather Catsuit Tight Open on the target", \
                                    "DeviousScriptSUITS", "DDNG_IsEligible", \
                                    "DeviousScriptSUITS", "LOCK_WHITE_LEATHER_CATSUIT_TIGHT_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_HARNESS_CORSET", "Lock the Black Leather Harness Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_LEATHER_HARNESS_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_HARNESS_CORSET", "Lock the Red Leather Harness Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_LEATHER_HARNESS_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_HARNESS_CORSET", "Lock the White Leather Harness Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_LEATHER_HARNESS_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_HARNESS_CORSET", "Lock the Black Ebonite Harness Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_BLACK_EBONITE_HARNESS_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_HARNESS_CORSET", "Lock the Red Ebonite Harness Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_RED_EBONITE_HARNESS_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_HARNESS_CORSET", "Lock the White Ebonite Harness Corset on the target", \
                                    "DeviousScriptCORSETS", "DDNG_IsEligible", \
                                    "DeviousScriptCORSETS", "LOCK_WHITE_EBONITE_HARNESS_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_BUTTERFLY", "Lock the Black Ebonite Butterfly on the target", \
                                    "DeviousScriptBUTTERFLY_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptBUTTERFLY_BINDERS", "LOCK_BLACK_EBONITE_BUTTERFLY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BUTTERFLY_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_BUTTERFLY", "Lock the Red Ebonite Butterfly on the target", \
                                    "DeviousScriptBUTTERFLY_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptBUTTERFLY_BINDERS", "LOCK_RED_EBONITE_BUTTERFLY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BUTTERFLY_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_BUTTERFLY", "Lock the White Ebonite Butterfly on the target", \
                                    "DeviousScriptBUTTERFLY_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptBUTTERFLY_BINDERS", "LOCK_WHITE_EBONITE_BUTTERFLY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BUTTERFLY_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_BUTTERFLY", "Lock the Black Leather Butterfly on the target", \
                                    "DeviousScriptBUTTERFLY_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptBUTTERFLY_BINDERS", "LOCK_BLACK_LEATHER_BUTTERFLY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BUTTERFLY_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_BUTTERFLY", "Lock the Red Leather Butterfly on the target", \
                                    "DeviousScriptBUTTERFLY_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptBUTTERFLY_BINDERS", "LOCK_RED_LEATHER_BUTTERFLY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BUTTERFLY_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_BUTTERFLY", "Lock the White Leather Butterfly on the target", \
                                    "DeviousScriptBUTTERFLY_BINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptBUTTERFLY_BINDERS", "LOCK_WHITE_LEATHER_BUTTERFLY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BUTTERFLY_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_SIMPLE_ROPES_ARMS", "Lock the Simple Ropes Arms on the target", \
                                    "DeviousScriptARMBINDERS", "DDNG_IsEligible", \
                                    "DeviousScriptARMBINDERS", "LOCK_SIMPLE_ROPES_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_SIMPLE_ROPES_LEGS", "Lock the Simple Ropes Legs on the target", \
                                    "DeviousScriptLEG_RESTRAINTS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_RESTRAINTS", "LOCK_SIMPLE_ROPES_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_RESTRAINTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_SIMPLE_ROPES_LEG_CUFFS", "Lock the Simple Ropes Leg Cuffs on the target", \
                                    "DeviousScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "DeviousScriptLEG_CUFFS", "LOCK_SIMPLE_ROPES_LEG_CUFFS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_HEAVY_LEATHER_COLLAR", "Lock the Heavy Leather Collar on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_HEAVY_LEATHER_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_HEAVY_LEATHER_PENIS_GAG", "Lock the Heavy Leather Penis Gag on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_HEAVY_LEATHER_PENIS_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_HEAVY_LEATHER_BLINDFOLD_BLACK", "Lock the Heavy Leather Blindfold Black on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_HEAVY_LEATHER_BLINDFOLD_BLACK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_HEAVY_LEATHER_BLINDFOLD_RED", "Lock the Heavy Leather Blindfold Red on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_HEAVY_LEATHER_BLINDFOLD_RED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_HEAVY_LEATHER_BLINDFOLD_WHITE", "Lock the Heavy Leather Blindfold White on the target", \
                                    "DeviousScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "DeviousScriptBLINDFOLDS", "LOCK_HEAVY_LEATHER_BLINDFOLD_WHITE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_HEAVY_LEATHER_COLLAR_BLACK", "Lock the Heavy Leather Collar Black on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_HEAVY_LEATHER_COLLAR_BLACK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_HEAVY_LEATHER_COLLAR_RED", "Lock the Heavy Leather Collar Red on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_HEAVY_LEATHER_COLLAR_RED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_HEAVY_LEATHER_COLLAR_WHITE", "Lock the Heavy Leather Collar White on the target", \
                                    "DeviousScriptCOLLARS", "DDNG_IsEligible", \
                                    "DeviousScriptCOLLARS", "LOCK_HEAVY_LEATHER_COLLAR_WHITE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_HEAVY_LEATHER_PENIS_GAG_BLACK", "Lock the Heavy Leather Penis Gag Black on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_HEAVY_LEATHER_PENIS_GAG_BLACK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_HEAVY_LEATHER_PENIS_GAG_RED", "Lock the Heavy Leather Penis Gag Red on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_HEAVY_LEATHER_PENIS_GAG_RED", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_HEAVY_LEATHER_PENIS_GAG_WHITE", "Lock the Heavy Leather Penis Gag White on the target", \
                                    "DeviousScriptGAGS", "DDNG_IsEligible", \
                                    "DeviousScriptGAGS", "LOCK_HEAVY_LEATHER_PENIS_GAG_WHITE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_BONDAGE_MITTENS", "Lock the Black Ebonite Bondage Mittens on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_BLACK_EBONITE_BONDAGE_MITTENS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_BONDAGE_MITTENS", "Lock the Red Ebonite Bondage Mittens on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_RED_EBONITE_BONDAGE_MITTENS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_BONDAGE_MITTENS", "Lock the White Ebonite Bondage Mittens on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_WHITE_EBONITE_BONDAGE_MITTENS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_PONY_BOOTS_TIGHT", "Lock the Black Ebonite Pony Boots Tight on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLACK_EBONITE_PONY_BOOTS_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_PONY_BOOTS_SHORT_TIGHT", "Lock the Black Ebonite Pony Boots Short Tight on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLACK_EBONITE_PONY_BOOTS_SHORT_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_PONY_BOOTS_TIGHT", "Lock the Red Ebonite Pony Boots Tight on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_RED_EBONITE_PONY_BOOTS_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_PONY_BOOTS_SHORT_TIGHT", "Lock the Red Ebonite Pony Boots Short Tight on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_RED_EBONITE_PONY_BOOTS_SHORT_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_PONY_BOOTS_TIGHT", "Lock the White Ebonite Pony Boots Tight on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_WHITE_EBONITE_PONY_BOOTS_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_PONY_BOOTS_SHORT_TIGHT", "Lock the White Ebonite Pony Boots Short Tight on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_WHITE_EBONITE_PONY_BOOTS_SHORT_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_EBONITE_CHASTITY_BELT", "Lock the Black Ebonite Chastity Belt on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_BLACK_EBONITE_CHASTITY_BELT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_EBONITE_CHASTITY_BELT", "Lock the Red Ebonite Chastity Belt on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_RED_EBONITE_CHASTITY_BELT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_EBONITE_CHASTITY_BELT", "Lock the White Ebonite Chastity Belt on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_WHITE_EBONITE_CHASTITY_BELT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_TRANSPARENT_EBONITE_CHASTITY_BELT", "Lock the Transparent Ebonite Chastity Belt on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_TRANSPARENT_EBONITE_CHASTITY_BELT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_IRON_YOKE_FIDDLE", "Lock the Iron Yoke Fiddle on the target", \
                                    "DeviousScriptYOKES", "DDNG_IsEligible", \
                                    "DeviousScriptYOKES", "LOCK_IRON_YOKE_FIDDLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","YOKES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_BONDAGE_MITTENS", "Lock the Black Leather Bondage Mittens on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_BLACK_LEATHER_BONDAGE_MITTENS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_PONY_BOOTS_TIGHT", "Lock the Black Leather Pony Boots Tight on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLACK_LEATHER_PONY_BOOTS_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_BONDAGE_MITTENS", "Lock the Red Leather Bondage Mittens on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_RED_LEATHER_BONDAGE_MITTENS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_BONDAGE_MITTENS", "Lock the White Leather Bondage Mittens on the target", \
                                    "DeviousScriptGLOVES", "DDNG_IsEligible", \
                                    "DeviousScriptGLOVES", "LOCK_WHITE_LEATHER_BONDAGE_MITTENS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_PONY_BOOTS_TIGHT", "Lock the Red Leather Pony Boots Tight on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_RED_LEATHER_PONY_BOOTS_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_PONY_BOOTS_TIGHT", "Lock the White Leather Pony Boots Tight on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_WHITE_LEATHER_PONY_BOOTS_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_PONY_BOOTS_SHORT_TIGHT", "Lock the Black Leather Pony Boots Short Tight on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_BLACK_LEATHER_PONY_BOOTS_SHORT_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_PONY_BOOTS_SHORT_TIGHT", "Lock the Red Leather Pony Boots Short Tight on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_RED_LEATHER_PONY_BOOTS_SHORT_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_PONY_BOOTS_SHORT_TIGHT", "Lock the White Leather Pony Boots Short Tight on the target", \
                                    "DeviousScriptBOOTS", "DDNG_IsEligible", \
                                    "DeviousScriptBOOTS", "LOCK_WHITE_LEATHER_PONY_BOOTS_SHORT_TIGHT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_BLACK_LEATHER_CHASTITY_BELT", "Lock the Black Leather Chastity Belt on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_BLACK_LEATHER_CHASTITY_BELT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RED_LEATHER_CHASTITY_BELT", "Lock the Red Leather Chastity Belt on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_RED_LEATHER_CHASTITY_BELT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_LEATHER_CHASTITY_BELT", "Lock the White Leather Chastity Belt on the target", \
                                    "DeviousScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "DeviousScriptCHASTITY_BELTS", "LOCK_WHITE_LEATHER_CHASTITY_BELT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    

           SkyrimnetApi.RegisterDecorator("devious_stuff", "skynet_DeviousScript", "DeviousContextDecorator")                 
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
              deviousContext=deviousContext+"\n"+(actorName + " has a plug in her ass capable of powerful vibrations.")
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

bool Function EquipAnkleshackles_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipAnkleshackles_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipAnkleshackles_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipAnkleshackles(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipAnkleshackles called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipAnkleshackles target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_ankleshackles)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ankleshackles on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipArmbinders_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipArmbinders_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipArmbinders_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipArmbinders(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipArmbinders called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipArmbinders target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_armbinders)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Armbinders on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipArmbindersAll_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipArmbindersAll_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipArmbindersAll_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipArmbindersAll(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipArmbindersAll called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipArmbindersAll target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_armbinders_all)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the All Armbinders on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherArmbinders_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherArmbinders_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherArmbinders_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherArmbinders(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherArmbinders called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherArmbinders target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_armbinders_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Armbinders on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteArmbinders_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteArmbinders_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteArmbinders_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteArmbinders(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteArmbinders called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteArmbinders target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_armbinders_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Armbinders on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipRopeArmbinders_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipRopeArmbinders_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipRopeArmbinders_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipRopeArmbinders(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipRopeArmbinders called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipRopeArmbinders target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_armbinders_rope)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Rope Armbinders on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipArmCuffs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipArmCuffs_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipArmCuffs_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipArmCuffs(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipArmCuffs called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipArmCuffs target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_armcuffs)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Arm Cuffs on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherArmCuffs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherArmCuffs_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherArmCuffs_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherArmCuffs(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherArmCuffs called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherArmCuffs target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_armcuffs_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Arm Cuffs on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteArmCuffs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteArmCuffs_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteArmCuffs_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteArmCuffs(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteArmCuffs called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteArmCuffs target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_armcuffs_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Arm Cuffs on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipMetalArmCuffs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipMetalArmCuffs_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipMetalArmCuffs_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipMetalArmCuffs(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipMetalArmCuffs called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipMetalArmCuffs target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_armcuffs_metal)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Metal Arm Cuffs on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipRopeArmCuffs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipRopeArmCuffs_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipRopeArmCuffs_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipRopeArmCuffs(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipRopeArmCuffs called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipRopeArmCuffs target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_armcuffs_rope)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Rope Arm Cuffs on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipBBYokes_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipBBYokes_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipBBYokes(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipBBYokes called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipBBYokes target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_bb_yokes)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the BB Yokes on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipBlindfolds_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipBlindfolds_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipBlindfolds_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipBlindfolds(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipBlindfolds called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipBlindfolds target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_blindfolds)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Blindfolds on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipClothBlindfolds_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipClothBlindfolds_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipClothBlindfolds_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipClothBlindfolds(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipClothBlindfolds called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipClothBlindfolds target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_blindfolds_cloth)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Cloth Blindfolds on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteBlindfolds_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteBlindfolds_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteBlindfolds_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteBlindfolds(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteBlindfolds called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteBlindfolds target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_blindfolds_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Blindfolds on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherBlindfolds_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherBlindfolds_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherBlindfolds_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherBlindfolds(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherBlindfolds called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherBlindfolds target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_blindfolds_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Blindfolds on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipBoots_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipBoots_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipBoots_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipBoots(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipBoots called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipBoots target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_boots)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Boots on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherBoots_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherBoots_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherBoots_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherBoots(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherBoots called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherBoots target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_boots_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Boots on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteBoots_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteBoots_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteBoots_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteBoots(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteBoots called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteBoots target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_boots_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Boots on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipMetalBoots_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipMetalBoots_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipMetalBoots_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipMetalBoots(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipMetalBoots called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipMetalBoots target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_boots_metal)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Metal Boots on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipBoxbinders_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipBoxbinders_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipBoxbinders_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipBoxbinders(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipBoxbinders called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipBoxbinders target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_boxbinders)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Box Binders on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteBoxbinders_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteBoxbinders_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteBoxbinders_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteBoxbinders(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteBoxbinders called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteBoxbinders target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_boxbinders_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Box Binders on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipChastityBelts_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipChastityBelts_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipChastityBelts_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipChastityBelts(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipChastityBelts called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipChastityBelts target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_chastitybelts)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Chastity Belts on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipOpenChastityBelts_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipOpenChastityBelts_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipOpenChastityBelts_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipOpenChastityBelts(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipOpenChastityBelts called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipOpenChastityBelts target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_chastitybelts_open)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Open Chastity Belts on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipClosedChastityBelts_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipClosedChastityBelts_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipClosedChastityBelts_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipClosedChastityBelts(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipClosedChastityBelts called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipClosedChastityBelts target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_chastitybelts_closed)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Closed Chastity Belts on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipChastitybras_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipChastitybras_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipChastitybras_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipChastitybras(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipChastitybras called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipChastitybras target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_chastitybras)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Chastity Bras on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipCollars_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipCollars_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipCollars_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipCollars(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipCollars called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipCollars target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_collars)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Collars on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteCollar_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteCollar_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteCollar_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteCollar(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteCollar called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteCollar target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_collars_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Collar on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherCollar_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherCollar_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherCollar_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherCollar(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherCollar called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherCollar target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_collars_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Collar on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipRopeCollar_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipRopeCollar_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipRopeCollar_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipRopeCollar(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipRopeCollar called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipRopeCollar target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_collars_rope)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Rope Collar on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipMetalCollar_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipMetalCollar_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipMetalCollar_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipMetalCollar(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipMetalCollar called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipMetalCollar target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_collars_metal)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Metal Collar on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipCorsets_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipCorsets_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipCorsets_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipCorsets(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipCorsets called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipCorsets target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_corsets)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Corsets on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteCorsets_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteCorsets_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteCorsets_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteCorsets(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteCorsets called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteCorsets target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_corsets_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Corsets on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherCorsets_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherCorsets_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherCorsets_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherCorsets(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherCorsets called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherCorsets target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_corsets_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Corsets on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipRopeCorsets_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipRopeCorsets_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipRopeCorsets_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipRopeCorsets(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipRopeCorsets called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipRopeCorsets target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_corsets_rope)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Rope Corsets on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipElbowbinders_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipElbowbinders_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipElbowbinders_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipElbowbinders(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipElbowbinders called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipElbowbinders target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_elbowbinders)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Elbow Binders on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherElbowbinders_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherElbowbinders_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherElbowbinders_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherElbowbinders(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherElbowbinders called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherElbowbinders target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_elbowbinders_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Elbow Binders on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteElbowbinders_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteElbowbinders_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteElbowbinders_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteElbowbinders(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteElbowbinders called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteElbowbinders target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_elbowbinders_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Elbow Binders on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipRopeElbowbinders_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipRopeElbowbinders_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipRopeElbowbinders_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipRopeElbowbinders(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipRopeElbowbinders called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipRopeElbowbinders target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_elbowbinders_rope)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Rope Elbow Binders on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipElbowshackles_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipElbowshackles_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipElbowshackles_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipElbowshackles(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipElbowshackles called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipElbowshackles target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_elbowshackles)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Elbow Shackles on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipGags_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipGags_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipGags_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipGags(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipGags called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipGags target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gags)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Gags on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipBallGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipBallGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipBallGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipBallGag(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipBallGag called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipBallGag target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gags_ball)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ball Gag on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherBallGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherBallGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherBallGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherBallGag(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherBallGag called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherBallGag target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gags_ball_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Ball Gag on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteBallGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteBallGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteBallGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteBallGag(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteBallGag called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteBallGag target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gags_ball_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Ball Gag on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipInflatableGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipInflatableGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipInflatableGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction


bool Function EquipPanelGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipPanelGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipPanelGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipPanelGag(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipPanelGag called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipPanelGag target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gags_panel)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Panel Gag on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherPanelGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherPanelGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherPanelGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherPanelGag(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherPanelGag called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherPanelGag target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gags_panel_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Panel Gag on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEbonitePanelGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEbonitePanelGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEbonitePanelGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEbonitePanelGag(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEbonitePanelGag called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEbonitePanelGag target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gags_panel_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Panel Gag on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipRingGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipRingGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipRingGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipRingGag(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipRingGag called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipRingGag target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gags_ring)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ring Gag on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteRingGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteRingGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteRingGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteRingGag(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteRingGag called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteRingGag target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gags_ring_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Ring Gag on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherRingGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherRingGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherRingGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherRingGag(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherRingGag called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherRingGag target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gags_ring_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Ring Gag on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipRopeGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipRopeGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipRopeGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipRopeGag(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipRopeGag called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipRopeGag target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gags_rope)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Rope Gag on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipMetalGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipMetalGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipMetalGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipMetalGag(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipMetalGag called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipMetalGag target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gags_metal)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Metal Gag on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipMuzzleGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipMuzzleGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipMuzzleGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipMuzzleGag(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipMuzzleGag called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipMuzzleGag target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gags_muzzle)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Muzzle Gag on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteMuzzleGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteMuzzleGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteMuzzleGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteMuzzleGag(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteMuzzleGag called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteMuzzleGag target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gags_muzzle_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Muzzle Gag on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherMuzzleGag_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherMuzzleGag_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherMuzzleGag_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherMuzzleGag(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherMuzzleGag called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherMuzzleGag target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gags_muzzle_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Muzzle Gag on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipGloves_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipGloves_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipGloves_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipGloves(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipGloves called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipGloves target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gloves)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Gloves on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherGloves_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherGloves_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherGloves_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherGloves(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherGloves called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherGloves target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gloves_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Gloves on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteGloves_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteGloves_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteGloves_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteGloves(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteGloves called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteGloves target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_gloves_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Gloves on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipHarnesses_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipHarnesses_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipHarnesses_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipHarnesses(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipHarnesses called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipHarnesses target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_harnesses)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Harnesses on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipRopeHarnesses_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipRopeHarnesses_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipRopeHarnesses_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipRopeHarnesses(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipRopeHarnesses called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipRopeHarnesses target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_harnesses_rope)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Rope Harnesses on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteHarnesses_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteHarnesses_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteHarnesses_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteHarnesses(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteHarnesses called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteHarnesses target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_harnesses_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Harnesses on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherHarnesses_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherHarnesses_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherHarnesses_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherHarnesses(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherHarnesses called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherHarnesses target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_harnesses_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Harnesses on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipMetalHarnesses_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipMetalHarnesses_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipMetalHarnesses_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipMetalHarnesses(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipMetalHarnesses called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipMetalHarnesses target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_harnesses_metal)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Metal Harnesses on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipHeavyRestraints_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipHeavyRestraints_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipHeavyRestraints_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipHeavyRestraints(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipHeavyRestraints called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipHeavyRestraints target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_heavyrestraints)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Heavy Restraints on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipHoods_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipHoods_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipHoods_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipHoods(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipHoods called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipHoods target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_hoods)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Hoods on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLegCuffs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLegCuffs_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLegCuffs_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLegCuffs(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLegCuffs called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLegCuffs target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_legcuffs)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leg Cuffs on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherLegCuffs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherLegCuffs_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherLegCuffs_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherLegCuffs(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherLegCuffs called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherLegCuffs target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_legcuffs_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Leg Cuffs on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteLegCuffs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteLegCuffs_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteLegCuffs_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteLegCuffs(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteLegCuffs called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteLegCuffs target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_legcuffs_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Leg Cuffs on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipMetalLegCuffs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipMetalLegCuffs_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipMetalLegCuffs_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipMetalLegCuffs(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipMetalLegCuffs called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipMetalLegCuffs target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_legcuffs_metal)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Metal Leg Cuffs on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipRopeLegCuffs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipRopeLegCuffs_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipRopeLegCuffs_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipRopeLegCuffs(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipRopeLegCuffs called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipRopeLegCuffs target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_legcuffs_rope)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Rope Leg Cuffs on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLegRestraints_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLegRestraints_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLegRestraints_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLegRestraints(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLegRestraints called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLegRestraints target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_legrestraints)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leg Restraints on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipPiercings_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipPiercings_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipPiercings_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipPiercings(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipPiercings called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipPiercings target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_piercings)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Piercings on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipNipplePiercings_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipNipplePiercings_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipNipplePiercings_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipNipplePiercings(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipNipplePiercings called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipNipplePiercings target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_piercings_nipple)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Nipple Piercings on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipVaginalPiercings_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipVaginalPiercings_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipVaginalPiercings_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipVaginalPiercings(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipVaginalPiercings called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipVaginalPiercings target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_piercings_vaginal)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Vaginal Piercings on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipPlugs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipPlugs_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipPlugs_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipPlugs(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipPlugs called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipPlugs target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_plugs)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Plugs on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipAnalPlugs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipAnalPlugs_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipAnalPlugs_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipAnalPlugs(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipAnalPlugs called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipAnalPlugs target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_plugs_anal)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Anal Plugs on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipVaginalPlugs_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipVaginalPlugs_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipVaginalPlugs_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipVaginalPlugs(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipVaginalPlugs called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipVaginalPlugs target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_plugs_vaginal)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Vaginal Plugs on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipSuits_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipSuits_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipSuits_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipSuits(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipSuits called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipSuits target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Suits on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipBoxbinderDresses_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipBoxbinderDresses_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipBoxbinderDresses_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipBoxbinderDresses(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipBoxbinderDresses called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipBoxbinderDresses target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_boxbinderdresses)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Boxbinder Dresses on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipCatsuits_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipCatsuits_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipCatsuits_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipCatsuits(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipCatsuits called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipCatsuits target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_catsuits)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Catsuits on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipFormalDresses_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipFormalDresses_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipFormalDresses_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipFormalDresses(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipFormalDresses called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipFormalDresses target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_formaldresses)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Formal Dresses on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherFormalDresses_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherFormalDresses_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherFormalDresses_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherFormalDresses(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherFormalDresses called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherFormalDresses target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_formaldresses_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Formal Dresses on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteFormalDresses_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteFormalDresses_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteFormalDresses_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteFormalDresses(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteFormalDresses called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteFormalDresses target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_formaldresses_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Formal Dresses on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipHobbledDresses_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipHobbledDresses_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipHobbledDresses_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipHobbledDresses(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipHobbledDresses called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipHobbledDresses target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_hobbledresses)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Hobbled Dresses on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherHobbledDresses_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherHobbledDresses_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherHobbledDresses_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherHobbledDresses(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherHobbledDresses called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherHobbledDresses target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_hobbledresses_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Hobbled Dresses on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteHobbledDresses_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteHobbledDresses_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteHobbledDresses_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteHobbledDresses(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteHobbledDresses called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteHobbledDresses target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_hobbledresses_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Hobbled Dresses on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipRelaxedHobbledDresses_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipRelaxedHobbledDresses_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipRelaxedHobbledDresses_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipRelaxedHobbledDresses(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipRelaxedHobbledDresses called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipRelaxedHobbledDresses target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_relaxed_hobbledresses)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Relaxed Hobbled Dresses on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherRelaxedHobbledDresses_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherRelaxedHobbledDresses_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherRelaxedHobbledDresses_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherRelaxedHobbledDresses(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherRelaxedHobbledDresses called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherRelaxedHobbledDresses target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_relaxed_hobbledresses_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Relaxed Hobbled Dresses on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteRelaxedHobbledDresses_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteRelaxedHobbledDresses_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteRelaxedHobbledDresses_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteRelaxedHobbledDresses(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteRelaxedHobbledDresses called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteRelaxedHobbledDresses target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_relaxed_hobbledresses_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Relaxed Hobbled Dresses on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipStraitjackets_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipStraitjackets_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipStraitjackets_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipStraitjackets(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipStraitjackets called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipStraitjackets target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_straitjackets)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Straitjackets on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipCatsuitStraitjackets_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipCatsuitStraitjackets_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipCatsuitStraitjackets_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipCatsuitStraitjackets(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipCatsuitStraitjackets called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipCatsuitStraitjackets target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_straitjackets_catsuit)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Catsuit Straitjackets on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipDressStraitjackets_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipDressStraitjackets_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipDressStraitjackets_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipDressStraitjackets(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipDressStraitjackets called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipDressStraitjackets target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_straitjackets_dress)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Dress Straitjackets on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherDressStraitjackets_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherDressStraitjackets_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherDressStraitjackets_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherDressStraitjackets(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherDressStraitjackets called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherDressStraitjackets target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_straitjackets_dress_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Dress Straitjackets on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteDressStraitjackets_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteDressStraitjackets_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteDressStraitjackets_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteDressStraitjackets(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteDressStraitjackets called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteDressStraitjackets target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_straitjackets_dress_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Dress Straitjackets on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLegbinderStraitjackets_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLegbinderStraitjackets_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLegbinderStraitjackets_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLegbinderStraitjackets(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLegbinderStraitjackets called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLegbinderStraitjackets target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_straitjackets_legbinder)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Legbinder Straitjackets on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipEboniteLegbinderStraitjackets_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipEboniteLegbinderStraitjackets_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipEboniteLegbinderStraitjackets_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipEboniteLegbinderStraitjackets(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipEboniteLegbinderStraitjackets called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipEboniteLegbinderStraitjackets target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_straitjackets_legbinder_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Legbinder Straitjackets on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipLeatherLegbinderStraitjackets_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipLeatherLegbinderStraitjackets_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipLeatherLegbinderStraitjackets_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipLeatherLegbinderStraitjackets(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipLeatherLegbinderStraitjackets called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipLeatherLegbinderStraitjackets target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_straitjackets_legbinder_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Legbinder Straitjackets on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipSingleStraitjackets_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipSingleStraitjackets_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipSingleStraitjackets_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipSingleStraitjackets(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipSingleStraitjackets called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipSingleStraitjackets target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_straitjackets_single)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Single Straitjackets on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipStraitjacketSingleLeather_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipStraitjacketSingleLeather_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipStraitjacketSingleLeather_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipStraitjacketSingleLeather(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipStraitjacketSingleLeather called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipStraitjacketSingleLeather target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_straitjackets_single_leather)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Leather Straitjacket on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipStraitjacketSingleEbonite_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipStraitjacketSingleEbonite_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipStraitjacketSingleEbonite_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipStraitjacketSingleEbonite(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipStraitjacketSingleEbonite called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipStraitjacketSingleEbonite target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_suits_straitjackets_single_ebonite)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Ebonite Straitjacket on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipWristShackles_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipWristShackles_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipWristShackles_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipWristShackles(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipWristShackles called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipWristShackles target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_wristshackles)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Wrist Shackles on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

EndFunction

bool Function EquipYokes_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    Debug.Trace("[DeviousStuff] EquipYokes_IsEligible called for " + akActor.GetDisplayName())

    if akActor.IsInCombat()
        Debug.Trace("[DeviousStuff] EquipYokes_IsEligible: " + akActor.GetDisplayName() + " is in combat. Cannot activate.")
        return false
    endif

    return true

EndFunction

Function EquipYokes(Actor akOriginator, string contextJson, string paramsJson) global
    actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf
    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] EquipYokes called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] EquipYokes target " + akTarget.GetDisplayName())
    ddLists.EquipRandomDevice(akTarget, ddLists.zad_dev_yokes)
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" locked the Yokes on "+akTarget.GetActorBase().GetName(),akOriginator,GetNearestAdultActor()) 
    return

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

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
    UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
    zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
If !UDAPI_local.ActorIsValidForUD(akOriginator)
return
EndIf
UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
If !oslot.hasFreeHands(true)
return
EndIf

    zadDeviceLists ddLists = (Game.GetFormFromFile(0x00CA01, "Devious Devices - Expansion.esm") as Quest) as zadDeviceLists
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPetSuit called for " + akOriginator.GetDisplayName())
    Debug.Trace("[DeviousStuff] ExtCmdUnequipPetSuit target " + akTarget.GetDisplayName())    
    if (libs_local.UnlockDeviceByKeyword(akTarget,libs_local.zad_DeviousPetSuit))
    SendPapyrusEvent(akOriginator.GetActorBase().GetName()+" removed the Pet Suit on "+akTarget.GetActorBase().GetName(),akOriginator,none) 
    EndIf
    return

EndFunction
