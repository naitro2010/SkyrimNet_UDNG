Scriptname UnforgivingScriptLEG_CUFFS

    bool Function DDNG_IsEligible(Actor akActor, string contextJson, string paramsJson) global
        

        return true;
    EndFunction

    
        Function LOCK_ABADON_CUFFS_LEGS(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x091332ae, "UnforgivingDevices.esp") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_ABADON_CUFFS_LEGS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_ABADON_CUFFS_LEGS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction