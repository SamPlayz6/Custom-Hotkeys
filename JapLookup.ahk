#c::
{
    Send "^c"  ; Copy
    Sleep 100  ; Wait longer
    Send "!{Tab}"  ; Alt+Tab to next window
    Sleep 150  ; Wait even longer
    Send "^v"  ; Paste
    Sleep 100  ; Wait before Enter
    Send "{Enter}"  ; Press Enter
    Sleep 100  ; Wait before returning
    Send "!{Tab}"  ; Alt+Tab back to original window
    return
}