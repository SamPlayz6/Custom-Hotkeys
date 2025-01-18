#^c::  ; Windows+Ctrl+C
{
    ; Store current clipboard
    SavedClip := A_Clipboard
    
    ; Clear clipboard
    A_Clipboard := ""
    
    ; Copy selected text
    Send "^c"
    ClipWait 1
    
    if A_Clipboard != ""
    {
        ; Get the copied text
        textToPaste := A_Clipboard
        
        ; Switch windows
        Send "!{Tab}"
        Sleep 400  ; Increased from 200
        
        ; Paste text and add vocab marker
        Send "^v"  ; Paste
        Sleep 300  ; Increased from 150
        SendText ": Add to Vocab list"
        Sleep 300  ; Added delay before Enter
        Send "{Enter}"
        Sleep 400  ; Increased from 100
        
        ; Switch back
        Send "!{Tab}"
        
        ; Restore original clipboard
        A_Clipboard := SavedClip
    }
    return
}