# generic ide commands are defined in ide.talon
#custom vscode commands go here
app: Code
app: Code - OSS
app: Code
app: Visual Studio Code
app: Code.exe
-
tag(): tabs
save file: key(ctrl-s)
save [file] as: key(ctrl-shift-s)
close file: key(ctrl-F4)
dedent | undent: key(ctrl-[)
run selection: key(shift-enter)
go to line <number>:
    key(ctrl-g)
    sleep(100ms)
    insert(number)
    key(enter)