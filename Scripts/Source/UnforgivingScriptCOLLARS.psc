Scriptname UnforgivingScriptCOLLARS

    bool Function DDNG_IsEligible(Actor akActor, string contextJson, string paramsJson) global
        

        return true;
    EndFunction

    
        Function LOCK_ABADON_COLLAR(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x091342d9, "UnforgivingDevices.esp") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_ABADON_COLLAR called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_ABADON_COLLAR target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_ABADON_RESTRICTIVE_COLLAR(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x09136e22, "UnforgivingDevices.esp") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_ABADON_RESTRICTIVE_COLLAR called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_ABADON_RESTRICTIVE_COLLAR target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction