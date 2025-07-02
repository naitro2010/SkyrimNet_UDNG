ScriptName UnforgivingScript
bool Function DDNG_IsEligible(Actor akActor, string contextJson, string paramsJson) Global
    Debug.Trace("[DeviousStuff] Unforgiving DDNG_IsEligible called for " + akActor.GetDisplayName())
    return true
EndFunction
Function RegisterUnforgivingActions() global
SkyrimNetApi.RegisterSubCategory("BDSMLOCK","lock something on an actor","UnforgivingScript","DDNG_IsEligible","",1,"","BDSMLOCK")
SkyrimNetApi.RegisterSubCategory("ANKLE_SHACKLES","Pick the ankle shackles to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","ANKLE_SHACKLES")
SkyrimNetApi.RegisterSubCategory("ARMBINDERS","Pick the arm binder to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","ARMBINDERS")
SkyrimNetApi.RegisterSubCategory("ARM_CUFFS","Pick the arm cuff to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","ARM_CUFFS")
SkyrimNetApi.RegisterSubCategory("CHASTITY_BELTS","Pick the chastity belt to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","CHASTITY_BELTS")
SkyrimNetApi.RegisterSubCategory("BLINDFOLDS","Pick the blindfold to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","BLINDFOLDS")
SkyrimNetApi.RegisterSubCategory("BOOTS","Pick the boot to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","BOOTS")
SkyrimNetApi.RegisterSubCategory("BUTTERFLY_BINDERS","Pick the butterfly binder to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","BUTTERFLY_BINDERS")
SkyrimNetApi.RegisterSubCategory("BOX_BINDERS","Pick the box binder to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","BOX_BINDERS")
SkyrimNetApi.RegisterSubCategory("COLLARS","Pick the collar to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","COLLARS")
SkyrimNetApi.RegisterSubCategory("CORSETS","Pick the corset to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","CORSETS")
SkyrimNetApi.RegisterSubCategory("ELBOW_BINDERS","Pick the elbow binder to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","ELBOW_BINDERS")
SkyrimNetApi.RegisterSubCategory("ELBOW_SHACKLES","Pick the elbow shackles to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","ELBOW_SHACKLES")
SkyrimNetApi.RegisterSubCategory("GAGS","Pick the gag to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","GAGS")
SkyrimNetApi.RegisterSubCategory("GLOVES","Pick the glove to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","GLOVES")
SkyrimNetApi.RegisterSubCategory("HARNESSES","Pick the harness to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","HARNESSES")
SkyrimNetApi.RegisterSubCategory("HOODS","Pick the hood to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","HOODS")
SkyrimNetApi.RegisterSubCategory("LEG_CUFFS","Pick the leg cuffs to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","LEG_CUFFS")
SkyrimNetApi.RegisterSubCategory("LEG_RESTRAINTS","Pick the leg restraint to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","LEG_RESTRAINTS")
SkyrimNetApi.RegisterSubCategory("PIERCINGS","Pick the piercing to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","PIERCINGS")
SkyrimNetApi.RegisterSubCategory("PLUGS","Pick the plug to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","PLUGS")
SkyrimNetApi.RegisterSubCategory("SUITS","Pick the suit to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","SUITS")
SkyrimNetApi.RegisterSubCategory("STRAITJACKETS","Pick the straitjacket to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","STRAITJACKETS")
SkyrimNetApi.RegisterSubCategory("WRIST_SHACKLES","Pick the wrist shackle to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","WRIST_SHACKLES")
SkyrimNetApi.RegisterSubCategory("YOKES","Pick the yoke to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","YOKES")
SkyrimNetApi.RegisterSubCategory("OTHER","Pick the other device to lock on the target","UnforgivingScript","DDNG_IsEligible","",1,"BDSMLOCK","OTHER")

           SkyrimNetApi.RegisterAction("LOCK_BLACK_GOO_BALL", "Lock the Black Goo Ball on the target", \
                                    "UnforgivingScriptPLUGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPLUGS", "LOCK_BLACK_GOO_BALL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CONCETRATED_BLACK_GOO_BALL", "Lock the Concetrated Black Goo Ball on the target", \
                                    "UnforgivingScriptPLUGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPLUGS", "LOCK_CONCETRATED_BLACK_GOO_BALL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PURIFIED_GOO_WATER", "Lock the Purified Goo Water on the target", \
                                    "UnforgivingScriptOTHER", "DDNG_IsEligible", \
                                    "UnforgivingScriptOTHER", "LOCK_PURIFIED_GOO_WATER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_WEAK_ABADON_BOXBINDER", "Lock the Weak Abadon Boxbinder on the target", \
                                    "UnforgivingScriptBOX_BINDERS", "DDNG_IsEligible", \
                                    "UnforgivingScriptBOX_BINDERS", "LOCK_WEAK_ABADON_BOXBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOX_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_BOXBINDER", "Lock the Abadon Boxbinder on the target", \
                                    "UnforgivingScriptBOX_BINDERS", "DDNG_IsEligible", \
                                    "UnforgivingScriptBOX_BINDERS", "LOCK_ABADON_BOXBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOX_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_CATSUIT", "Lock the Abadon Catsuit on the target", \
                                    "UnforgivingScriptSUITS", "DDNG_IsEligible", \
                                    "UnforgivingScriptSUITS", "LOCK_ABADON_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_SOCKS", "Lock the Abadon Socks on the target", \
                                    "UnforgivingScriptOTHER", "DDNG_IsEligible", \
                                    "UnforgivingScriptOTHER", "LOCK_ABADON_SOCKS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_BOOTS", "Lock the Abadon Boots on the target", \
                                    "UnforgivingScriptBOOTS", "DDNG_IsEligible", \
                                    "UnforgivingScriptBOOTS", "LOCK_ABADON_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_IRON_BOOTS", "Lock the Abadon Iron Boots on the target", \
                                    "UnforgivingScriptBOOTS", "DDNG_IsEligible", \
                                    "UnforgivingScriptBOOTS", "LOCK_ABADON_IRON_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_FACE_MASK", "Lock the Abadon Face Mask on the target", \
                                    "UnforgivingScriptOTHER", "DDNG_IsEligible", \
                                    "UnforgivingScriptOTHER", "LOCK_ABADON_FACE_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_BALLET_BOOTS", "Lock the Abadon Ballet Boots on the target", \
                                    "UnforgivingScriptBOOTS", "DDNG_IsEligible", \
                                    "UnforgivingScriptBOOTS", "LOCK_ABADON_BALLET_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_BOXBINDER_HARD", "Lock the Abadon Boxbinder Hard on the target", \
                                    "UnforgivingScriptBOX_BINDERS", "DDNG_IsEligible", \
                                    "UnforgivingScriptBOX_BINDERS", "LOCK_ABADON_BOXBINDER_HARD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOX_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CURSED_INFLATABLE_ABADON_PLUG_VAGINAL", "Lock the Cursed Inflatable Abadon Plug Vaginal on the target", \
                                    "UnforgivingScriptPLUGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPLUGS", "LOCK_CURSED_INFLATABLE_ABADON_PLUG_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_BALL_GAG", "Lock the Abadon Ball Gag on the target", \
                                    "UnforgivingScriptGAGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptGAGS", "LOCK_ABADON_BALL_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_LONG_MITTENS", "Lock the Abadon Long Mittens on the target", \
                                    "UnforgivingScriptGLOVES", "DDNG_IsEligible", \
                                    "UnforgivingScriptGLOVES", "LOCK_ABADON_LONG_MITTENS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_FIDDLE", "Lock the Abadon Fiddle on the target", \
                                    "UnforgivingScriptOTHER", "DDNG_IsEligible", \
                                    "UnforgivingScriptOTHER", "LOCK_ABADON_FIDDLE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_BUTTERFLY", "Lock the Abadon Butterfly on the target", \
                                    "UnforgivingScriptBUTTERFLY_BINDERS", "DDNG_IsEligible", \
                                    "UnforgivingScriptBUTTERFLY_BINDERS", "LOCK_ABADON_BUTTERFLY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BUTTERFLY_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_STRAP_BELT", "Lock the Abadon Strap Belt on the target", \
                                    "UnforgivingScriptOTHER", "DDNG_IsEligible", \
                                    "UnforgivingScriptOTHER", "LOCK_ABADON_STRAP_BELT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_PONY_BOOTS", "Lock the Abadon Pony Boots on the target", \
                                    "UnforgivingScriptBOOTS", "DDNG_IsEligible", \
                                    "UnforgivingScriptBOOTS", "LOCK_ABADON_PONY_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_CORSET_HARNESS", "Lock the Abadon Corset Harness on the target", \
                                    "UnforgivingScriptHARNESSES", "DDNG_IsEligible", \
                                    "UnforgivingScriptHARNESSES", "LOCK_ABADON_CORSET_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_HOOD_OPEN", "Lock the Abadon Hood Open on the target", \
                                    "UnforgivingScriptHOODS", "DDNG_IsEligible", \
                                    "UnforgivingScriptHOODS", "LOCK_ABADON_HOOD_OPEN", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HOODS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CURSED_ABADON_BUTTERFLY", "Lock the Cursed Abadon Butterfly on the target", \
                                    "UnforgivingScriptBUTTERFLY_BINDERS", "DDNG_IsEligible", \
                                    "UnforgivingScriptBUTTERFLY_BINDERS", "LOCK_CURSED_ABADON_BUTTERFLY", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BUTTERFLY_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_DEBUGBINDER", "Lock the Debugbinder on the target", \
                                    "UnforgivingScriptOTHER", "DDNG_IsEligible", \
                                    "UnforgivingScriptOTHER", "LOCK_DEBUGBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_LEATHER_ABADON_ARMBINDER", "Lock the Leather Abadon Armbinder on the target", \
                                    "UnforgivingScriptARMBINDERS", "DDNG_IsEligible", \
                                    "UnforgivingScriptARMBINDERS", "LOCK_LEATHER_ABADON_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WHITE_ABADON_ARMBINDER", "Lock the White Abadon Armbinder on the target", \
                                    "UnforgivingScriptARMBINDERS", "DDNG_IsEligible", \
                                    "UnforgivingScriptARMBINDERS", "LOCK_WHITE_ABADON_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_ROPES", "Lock the Abadon Ropes on the target", \
                                    "UnforgivingScriptOTHER", "DDNG_IsEligible", \
                                    "UnforgivingScriptOTHER", "LOCK_ABADON_ROPES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_RARE_BLUE_STRAITJACKET", "Lock the Rare Blue Straitjacket on the target", \
                                    "UnforgivingScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "UnforgivingScriptSTRAITJACKETS", "LOCK_RARE_BLUE_STRAITJACKET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RARE_GREEN_ELBOWBINDER", "Lock the Rare Green Elbowbinder on the target", \
                                    "UnforgivingScriptELBOW_BINDERS", "DDNG_IsEligible", \
                                    "UnforgivingScriptELBOW_BINDERS", "LOCK_RARE_GREEN_ELBOWBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ELBOW_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WEAK_ABADON_ARMBINDER", "Lock the Weak Abadon Armbinder on the target", \
                                    "UnforgivingScriptARMBINDERS", "DDNG_IsEligible", \
                                    "UnforgivingScriptARMBINDERS", "LOCK_WEAK_ABADON_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WEAK_ABADON_STRAITJACKET", "Lock the Weak Abadon Straitjacket on the target", \
                                    "UnforgivingScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "UnforgivingScriptSTRAITJACKETS", "LOCK_WEAK_ABADON_STRAITJACKET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_EBONITE_ABADON_ARMBINDER", "Lock the Ebonite Abadon Armbinder on the target", \
                                    "UnforgivingScriptARMBINDERS", "DDNG_IsEligible", \
                                    "UnforgivingScriptARMBINDERS", "LOCK_EBONITE_ABADON_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CURSED_ABADON_STRAITJACKET", "Lock the Cursed Abadon Straitjacket on the target", \
                                    "UnforgivingScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "UnforgivingScriptSTRAITJACKETS", "LOCK_CURSED_ABADON_STRAITJACKET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_STRAITJACKET", "Lock the Abadon Straitjacket on the target", \
                                    "UnforgivingScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "UnforgivingScriptSTRAITJACKETS", "LOCK_ABADON_STRAITJACKET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_EBONITE_ABADON_STRAITJACKET", "Lock the Ebonite Abadon Straitjacket on the target", \
                                    "UnforgivingScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "UnforgivingScriptSTRAITJACKETS", "LOCK_EBONITE_ABADON_STRAITJACKET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WEAK_ABADON_YOKE", "Lock the Weak Abadon Yoke on the target", \
                                    "UnforgivingScriptYOKES", "DDNG_IsEligible", \
                                    "UnforgivingScriptYOKES", "LOCK_WEAK_ABADON_YOKE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","YOKES") 
    
           SkyrimNetApi.RegisterAction("LOCK_WEAK_ABADON_ELBOWBINDER", "Lock the Weak Abadon Elbowbinder on the target", \
                                    "UnforgivingScriptELBOW_BINDERS", "DDNG_IsEligible", \
                                    "UnforgivingScriptELBOW_BINDERS", "LOCK_WEAK_ABADON_ELBOWBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ELBOW_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_CUFFS_LEGS", "Lock the Abadon Cuffs Legs on the target", \
                                    "UnforgivingScriptLEG_CUFFS", "DDNG_IsEligible", \
                                    "UnforgivingScriptLEG_CUFFS", "LOCK_ABADON_CUFFS_LEGS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","LEG_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_CUFFS_ARMS", "Lock the Abadon Cuffs Arms on the target", \
                                    "UnforgivingScriptARM_CUFFS", "DDNG_IsEligible", \
                                    "UnforgivingScriptARM_CUFFS", "LOCK_ABADON_CUFFS_ARMS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARM_CUFFS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_COLLAR", "Lock the Abadon Collar on the target", \
                                    "UnforgivingScriptCOLLARS", "DDNG_IsEligible", \
                                    "UnforgivingScriptCOLLARS", "LOCK_ABADON_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PUNISHER_SUIT", "Lock the Punisher Suit on the target", \
                                    "UnforgivingScriptSUITS", "DDNG_IsEligible", \
                                    "UnforgivingScriptSUITS", "LOCK_PUNISHER_SUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_GAS_MASK", "Lock the Abadon Gas Mask on the target", \
                                    "UnforgivingScriptOTHER", "DDNG_IsEligible", \
                                    "UnforgivingScriptOTHER", "LOCK_ABADON_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_BLINDFOLD", "Lock the Abadon Blindfold on the target", \
                                    "UnforgivingScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "UnforgivingScriptBLINDFOLDS", "LOCK_ABADON_BLINDFOLD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_BELT", "Lock the Abadon Belt on the target", \
                                    "UnforgivingScriptCHASTITY_BELTS", "DDNG_IsEligible", \
                                    "UnforgivingScriptCHASTITY_BELTS", "LOCK_ABADON_BELT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CHASTITY_BELTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_EBONITE_ABADON_STRAITJACKET_TOPLESS", "Lock the Ebonite Abadon Straitjacket Topless on the target", \
                                    "UnforgivingScriptSTRAITJACKETS", "DDNG_IsEligible", \
                                    "UnforgivingScriptSTRAITJACKETS", "LOCK_EBONITE_ABADON_STRAITJACKET_TOPLESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","STRAITJACKETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_RARE_BLUE_ARMBINDER", "Lock the Rare Blue Armbinder on the target", \
                                    "UnforgivingScriptARMBINDERS", "DDNG_IsEligible", \
                                    "UnforgivingScriptARMBINDERS", "LOCK_RARE_BLUE_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_PLUG_VAGINAL", "Lock the Abadon Plug Vaginal on the target", \
                                    "UnforgivingScriptPLUGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPLUGS", "LOCK_ABADON_PLUG_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_LITTLE_HELPER_PLUG", "Lock the Little Helper Plug on the target", \
                                    "UnforgivingScriptPLUGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPLUGS", "LOCK_LITTLE_HELPER_PLUG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_TAPE_GAG", "Lock the Abadon Tape Gag on the target", \
                                    "UnforgivingScriptGAGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptGAGS", "LOCK_ABADON_TAPE_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_RESTRICTIVE_BOOTS", "Lock the Abadon Restrictive Boots on the target", \
                                    "UnforgivingScriptBOOTS", "DDNG_IsEligible", \
                                    "UnforgivingScriptBOOTS", "LOCK_ABADON_RESTRICTIVE_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_RESTRICTIVE_GLOVES", "Lock the Abadon Restrictive Gloves on the target", \
                                    "UnforgivingScriptGLOVES", "DDNG_IsEligible", \
                                    "UnforgivingScriptGLOVES", "LOCK_ABADON_RESTRICTIVE_GLOVES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_GAG_RING_HARNESS", "Lock the Abadon Gag Ring Harness on the target", \
                                    "UnforgivingScriptHARNESSES", "DDNG_IsEligible", \
                                    "UnforgivingScriptHARNESSES", "LOCK_ABADON_GAG_RING_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_RESTRICTIVE_COLLAR", "Lock the Abadon Restrictive Collar on the target", \
                                    "UnforgivingScriptCOLLARS", "DDNG_IsEligible", \
                                    "UnforgivingScriptCOLLARS", "LOCK_ABADON_RESTRICTIVE_COLLAR", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","COLLARS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_CORSET", "Lock the Abadon Corset on the target", \
                                    "UnforgivingScriptCORSETS", "DDNG_IsEligible", \
                                    "UnforgivingScriptCORSETS", "LOCK_ABADON_CORSET", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_EXTREME_BALL_GAG", "Lock the Abadon Extreme Ball Gag on the target", \
                                    "UnforgivingScriptGAGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptGAGS", "LOCK_ABADON_EXTREME_BALL_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_EXTREME_INFLATABLE_GAG", "Lock the Abadon Extreme Inflatable Gag on the target", \
                                    "UnforgivingScriptGAGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptGAGS", "LOCK_ABADON_EXTREME_INFLATABLE_GAG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GAGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_TRANSPARENT_CATSUIT", "Lock the Abadon Transparent Catsuit on the target", \
                                    "UnforgivingScriptSUITS", "DDNG_IsEligible", \
                                    "UnforgivingScriptSUITS", "LOCK_ABADON_TRANSPARENT_CATSUIT", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","SUITS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_WHITE_BLINDFOLD", "Lock the Abadon White Blindfold on the target", \
                                    "UnforgivingScriptBLINDFOLDS", "DDNG_IsEligible", \
                                    "UnforgivingScriptBLINDFOLDS", "LOCK_ABADON_WHITE_BLINDFOLD", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BLINDFOLDS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_TRANSPARENT_HIGH_HEELS", "Lock the Abadon Transparent High Heels on the target", \
                                    "UnforgivingScriptBOOTS", "DDNG_IsEligible", \
                                    "UnforgivingScriptBOOTS", "LOCK_ABADON_TRANSPARENT_HIGH_HEELS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_WHITE_PONY_BOOTS", "Lock the Abadon White Pony Boots on the target", \
                                    "UnforgivingScriptBOOTS", "DDNG_IsEligible", \
                                    "UnforgivingScriptBOOTS", "LOCK_ABADON_WHITE_PONY_BOOTS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","BOOTS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CONTROLLABLE_VAGINAL_PLUG", "Lock the Controllable Vaginal Plug on the target", \
                                    "UnforgivingScriptPLUGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPLUGS", "LOCK_CONTROLLABLE_VAGINAL_PLUG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_PLUG_ANAL", "Lock the Abadon Plug Anal on the target", \
                                    "UnforgivingScriptPLUGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPLUGS", "LOCK_ABADON_PLUG_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WEAK_ABADON_PLUG_INFLATABLE_ANAL", "Lock the Weak Abadon Plug Inflatable Anal on the target", \
                                    "UnforgivingScriptPLUGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPLUGS", "LOCK_WEAK_ABADON_PLUG_INFLATABLE_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CONTROLLABLE_ANAL_PLUG", "Lock the Controllable Anal Plug on the target", \
                                    "UnforgivingScriptPLUGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPLUGS", "LOCK_CONTROLLABLE_ANAL_PLUG", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CURSED_INFLATABLE_ABADON_PLUG_ANAL", "Lock the Cursed Inflatable Abadon Plug Anal on the target", \
                                    "UnforgivingScriptPLUGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPLUGS", "LOCK_CURSED_INFLATABLE_ABADON_PLUG_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_CHASTITY_BRA", "Lock the Abadon Chastity Bra on the target", \
                                    "UnforgivingScriptCORSETS", "DDNG_IsEligible", \
                                    "UnforgivingScriptCORSETS", "LOCK_ABADON_CHASTITY_BRA", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","CORSETS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_JEWELED_PIERCINGS_NIPPLES", "Lock the Abadon Jeweled Piercings Nipples on the target", \
                                    "UnforgivingScriptPIERCINGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPIERCINGS", "LOCK_ABADON_JEWELED_PIERCINGS_NIPPLES", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PIERCINGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_JEWELED_PIERCINGS_CLITORAL", "Lock the Abadon Jeweled Piercings Clitoral on the target", \
                                    "UnforgivingScriptPIERCINGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPIERCINGS", "LOCK_ABADON_JEWELED_PIERCINGS_CLITORAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PIERCINGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_GAG_PANEL_HARNESS", "Lock the Abadon Gag Panel Harness on the target", \
                                    "UnforgivingScriptHARNESSES", "DDNG_IsEligible", \
                                    "UnforgivingScriptHARNESSES", "LOCK_ABADON_GAG_PANEL_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_MITTENS", "Lock the Abadon Mittens on the target", \
                                    "UnforgivingScriptGLOVES", "DDNG_IsEligible", \
                                    "UnforgivingScriptGLOVES", "LOCK_ABADON_MITTENS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","GLOVES") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_YOKE", "Lock the Abadon Yoke on the target", \
                                    "UnforgivingScriptYOKES", "DDNG_IsEligible", \
                                    "UnforgivingScriptYOKES", "LOCK_ABADON_YOKE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","YOKES") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_ELBOWBINDER", "Lock the Abadon Elbowbinder on the target", \
                                    "UnforgivingScriptELBOW_BINDERS", "DDNG_IsEligible", \
                                    "UnforgivingScriptELBOW_BINDERS", "LOCK_ABADON_ELBOWBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ELBOW_BINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_CURSED_GAS_MASK", "Lock the Abadon Cursed Gas Mask on the target", \
                                    "UnforgivingScriptOTHER", "DDNG_IsEligible", \
                                    "UnforgivingScriptOTHER", "LOCK_ABADON_CURSED_GAS_MASK", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_CIRCLET_OF_ORGASM_RESISTANCE", "Lock the Circlet of Orgasm Resistance on the target", \
                                    "UnforgivingScriptOTHER", "DDNG_IsEligible", \
                                    "UnforgivingScriptOTHER", "LOCK_CIRCLET_OF_ORGASM_RESISTANCE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_CURSED_ARMBINDER", "Lock the Cursed Armbinder on the target", \
                                    "UnforgivingScriptARMBINDERS", "DDNG_IsEligible", \
                                    "UnforgivingScriptARMBINDERS", "LOCK_CURSED_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_CHASTITY_HARNESS", "Lock the Abadon Chastity Harness on the target", \
                                    "UnforgivingScriptHARNESSES", "DDNG_IsEligible", \
                                    "UnforgivingScriptHARNESSES", "LOCK_ABADON_CHASTITY_HARNESS", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","HARNESSES") 
    
           SkyrimNetApi.RegisterAction("LOCK_RING_OF_ORGASM_RESISTANCE", "Lock the Ring of Orgasm Resistance on the target", \
                                    "UnforgivingScriptOTHER", "DDNG_IsEligible", \
                                    "UnforgivingScriptOTHER", "LOCK_RING_OF_ORGASM_RESISTANCE", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_ABADON_RING", "Lock the Abadon Ring on the target", \
                                    "UnforgivingScriptOTHER", "DDNG_IsEligible", \
                                    "UnforgivingScriptOTHER", "LOCK_ABADON_RING", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","OTHER") 
    
           SkyrimNetApi.RegisterAction("LOCK_PUNISHER_PIERCING_CLITORAL", "Lock the Punisher Piercing Clitoral on the target", \
                                    "UnforgivingScriptPIERCINGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPIERCINGS", "LOCK_PUNISHER_PIERCING_CLITORAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PIERCINGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_PUNISHER_ARMBINDER", "Lock the Punisher Armbinder on the target", \
                                    "UnforgivingScriptARMBINDERS", "DDNG_IsEligible", \
                                    "UnforgivingScriptARMBINDERS", "LOCK_PUNISHER_ARMBINDER", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","ARMBINDERS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CHARGABLE_PLUG_GREAT_VAGINAL", "Lock the Chargable Plug Great Vaginal on the target", \
                                    "UnforgivingScriptPLUGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPLUGS", "LOCK_CHARGABLE_PLUG_GREAT_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CHARGABLE_PLUG_GRAND_VAGINAL", "Lock the Chargable Plug Grand Vaginal on the target", \
                                    "UnforgivingScriptPLUGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPLUGS", "LOCK_CHARGABLE_PLUG_GRAND_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CHARGABLE_PLUG_GRAND_ANAL", "Lock the Chargable Plug Grand Anal on the target", \
                                    "UnforgivingScriptPLUGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPLUGS", "LOCK_CHARGABLE_PLUG_GRAND_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_CHARGABLE_PLUG_GREAT_ANAL", "Lock the Chargable Plug Great Anal on the target", \
                                    "UnforgivingScriptPLUGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPLUGS", "LOCK_CHARGABLE_PLUG_GREAT_ANAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
    
           SkyrimNetApi.RegisterAction("LOCK_WEAK_ABADON_PLUG_INFLATABLE_VAGINAL", "Lock the Weak Abadon Plug Inflatable Vaginal on the target", \
                                    "UnforgivingScriptPLUGS", "DDNG_IsEligible", \
                                    "UnforgivingScriptPLUGS", "LOCK_WEAK_ABADON_PLUG_INFLATABLE_VAGINAL", \
                                    "", "PAPYRUS_CUSTOM", \
                                    1, "{\"target\": \"Actor\"}","PLUGS") 
        
EndFunction
