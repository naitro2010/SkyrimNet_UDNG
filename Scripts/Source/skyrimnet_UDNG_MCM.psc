Scriptname skyrimnet_UDNG_MCM extends SKI_ConfigBase

skyrimnet_UDNG_Groups Property groups Auto

bool player_action_toggle = false
int player_action_key

bool debug_key_toggle = false
int debug_key

int options = 0
String options_page = "options"

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
    AddToggleOptionST("PlayerActionKeyToggle","Enable the Player Actions hot key",player_action_toggle)
    AddKeyMapOptionST("PlayerActionKeySet", "Player wear/remove DD on an NPC", player_action_key)
    ;AddHeaderOption("Debug Options")
    ;AddHeaderOption("")
    ;AddToggleOptionST("DebugKeyToggle","Debug functions key",debug_key_toggle)
    ;AddKeyMapOptionST("DebugKeySet", "Ability to call the LLM Actions Fuctions", debug_key)
EndFunction

; --------------------------------------------
;  Player Action Key 
; --------------------------------------------

State PlayerActionKeyToggle
    Event OnSelectST()
        player_action_toggle = !player_action_toggle
        SetToggleOptionValueST(player_action_toggle)
        if !player_action_toggle
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
        debug_key_toggle = !debug_key_toggle
        SetToggleOptionValueST(debug_key_toggle)
        if !debug_key_toggle
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
    endif 
EndEvent 

Function Trace(String msg, bool notification=false) 
    if notification 
        Debug.Notification(msg) 
    endif 
    Debug.Trace("[skyrimnet_UDNG_MCM] "+msg) 
EndFunction 