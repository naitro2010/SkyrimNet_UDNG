Scriptname DeviousScriptLEG_RESTRAINTS

    bool Function DDNG_IsEligible(Actor akActor, string contextJson, string paramsJson) global

        return true;
    EndFunction

    
        Function LOCK_IRON_CHAIN_HARNESS_LEGS(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x0601c0ba, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_IRON_CHAIN_HARNESS_LEGS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_IRON_CHAIN_HARNESS_LEGS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RUSTY_IRON_CHAIN_HARNESS_ANKLES(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x0601e68e, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RUSTY_IRON_CHAIN_HARNESS_ANKLES called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RUSTY_IRON_CHAIN_HARNESS_ANKLES target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_IRON_PRISONER_CHAINS(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x0602fa8b, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_IRON_PRISONER_CHAINS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_IRON_PRISONER_CHAINS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RUSTY_IRON_PRISONER_CHAINS(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x0602fa8f, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RUSTY_IRON_PRISONER_CHAINS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RUSTY_IRON_PRISONER_CHAINS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_STEEL_FETTERS_CHAIN(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d2e8, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_STEEL_FETTERS_CHAIN called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_STEEL_FETTERS_CHAIN target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_SILVER_FETTERS_CHAIN(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x0603d2eb, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_SILVER_FETTERS_CHAIN called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_SILVER_FETTERS_CHAIN target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_WHITE_ROPE_BODY_RESTRAINT(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x060592ae, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_WHITE_ROPE_BODY_RESTRAINT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_WHITE_ROPE_BODY_RESTRAINT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_RED_ROPE_BODY_RESTRAINT(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x060592b0, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_RED_ROPE_BODY_RESTRAINT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_RED_ROPE_BODY_RESTRAINT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_BLACK_ROPE_BODY_RESTRAINT(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x060592b2, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_BLACK_ROPE_BODY_RESTRAINT called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_BLACK_ROPE_BODY_RESTRAINT target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction
        Function LOCK_SIMPLE_ROPES_LEGS(Actor akOriginator, string contextJson, string paramsJson) global
            actor akTarget = SkyrimNetApi.GetJsonActor(paramsJson, "target", Game.GetPlayer())
            UD_API UDAPI_local=Game.GetFormFromFile(0x15D06B, "UnforgivingDevices.esp") as UD_API
            zadLibs libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
            If !UDAPI_local.ActorIsValidForUD(akOriginator)
            return
            EndIf
            UD_CustomDevice_NPCSlot oslot=UDAPI_local.getNPCSlotByActor(akOriginator)
            If !oslot.hasFreeHands(true)
            return
            EndIf
            Armor deviceInventory=(Game.GetFormFromFile(0x06a100b9, "Devious Devices - Expansion.esm") as Armor);
            Debug.Trace("[DeviousStuff] LOCK_SIMPLE_ROPES_LEGS called for " + akOriginator.GetDisplayName())
            Debug.Trace("[DeviousStuff] LOCK_SIMPLE_ROPES_LEGS target " + akTarget.GetDisplayName())    
            libs_local.LockDevice(akTarget,deviceInventory,true)
            return

        EndFunction