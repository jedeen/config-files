;;; Reference

; + = Shift key
; ^ = Ctrl key
; # = Windows key
; ! = Alt key

;;; Quick phrases

::,ha::
SendInput Hello all,
return

::,hi::
SendInput Hello,{Space}
return

::,t::
SendInput Thanks,
return

::,ty::
SendInput Thank you,
return

::,tyt::
SendInput Thank you for your time,
return

;;; Times and dates

; Insert the current date in the year/month/day format (e.g. 2022/03/31)
::,ds::
FormatTime, CurrentDate,, yyyy/MM/dd
SendInput %CurrentDate%
return

; Insert the current date in the year-month-day format (e.g. 2022-03-31)
::,d-::
FormatTime, CurrentDate,, yyyy-MM-dd
SendInput %CurrentDate%
return

; Insert a timestamp in the format year-month-day_hours-minutes-seconds (e.g. 2022-03-31_12-27-33)
::,ts::
FormatTime, CurrentDateTime,, yyyy-MM-dd_HH-mm-ss
SendInput, %CurrentDateTime%
return

; Insert the current time in the hour:minute format (e.g. 11:37)
::,tt::
FormatTime, Time, ,HH:mm
SendInput, %Time%
Return

;;; Utilities

; Reload the AutoHotkey script with control + q
^q::
Reload
return

; Toggle system volume mute with shift + pause
+Pause::Send {Volume_Mute}
