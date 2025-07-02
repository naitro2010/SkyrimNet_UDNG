Scriptname DeviousScriptOTHER

    bool Function DDNG_IsEligible(Actor akActor, string contextJson, string paramsJson) global

        return true;
    EndFunction

    
        Function LOCK_RED_EBONITE_MASK_OPEN_EYES(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060012d5, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_MASK_OPEN_EYES called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_MASK_OPEN_EYES target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_EBONITE_MASK_OPEN_EYES(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0600183c, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_MASK_OPEN_EYES called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_MASK_OPEN_EYES target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_EBONITE_MASK_OPEN(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06001843, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_MASK_OPEN called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_MASK_OPEN target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_EBONITE_MASK_OPEN_FACE(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06001844, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_MASK_OPEN_FACE called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_MASK_OPEN_FACE target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_EBONITE_CATSUIT_SOCKS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d2c8, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_CATSUIT_SOCKS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_CATSUIT_SOCKS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_ROPE_BODY_RESTRAINT(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060486e0, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_ROPE_BODY_RESTRAINT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_ROPE_BODY_RESTRAINT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_CROTCH_ROPE(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604e89f, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_CROTCH_ROPE called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_CROTCH_ROPE target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_CROTCH_ROPE(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509c4, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_CROTCH_ROPE called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_CROTCH_ROPE target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_CROTCH_ROPE(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fb5, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_CROTCH_ROPE called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_CROTCH_ROPE target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_CROTCH_ROPE(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0605255b, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_CROTCH_ROPE called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_CROTCH_ROPE target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction