#comments-start
[case]
title=autoit test
cid=0
pid=0

[group]
  1. check nodepad content >> something

[esac]
#comments-end

Run("notepad.exe")

$rt1 = WinWaitActive("无标题 - 记事本")
Sleep(1000)
Send("something")

$handle = WinGetHandle('[Active]')
$text = ControlGetText($handle, "", "Edit1")
ConsoleWrite(">>" & $text & @CRLF)

Sleep(1000)
WinClose("*无标题 - 记事本")

WinWaitActive("记事本", "取消")

WinActive("记事本", "取消")
Send("!n")