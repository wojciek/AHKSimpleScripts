FileGetInfo( lptstrFilename) {
	List := "Comments InternalName ProductName CompanyName LegalCopyright ProductVersion"
		. " FileDescription LegalTrademarks PrivateBuild FileVersion OriginalFilename SpecialBuild"
	dwLen := DllCall("Version.dll\GetFileVersionInfoSize", "Str", lptstrFilename, "Ptr", 0)
	dwLen := VarSetCapacity( lpData, dwLen + A_PtrSize)
	DllCall("Version.dll\GetFileVersionInfo", "Str", lptstrFilename, "UInt", 0, "UInt", dwLen, "Ptr", &lpData) 
	DllCall("Version.dll\VerQueryValue", "Ptr", &lpData, "Str", "\VarFileInfo\Translation", "PtrP", lplpBuffer, "PtrP", puLen )
	sLangCP := Format("{:04X}{:04X}", NumGet(lplpBuffer+0, "UShort"), NumGet(lplpBuffer+2, "UShort"))
	i := {}
	Loop, Parse, % List, %A_Space%
		DllCall("Version.dll\VerQueryValue", "Ptr", &lpData, "Str", "\StringFileInfo\" sLangCp "\" A_LoopField, "PtrP", lplpBuffer, "PtrP", puLen )
		? i[A_LoopField] := StrGet(lplpBuffer, puLen) : ""
	return i
}

filePath = "C:\Apps\tEZD\dev\tEZD\tEZD.exe"
fileVersion = % FileGetInfo("C:\Apps\tEZD\dev\tEZD\tEZD.exe").FileVersion
appWindowName =  "tEZD_USC (USC Gliwice`, 66666) Wersja: "%fileVersion%
user = TestU
pass = uscusc


Run, %filePath%
Sleep, 5000
Send, {Tab}
Send, TestU
Send, {Tab}
Send, uscusc
Send, {Enter}
Sleep, 5000
MouseClick, left,  21,  46
Sleep, 5000
MouseClick, left,  211,  197
Sleep, 100
Send, {TAB}
Random, randomNumber, 1, 1000
Send, Nr_%randomNumber%
Send, {Tab 6}
Send, //Wyroznik//
Send, {TAB}
Send, //Kod kontrahenta//
Send, {TAB}
Send, //Akronim//
Send, {TAB}
Send, //Nazwisko//
Send, {TAB}
Send, //ImiePierwsze//
Send, {TAB}
Send, //ImieDrugie//
Send, {TAB}
Send, {CTRLDOWN}{BACKSPACE}{CTRLUP}{SHIFTDOWN}{SHIFTUP}Niemc{DOWN}{ENTER} ; Niemcy
Send, {TAB}
Send, Frankfurt
Send, {TAB}
Send, Strasse
Send, {TAB}
Send, NrDom
Send, {TAB}
Send, NrLok
Send, {TAB}
Send, KodPocz
Send, {TAB}
Send, Poczta
Send, {TAB}
Send, Skrytka
Send, {TAB}
Send, Telefon
Send, {TAB}
Send, FaxFaxFax
Send, {TAB}
Send, mail@mail.com
Send, {TAB}
Send, NipNip
Send, {TAB}
Send, Regon
Send, {TAB}
Send, Pesel
Send, {TAB 7}
Send, o{ENTER} ; OSB
Send, {TAB 3}
Send, Tytu³ pisma testowego numer %randomNumber%
Send, {Tab} 
Send, Dotyczy pisma testowego %randomNumber%
Send, {Tab} 
Send, pio{ENTER} ; PIOG
MouseClick, left,  124,  80
return