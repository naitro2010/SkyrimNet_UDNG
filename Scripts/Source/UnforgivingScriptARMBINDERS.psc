Scriptname UnforgivingScriptARMBINDERS

    bool Function DDNG_IsEligible(Actor akActor, string contextJson, string paramsJson) global
        

        return true;
    EndFunction

    
        Function LOCK_LEATHER_ABADON_ARMBINDER(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x0912a11a, "UnforgivingDevices.esp") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_LEATHER_ABADON_ARMBINDER called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_LEATHER_ABADON_ARMBINDER target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_ABADON_ARMBINDER(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x0912a11c, "UnforgivingDevices.esp") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_ABADON_ARMBINDER called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_ABADON_ARMBINDER target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WEAK_ABADON_ARMBINDER(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x0912c179, "UnforgivingDevices.esp") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WEAK_ABADON_ARMBINDER called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WEAK_ABADON_ARMBINDER target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_EBONITE_ABADON_ARMBINDER(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x0912d1a6, "UnforgivingDevices.esp") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_EBONITE_ABADON_ARMBINDER called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_EBONITE_ABADON_ARMBINDER target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RARE_BLUE_ARMBINDER(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x09135872, "UnforgivingDevices.esp") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RARE_BLUE_ARMBINDER called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RARE_BLUE_ARMBINDER target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_CURSED_ARMBINDER(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x09156ee8, "UnforgivingDevices.esp") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_CURSED_ARMBINDER called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_CURSED_ARMBINDER target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_PUNISHER_ARMBINDER(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x0915b53d, "UnforgivingDevices.esp") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_PUNISHER_ARMBINDER called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_PUNISHER_ARMBINDER target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction