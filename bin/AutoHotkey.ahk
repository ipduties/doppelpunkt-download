#SingleInstance force

^b::
	; ~ " # % & * : < > ? / \ { | }.sadasdda
 	;A_Clipboard := StrReplace(A_Clipboard, t, "+")
	Clipboard := StrReplace(Clipboard, "`;", " - ")
	Clipboard := StrReplace(Clipboard, "`~", " - ")
	Clipboard := StrReplace(Clipboard, "`"", " - ")
	Clipboard := StrReplace(Clipboard, "`#", " - ")
	Clipboard := StrReplace(Clipboard, "`%", " - ")
	Clipboard := StrReplace(Clipboard, "`&", " - ")
	Clipboard := StrReplace(Clipboard, "`*", " - ")
	Clipboard := StrReplace(Clipboard, "`:", " - ")
	Clipboard := StrReplace(Clipboard, "`< ", " - ")
	Clipboard := StrReplace(Clipboard, "`> ", " - ")
	Clipboard := StrReplace(Clipboard, "`< ", " - ")
	Clipboard := StrReplace(Clipboard, "`? ", " - ")
	Clipboard := StrReplace(Clipboard, "`/", " - ")
	Clipboard := StrReplace(Clipboard, "`\", " - ")
	Clipboard := StrReplace(Clipboard, "`{", " - ")
	Clipboard := StrReplace(Clipboard, "`|", " - ")
	Clipboard := StrReplace(Clipboard, "`}", " - ")
	Clipboard := StrReplace(Clipboard, "`.", " - ")
	Send, ^v
return

	



