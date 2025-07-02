Scriptname DeviousScriptCORSETS

    bool Function DDNG_IsEligible(Actor akActor, string contextJson, string paramsJson) global

        return true;
    EndFunction

    
        Function LOCK_RED_LUSTROUS_CHASTITY_BRA_PADDED(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060012d8, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_LUSTROUS_CHASTITY_BRA_PADDED called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_LUSTROUS_CHASTITY_BRA_PADDED target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_LUSTROUS_CHASTITY_BRA_PADDED(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060012da, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LUSTROUS_CHASTITY_BRA_PADDED called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LUSTROUS_CHASTITY_BRA_PADDED target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_LEATHER_RESTRICTIVE_CHASTITY_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06002316, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_RESTRICTIVE_CHASTITY_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_RESTRICTIVE_CHASTITY_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_LEATHER_RESTRICTIVE_CHASTITY_CORSET_OPEN(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06002317, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_RESTRICTIVE_CHASTITY_CORSET_OPEN called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_RESTRICTIVE_CHASTITY_CORSET_OPEN target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_EBONITE_RESTRICTIVE_CHASTITY_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06002318, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_RESTRICTIVE_CHASTITY_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_RESTRICTIVE_CHASTITY_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_EBONITE_RESTRICTIVE_CHASTITY_CORSET_OPEN(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06002319, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_RESTRICTIVE_CHASTITY_CORSET_OPEN called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_RESTRICTIVE_CHASTITY_CORSET_OPEN target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_EBONITE_RESTRICTIVE_CHASTITY_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0600231b, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_RESTRICTIVE_CHASTITY_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_RESTRICTIVE_CHASTITY_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_EBONITE_RESTRICTIVE_CHASTITY_CORSET_OPEN(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0600231c, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_RESTRICTIVE_CHASTITY_CORSET_OPEN called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_RESTRICTIVE_CHASTITY_CORSET_OPEN target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_LEATHER_RESTRICTIVE_CHASTITY_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0600231d, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_RESTRICTIVE_CHASTITY_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_RESTRICTIVE_CHASTITY_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_LEATHER_RESTRICTIVE_CHASTITY_CORSET_OPEN(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0600231e, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_RESTRICTIVE_CHASTITY_CORSET_OPEN called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_RESTRICTIVE_CHASTITY_CORSET_OPEN target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_EBONITE_RESTRICTIVE_CHASTITY_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0600231f, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_RESTRICTIVE_CHASTITY_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_RESTRICTIVE_CHASTITY_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_EBONITE_RESTRICTIVE_CHASTITY_CORSET_OPEN(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06002320, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_RESTRICTIVE_CHASTITY_CORSET_OPEN called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_RESTRICTIVE_CHASTITY_CORSET_OPEN target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_LEATHER_RESTRICTIVE_CHASTITY_CORSET_OPEN(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06002322, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_RESTRICTIVE_CHASTITY_CORSET_OPEN called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_RESTRICTIVE_CHASTITY_CORSET_OPEN target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_LEATHER_RESTRICTIVE_CHASTITY_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06002885, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_RESTRICTIVE_CHASTITY_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_RESTRICTIVE_CHASTITY_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_LEATHER_RESTRICTIVE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06015973, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_RESTRICTIVE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_RESTRICTIVE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_LEATHER_RESTRICTIVE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0601598c, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_RESTRICTIVE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_RESTRICTIVE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_EBONITE_RESTRICTIVE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060159a8, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_RESTRICTIVE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_RESTRICTIVE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_EBONITE_RESTRICTIVE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060159b8, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_RESTRICTIVE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_RESTRICTIVE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_EBONITE_RESTRICTIVE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060159cd, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_RESTRICTIVE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_RESTRICTIVE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_GOLDEN_CHASTITY_BRA_PADDED(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603ffff, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_GOLDEN_CHASTITY_BRA_PADDED called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_GOLDEN_CHASTITY_BRA_PADDED target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_SILVER_CHASTITY_BRA_PADDED(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06040002, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_SILVER_CHASTITY_BRA_PADDED called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_SILVER_CHASTITY_BRA_PADDED target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_TRANSPARENT_RESTRICTIVE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06047bfe, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_TRANSPARENT_RESTRICTIVE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_TRANSPARENT_RESTRICTIVE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_PENTAGRAM_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604e8b1, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_PENTAGRAM_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_PENTAGRAM_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_SIMPLE_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604e8b3, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_SIMPLE_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_SIMPLE_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_TOP_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604e8b5, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_TOP_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_TOP_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604e8b8, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_PENTAGRAM_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604e8b9, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_PENTAGRAM_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_PENTAGRAM_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_SIMPLE_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604e8bb, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_SIMPLE_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_SIMPLE_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_TOP_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604e8bd, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_TOP_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_TOP_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604e8c0, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604ee23, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_CHAOTIC_SIMPLE_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604ee25, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_CHAOTIC_SIMPLE_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_CHAOTIC_SIMPLE_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_CHAOTIC_TOP_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604ee27, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_CHAOTIC_TOP_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_CHAOTIC_TOP_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_CHAOTIC_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604ee29, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_CHAOTIC_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_CHAOTIC_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_PENTAGRAM_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604ee2b, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_PENTAGRAM_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_PENTAGRAM_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_SIMPLE_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604ee2d, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_SIMPLE_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_SIMPLE_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_TOP_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604ee2f, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_TOP_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_TOP_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604ee31, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509d6, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_PENTAGRAM_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509d7, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_PENTAGRAM_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_PENTAGRAM_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_SIMPLE_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509db, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_SIMPLE_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_SIMPLE_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_TOP_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509dc, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_TOP_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_TOP_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509de, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_PENTAGRAM_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509df, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_PENTAGRAM_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_PENTAGRAM_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_SIMPLE_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509e2, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_SIMPLE_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_SIMPLE_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_TOP_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509e5, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_TOP_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_TOP_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_CHAOTIC_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509e6, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_CHAOTIC_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_CHAOTIC_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509e7, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_CHAOTIC_SIMPLE_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509ea, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_CHAOTIC_SIMPLE_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_CHAOTIC_SIMPLE_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_CHAOTIC_TOP_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509ec, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_CHAOTIC_TOP_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_CHAOTIC_TOP_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509ee, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_PENTAGRAM_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509ef, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_PENTAGRAM_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_PENTAGRAM_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_SIMPLE_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509f2, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_SIMPLE_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_SIMPLE_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_TOP_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060509f4, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_TOP_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_TOP_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fbe, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_PENTAGRAM_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fbf, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_PENTAGRAM_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_PENTAGRAM_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_SIMPLE_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fc0, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_SIMPLE_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_SIMPLE_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_TOP_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fc1, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_TOP_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_TOP_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fc2, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_PENTAGRAM_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fc3, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_PENTAGRAM_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_PENTAGRAM_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_SIMPLE_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fc4, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_SIMPLE_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_SIMPLE_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_TOP_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fc5, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_TOP_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_TOP_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_CHAOTIC_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fc6, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_CHAOTIC_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_CHAOTIC_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fc7, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_CHAOTIC_SIMPLE_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fc8, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_CHAOTIC_SIMPLE_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_CHAOTIC_SIMPLE_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_CHAOTIC_TOP_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fc9, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_CHAOTIC_TOP_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_CHAOTIC_TOP_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fca, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_PENTAGRAM_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fcb, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_PENTAGRAM_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_PENTAGRAM_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_SIMPLE_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fcc, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_SIMPLE_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_SIMPLE_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_TOP_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06051fcd, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_TOP_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_TOP_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06052564, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_PENTAGRAM_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06052565, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_PENTAGRAM_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_PENTAGRAM_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_SIMPLE_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06052566, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_SIMPLE_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_SIMPLE_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_TOP_CHAOTIC_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06052567, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_TOP_CHAOTIC_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_TOP_CHAOTIC_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06052568, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_PENTAGRAM_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06052569, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_PENTAGRAM_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_PENTAGRAM_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_SIMPLE_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0605256a, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_SIMPLE_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_SIMPLE_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_TOP_ROPE_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0605256b, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_TOP_ROPE_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_TOP_ROPE_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_CHAOTIC_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0605256c, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_CHAOTIC_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_CHAOTIC_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0605256d, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_CHAOTIC_PENTAGRAM_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_CHAOTIC_SIMPLE_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0605256e, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_CHAOTIC_SIMPLE_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_CHAOTIC_SIMPLE_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_CHAOTIC_TOP_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0605256f, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_CHAOTIC_TOP_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_CHAOTIC_TOP_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06052570, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_PENTAGRAM_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06052571, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_PENTAGRAM_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_PENTAGRAM_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_SIMPLE_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06052572, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_SIMPLE_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_SIMPLE_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_TOP_ROPE_CORSET_EXP(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06052573, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_TOP_ROPE_CORSET_EXP called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_TOP_ROPE_CORSET_EXP target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_TRANSPARENT_RESTRICTIVE_CHASTITY_CORSET_OPEN(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060592e1, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_TRANSPARENT_RESTRICTIVE_CHASTITY_CORSET_OPEN called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_TRANSPARENT_RESTRICTIVE_CHASTITY_CORSET_OPEN target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_TRANSPARENT_RESTRICTIVE_CHASTITY_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060592e2, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_TRANSPARENT_RESTRICTIVE_CHASTITY_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_TRANSPARENT_RESTRICTIVE_CHASTITY_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_LEATHER_HARNESS_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a1008b, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_HARNESS_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_HARNESS_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_LEATHER_HARNESS_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a1008d, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_HARNESS_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_HARNESS_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_LEATHER_HARNESS_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a1008f, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_HARNESS_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_HARNESS_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_EBONITE_HARNESS_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a10094, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_HARNESS_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_HARNESS_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_EBONITE_HARNESS_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a10096, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_HARNESS_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_HARNESS_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_EBONITE_HARNESS_CORSET(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a10098, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_HARNESS_CORSET called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_HARNESS_CORSET target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction