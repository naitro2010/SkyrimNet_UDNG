Scriptname skyrimnet_UDNG_MCM extends SKI_ConfigBase

skyrimnet_UDNG_Groups Property groups Auto

bool player_action_allowed = false
int player_action_key

bool debug_key_allowed = false
int debug_key

int options = 0
String options_page = "options"

; Combination of NPC allowed actions 
bool Property npc_unequip_others_allowed Auto 
bool Property npc_unequip_player_allowed Auto 
bool Property npc_unequip_self_allowed Auto 
bool Property npc_equip_others_allowed Auto 
bool Property npc_equip_player_allowed Auto 
bool Property npc_equip_self_allowed Auto 

zadlibs libs_local = None 

Event OnInit() 
    npc_equip_others_allowed = true 
    npc_equip_player_allowed = true 
    npc_equip_self_allowed = false 
    npc_unequip_others_allowed = true 
    npc_unequip_player_allowed = true 
    npc_unequip_self_allowed = false 
    Setup() 
EndEvent 

Function Setup() 
    libs_local=Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
EndFunction 

Event OnConfigOpen()
    Pages = new String[1]
    Pages[options] = options_page
EndEvent 

Event OnPageReset(string page) 
    PageOptions() 
EndEvent 

Function PageOptions() 
    AddHeaderOption("Options")
    AddHeaderOption("")
    AddToggleOptionST("PlayerActionKeyToggle","Enable the Player Actions hot key",player_action_allowed)
    AddKeyMapOptionST("PlayerActionKeySet", "Player wear/remove DD on an NPC", player_action_key)

    AddHeaderOption("NPC can Equip Devices: ")
    AddHeaderOption("")
    AddToggleOptionST("NPC_Equip_Others","on other NPCs",npc_equip_others_allowed)
    AddToggleOptionST("NPC_Equip_Self","on themselves",npc_equip_self_allowed)
    AddToggleOptionST("NPC_Equip_Player","on the player",npc_equip_player_allowed)
    AddHeaderOption("NPC can Unequip Devices: ")
    AddHeaderOption("")    
    AddToggleOptionST("NPC_Unequip_Others","on other NPCs",npc_unequip_others_allowed)
    AddToggleOptionST("NPC_Unequip_Self","on themselves",npc_unequip_self_allowed)
    AddToggleOptionST("NPC_Unequip_Player","on the player",npc_unequip_player_allowed)
    AddHeaderOption("                                      ")
    AddHeaderOption("Debug Options")
    AddHeaderOption("")
    AddToggleOptionST("DebugKeyToggle","Debug functions key",debug_key_allowed)
    AddKeyMapOptionST("DebugKeySet", "Ability to call the LLM Actions Fuctions", debug_key)
EndFunction

; --------------------------------------------
;  Player Action Key 
; --------------------------------------------

State PlayerActionKeyToggle
    Event OnSelectST()
        player_action_allowed = !player_action_allowed
        SetToggleOptionValueST(player_action_allowed)
        if !player_action_allowed
            UnregisterForKey(player_action_key)
        else
            RegisterForKey(player_action_key)
        endif
        ForcePageReset()
    EndEvent
    Event OnHighlightST()
        SetInfoText("Will turn on the the player action key.\n")
    EndEvent
EndState

State PlayerActionKeySet
    Event OnKeyMapChangeST(int key_code, string conflictControl, string conflictName)
        bool continue = True
        if conflictControl != "" 
            String msg = None 
            if (conflictName != "")
                msg = "This key is already mapped to:\n'" + conflictControl + "'\n(" + conflictName + ")\n\nAre you sure you want to continue?"
            else
                msg = "This key is already mapped to:\n'" + conflictControl + "'\n\nAre you sure you want to continue?"
            endIf

            continue = ShowMessage(msg, true, "$Yes", "$No")
        endif 
        if continue 
            UnregisterForKey(player_action_key)
            player_action_key = key_code
            RegisterForKey(player_action_key)
            SetKeymapOptionValueST(player_action_key)
        endif 
    EndEvent
    Event OnHighlightST()
        SetInfoText("Will allow the player to add/remove DD devices from NPC in crosshairs.\n")
    EndEvent
EndState

; --------------------------------------------
; Hot Keys 
; --------------------------------------------

State DebugKeyToggle
    Event OnSelectST()
        debug_key_allowed = !debug_key_allowed
        SetToggleOptionValueST(debug_key_allowed)
        if !debug_key_allowed
            UnregisterForKey(debug_key)
        else
            RegisterForKey(debug_key)
        endif
        ForcePageReset()
    EndEvent
    Event OnHighlightST()
        SetInfoText("Enables the debug Hotkey.\n")
    EndEvent
EndState

State DebugKeySet
    Event OnKeyMapChangeST(int key_code, string conflictControl, string conflictName)
        bool continue = True
        if conflictControl != "" 
            String msg = None 
            if (conflictName != "")
                msg = "This key is already mapped to:\n'" + conflictControl + "'\n(" + conflictName + ")\n\nAre you sure you want to continue?"
            else
                msg = "This key is already mapped to:\n'" + conflictControl + "'\n\nAre you sure you want to continue?"
            endIf

            continue = ShowMessage(msg, true, "$Yes", "$No")
        endif 
        if continue 
            UnregisterForKey(debug_key)
            debug_key = key_code
            RegisterForKey(debug_key)
            SetKeymapOptionValueST(debug_key)
        endif 
    EndEvent
    Event OnHighlightST()
        SetInfoText( \
            "Will allow the player to call LLM functions directly. This is useful if the LLM fails to select the right action.\n" \
          + "It was also useful when debugging the code :) .\n")
    EndEvent
EndState

Event OnKeyDown(int key_code)
    if UI.IsTextInputEnabled()
        return 
    endif 

    if key_code == player_action_key
        Actor target = Game.GetCurrentCrosshairRef() as Actor 
        if target == None 
            Trace("OnKeyDown: A actor was not found in the crosshairs")
            return 
        endif 

;        skyrimnet_UDNG_Groups groups = (self as Quest) as skyrimnet_UDNG_Groups
        groups.UpdateDevices(target)
    ElseIf key_code == debug_key
        Actor speaker = Game.GetCurrentCrosshairRef() as Actor 
        if speaker == None 
            Trace("OnKeyDown: A actor was not found in the crosshairs")
            return 
        endif 

        String name = "belt"
        Keyword kword = skynet_DeviousScript.Name_to_Keyword(libs_local, name) 
        if kword != None 
            int target_self = 0
            int target_other = 1
            int target_player = 2
            int cancel = 3 

            bool[] equipped = new Bool[3]
            String[] buttons = new String[4]
            int i = 0 
            Actor target_other_actor = None 
            Actor player = Game.GetPlayer() 
            while i < cancel 
                Actor target = None 
                String label = ""
                if i == target_self 
                    target = speaker 
                    label = "self"
                elseif i == target_other 
                    Actor[] actors = MiscUtil.ScanCellActors(player, 1000)
                    int j = actors.length - 1 
                    while 0 <= j && target == None 
                        if actors[j] != player && actors[j] != speaker 
                            target = actors[j] 
                            target_other_actor = target
                        endif 
                        j -= 1 
                    label = "other"
                    endwhile 
                elseif i == target_player 
                    target = player 
                    label = "player"
                endif 

                if target != None 
                    if target.WornHasKeyword(kword)
                        buttons[i] = "Unequip on "+label 
                        equipped[i] = true
                    else 
                        buttons[i] = "Equip on "+label 
                        equipped[i] = false
                    endif 
                else 
                    buttons[i] = "No "+label+" found" 
                endif 
                i += 1 
            endwhile 
            buttons[cancel] = "Cancel"

            int button = SkyMessage.ShowArray("Unequip/Equip "+name+" on:", buttons, getIndex = true) as int  
            if button < cancel
                String debug_str = "" 
                if button == target_self 
                    debug_str = "self"
                elseif button == target_player 
                    debug_str = "player"
                elseif target_other_actor != None 
                    debug_str = target_other_actor.GetDisplayName() 
                endif 

                if debug_str != "" 
                    if equipped[button]
                        skynet_DeviousScript.ExtCmdUnequip(speaker, "{\"debug_target\":\""+debug_str+"\"}", name)
                    else 
                        ; skynet_DeviousScript.ExtCmdUnequip(speaker, "{\"debug_target\":\""+debug_str+"\"}", name)
                    endif 
                endif 
            endif 
        else 
            Debug.Notification("skyrimnet_UNDNG_MCM invalid device name:"+name)
        endif 
        ; code
    endif 
EndEvent 

Function Trace(String msg, bool notification=false) 
    if notification 
        Debug.Notification(msg) 
    endif 
    Debug.Trace("[skyrimnet_UDNG_MCM] "+msg) 
EndFunction 

; --------------------------------------------
;  Allowable actions 
; --------------------------------------------

State NPC_Equip_Others
    Event OnSelectST()
        npc_equip_others_allowed = !npc_equip_others_allowed
        SetToggleOptionValueST(npc_equip_others_allowed)
        ForcePageReset()
    EndEvent
    Event OnHighlightST()
        SetInfoText("Will allow the NPCs to equip devices on other NPCs.\n")
    EndEvent
EndState

State NPC_Equip_Self
    Event OnSelectST()
        npc_equip_self_allowed = !npc_equip_self_allowed
        SetToggleOptionValueST(npc_equip_self_allowed)
        ForcePageReset()
    EndEvent
    Event OnHighlightST()
        SetInfoText("Will allow the NPCs to equip devices on themselves.\n")
    EndEvent
EndState

State NPC_Equip_Player
    Event OnSelectST()
        npc_equip_player_allowed = !npc_equip_player_allowed
        SetToggleOptionValueST(npc_equip_player_allowed)
        ForcePageReset()
    EndEvent
    Event OnHighlightST()
        SetInfoText("Will allow the NPCs to equip devices on the player.\n")
    EndEvent
EndState

State NPC_Unequip_Player
    Event OnSelectST()
        npc_unequip_player_allowed = !npc_unequip_player_allowed
        SetToggleOptionValueST(npc_unequip_player_allowed)
        ForcePageReset()
    EndEvent
    Event OnHighlightST()
        SetInfoText("Will allow the NPCs to unequip devices on the player.\n")
    EndEvent
EndState

State NPC_Unequip_Self
    Event OnSelectST()
        npc_unequip_self_allowed = !npc_unequip_self_allowed
        SetToggleOptionValueST(npc_unequip_self_allowed)
        ForcePageReset()
    EndEvent
    Event OnHighlightST()
        SetInfoText("Will allow the NPCs to unequip devices on themselves.\n")
    EndEvent
EndState

State NPC_Unequip_Others
    Event OnSelectST()
        npc_unequip_others_allowed = !npc_unequip_others_allowed
        SetToggleOptionValueST(npc_unequip_others_allowed)
        ForcePageReset()
    EndEvent
    Event OnHighlightST()
        SetInfoText("Will allow the NPCs to unequip devices on other NPCs.\n")
    EndEvent
EndState