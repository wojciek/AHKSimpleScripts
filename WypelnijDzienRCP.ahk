^h::
WinWait, RCP v. 2018.12.11.1, 
IfWinNotActive, RCP v. 2018.12.11.1, , WinActivate, RCP v. 2018.12.11.1, 
WinWaitActive, RCP v. 2018.12.11.1, 
;Działowe
MouseClick, left,  122,  184
MouseClick, left,  122,  184
Sleep, 100
;projekt tEZD
MouseClick, left,  126,  318
MouseClick, left,  126,  318
Sleep, 100
;kliknij w czas godziny i wstaw 0
MouseClick, left,  186,  293
Send, 0
;klijnij w czas minuty i wstaw 0
MouseClick, left,  237,  292
MouseClick, left,  237,  292
Send, 0
Send, 0
;kliknij w Dalej/Zapisz 
MouseClick, left,  1810,  825
Sleep, 100
;Kliknij ok
WinWait, Rozliczenie Czasu Pracy, 
IfWinNotActive, Rozliczenie Czasu Pracy, , WinActivate, Rozliczenie Czasu Pracy, 
WinWaitActive, Rozliczenie Czasu Pracy, 
MouseClick, left,  133,  85
Sleep, 100
;Kliknij Dalej/Zapisz
WinWait, RCP v. 2018.12.11.1, 
IfWinNotActive, RCP v. 2018.12.11.1, , WinActivate, RCP v. 2018.12.11.1, 
WinWaitActive, RCP v. 2018.12.11.1, 
MouseClick, left,  1810,  813
return