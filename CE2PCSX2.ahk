Loop,Parse,Clipboard,`n
{
IfNotInString,A_LoopField,<Address>
{
List .= A_LoopField "`n"
Continue
}
Adr := StrReplace(A_LoopField,"<Address>", "")
Adr := StrReplace(Adr, "</Address>", "")
Adr := SubStr(Adr,-7)
Adr := RegExReplace(Adr, "\s")
List .= A_Tab "<Address>pcsx2-qt.EEmem</Address>`n" A_Tab "<Offsets>`n" A_Tab "<Offset>" Adr "</Offset>`n" A_Tab "</Offsets>`n"
}
Clipboard := List