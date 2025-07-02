Scriptname DeviousScriptBOOTS

    bool Function DDNG_IsEligible(Actor akActor, string contextJson, string paramsJson) global

        return true;
    EndFunction

    
        Function LOCK_IRON_RING_SLAVE_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060048b8, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_IRON_RING_SLAVE_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_IRON_RING_SLAVE_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_IRON_RING_SLAVE_BOOTS_UNLOCKED(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0600b475, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_IRON_RING_SLAVE_BOOTS_UNLOCKED called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_IRON_RING_SLAVE_BOOTS_UNLOCKED target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_LEATHER_PONY_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060116f1, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_PONY_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_PONY_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_EBONITE_PONY_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060116f6, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_PONY_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_PONY_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_LEATHER_PONY_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060116fa, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_PONY_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_PONY_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_EBONITE_PONY_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060116fe, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_PONY_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_PONY_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_LEATHER_PONY_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06011702, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_PONY_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_PONY_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_EBONITE_PONY_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06011706, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_PONY_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_PONY_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_LEATHER_RESTRICTIVE_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060138da, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_RESTRICTIVE_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_RESTRICTIVE_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_LEATHER_RESTRICTIVE_BOOTS_UNLOCKED(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06013e3f, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_RESTRICTIVE_BOOTS_UNLOCKED called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_RESTRICTIVE_BOOTS_UNLOCKED target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_LEATHER_RESTRICTIVE_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0601597e, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_RESTRICTIVE_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_RESTRICTIVE_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_LEATHER_RESTRICTIVE_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06015992, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_RESTRICTIVE_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_RESTRICTIVE_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_EBONITE_RESTRICTIVE_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060159ae, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_RESTRICTIVE_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_RESTRICTIVE_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_EBONITE_RESTRICTIVE_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060159bf, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_RESTRICTIVE_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_RESTRICTIVE_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_EBONITE_RESTRICTIVE_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060159d3, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_RESTRICTIVE_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_RESTRICTIVE_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_IRON_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0601f6ce, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_IRON_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_IRON_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_IRON_BALLET_BOOTS_REINFORCED(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0601fc31, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_IRON_BALLET_BOOTS_REINFORCED called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_IRON_BALLET_BOOTS_REINFORCED target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RUSTY_IRON_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0601fc33, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RUSTY_IRON_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RUSTY_IRON_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RUSTY_IRON_BALLET_BOOTS_REINFORCED(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0601fc35, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RUSTY_IRON_BALLET_BOOTS_REINFORCED called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RUSTY_IRON_BALLET_BOOTS_REINFORCED target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_LEATHER_SLAVE_BALLET_HEELS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06021cc2, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_SLAVE_BALLET_HEELS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_SLAVE_BALLET_HEELS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_LEATHER_SLAVE_BALLET_HEELS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060237be, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_SLAVE_BALLET_HEELS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_SLAVE_BALLET_HEELS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_LEATHER_SLAVE_BALLET_HEELS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x060237c1, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_SLAVE_BALLET_HEELS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_SLAVE_BALLET_HEELS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_EBONITE_CATSUIT_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d2d4, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_CATSUIT_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_CATSUIT_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_TRANSPARENT_CATSUIT_HIGH_HEELS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d2dd, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_TRANSPARENT_CATSUIT_HIGH_HEELS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_TRANSPARENT_CATSUIT_HIGH_HEELS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLUE_EBONITE_CATSUIT_SOCKS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d922, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLUE_EBONITE_CATSUIT_SOCKS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLUE_EBONITE_CATSUIT_SOCKS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_CYAN_EBONITE_CATSUIT_SOCKS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d924, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_CYAN_EBONITE_CATSUIT_SOCKS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_CYAN_EBONITE_CATSUIT_SOCKS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLUE_EBONITE_CATSUIT_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d98a, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLUE_EBONITE_CATSUIT_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLUE_EBONITE_CATSUIT_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_CYAN_EBONITE_CATSUIT_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d98c, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_CYAN_EBONITE_CATSUIT_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_CYAN_EBONITE_CATSUIT_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_DARK_GREEN_EBONITE_CATSUIT_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d98e, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_DARK_GREEN_EBONITE_CATSUIT_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_DARK_GREEN_EBONITE_CATSUIT_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_DARK_GREY_EBONITE_CATSUIT_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d990, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_DARK_GREY_EBONITE_CATSUIT_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_DARK_GREY_EBONITE_CATSUIT_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_DARK_RED_EBONITE_CATSUIT_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d992, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_DARK_RED_EBONITE_CATSUIT_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_DARK_RED_EBONITE_CATSUIT_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_GOLDEN_EBONITE_CATSUIT_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d994, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_GOLDEN_EBONITE_CATSUIT_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_GOLDEN_EBONITE_CATSUIT_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_GREEN_EBONITE_CATSUIT_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d996, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_GREEN_EBONITE_CATSUIT_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_GREEN_EBONITE_CATSUIT_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_LIGHT_GREY_EBONITE_CATSUIT_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d998, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_LIGHT_GREY_EBONITE_CATSUIT_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_LIGHT_GREY_EBONITE_CATSUIT_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_ORANGE_EBONITE_CATSUIT_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d99a, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_ORANGE_EBONITE_CATSUIT_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_ORANGE_EBONITE_CATSUIT_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_PINK_EBONITE_CATSUIT_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d99c, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_PINK_EBONITE_CATSUIT_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_PINK_EBONITE_CATSUIT_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_PURPLE_EBONITE_CATSUIT_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d99e, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_PURPLE_EBONITE_CATSUIT_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_PURPLE_EBONITE_CATSUIT_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_EBONITE_CATSUIT_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d9a0, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_CATSUIT_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_CATSUIT_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_EBONITE_CATSUIT_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d9a2, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_CATSUIT_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_CATSUIT_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_YELLOW_EBONITE_CATSUIT_BALLET_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d9a4, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_YELLOW_EBONITE_CATSUIT_BALLET_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_YELLOW_EBONITE_CATSUIT_BALLET_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_TRANSPARENT_RESTRICTIVE_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06047bfc, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_TRANSPARENT_RESTRICTIVE_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_TRANSPARENT_RESTRICTIVE_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_EBONITE_PONY_PLAY_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0604a1e7, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_PONY_PLAY_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_PONY_PLAY_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06057375, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLUE_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06057376, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLUE_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLUE_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_CYAN_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06057379, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_CYAN_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_CYAN_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_DARK_GREEN_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0605737b, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_DARK_GREEN_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_DARK_GREEN_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_DARK_GREY_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0605737d, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_DARK_GREY_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_DARK_GREY_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_DARK_RED_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0605737f, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_DARK_RED_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_DARK_RED_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_GOLDEN_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06057381, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_GOLDEN_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_GOLDEN_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_GREEN_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06057383, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_GREEN_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_GREEN_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_LIGHT_GREY_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06057385, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_LIGHT_GREY_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_LIGHT_GREY_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_ORANGE_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06057387, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_ORANGE_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_ORANGE_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_PINK_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06057389, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_PINK_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_PINK_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_PURPLE_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0605738b, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_PURPLE_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_PURPLE_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0605738d, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_REDWHITE_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0605738f, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_REDWHITE_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_REDWHITE_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06057391, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_YELLOW_EBONITE_CATSUIT_BOOTS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06057393, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_YELLOW_EBONITE_CATSUIT_BOOTS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_YELLOW_EBONITE_CATSUIT_BOOTS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_LEATHER_HIGH_HEELS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06058590, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_HIGH_HEELS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_HIGH_HEELS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_LEATHER_HIGH_HEELS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06058592, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_HIGH_HEELS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_HIGH_HEELS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_EBONITE_HIGH_HEELS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06058594, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_HIGH_HEELS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_HIGH_HEELS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_EBONITE_HIGH_HEELS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06058596, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_HIGH_HEELS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_HIGH_HEELS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_EBONITE_HIGH_HEELS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0605859c, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_HIGH_HEELS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_HIGH_HEELS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_LEATHER_HIGH_HEELS(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x0605859f, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_HIGH_HEELS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_HIGH_HEELS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_EBONITE_PONY_BOOTS_TIGHT(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a2000b, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_PONY_BOOTS_TIGHT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_PONY_BOOTS_TIGHT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_EBONITE_PONY_BOOTS_SHORT_TIGHT(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a2000e, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_PONY_BOOTS_SHORT_TIGHT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_EBONITE_PONY_BOOTS_SHORT_TIGHT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_EBONITE_PONY_BOOTS_TIGHT(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a20016, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_PONY_BOOTS_TIGHT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_PONY_BOOTS_TIGHT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_EBONITE_PONY_BOOTS_SHORT_TIGHT(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a20018, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_PONY_BOOTS_SHORT_TIGHT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_EBONITE_PONY_BOOTS_SHORT_TIGHT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_EBONITE_PONY_BOOTS_TIGHT(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a2001a, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_PONY_BOOTS_TIGHT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_PONY_BOOTS_TIGHT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_EBONITE_PONY_BOOTS_SHORT_TIGHT(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a2001c, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_PONY_BOOTS_SHORT_TIGHT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_EBONITE_PONY_BOOTS_SHORT_TIGHT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_LEATHER_PONY_BOOTS_TIGHT(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a20034, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_PONY_BOOTS_TIGHT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_PONY_BOOTS_TIGHT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_LEATHER_PONY_BOOTS_TIGHT(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a20045, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_PONY_BOOTS_TIGHT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_PONY_BOOTS_TIGHT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_LEATHER_PONY_BOOTS_TIGHT(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a20047, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_PONY_BOOTS_TIGHT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_PONY_BOOTS_TIGHT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_LEATHER_PONY_BOOTS_SHORT_TIGHT(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a2004c, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_PONY_BOOTS_SHORT_TIGHT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_LEATHER_PONY_BOOTS_SHORT_TIGHT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_LEATHER_PONY_BOOTS_SHORT_TIGHT(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a2004e, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_PONY_BOOTS_SHORT_TIGHT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_LEATHER_PONY_BOOTS_SHORT_TIGHT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_LEATHER_PONY_BOOTS_SHORT_TIGHT(Actor akOriginator, string contextJson, string paramsJson) global
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
            Armor deviceInventory=(Game.GetFormFromFile(0x06a20050, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_PONY_BOOTS_SHORT_TIGHT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_LEATHER_PONY_BOOTS_SHORT_TIGHT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction