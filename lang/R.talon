mode: user.R
mode: command 
and code.language: R
# os: windows
# app: RStudio
# app: rstudio.exe

-
# tag(): user.code_operators
# tag(): user.code_comment
# tag(): user.code_generic

settings():
    user.code_private_function_formatter = "SNAKE_CASE"
    user.code_protected_function_formatter = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "SNAKE_CASE"
    user.code_protected_variable_formatter = "SNAKE_CASE"
	user.code_public_variable_formatter = "SNAKE_CASE"
	user.code_new_class_formatter = "PUBLIC_CAMEL_CASE"

#COMPLEX
(funky | add function | new function) <user.text>$:
    #todo: once .talon action definitions can take parameters, combine these functions
    user.code_public_function_formatter(user.text)	
    sleep(50ms)
    insert(" <- function() {}")
    key(left enter backspace backspace)
    key(left left left)

short function <user.text>$:
    #todo: once .talon action definitions can take parameters, combine these functions
    user.code_public_function_formatter(user.text)	
    sleep(50ms)
    insert(" <- function()")
    key(left)

#TO DO: try again to make file extensions and generic commands work now that error in code.py is fixed

#OPERATORS
[left] assign: ' <- '
right assign: ' -> '
equals: ' = '
greater than: ' > '
less than: ' < '
greater or equal to: ' >= '
less than or equal to: ' <= '
plus: ' + '
minus: ' - '
pipe: ' | '
divided by: ' / '
(multiplied by | times): ' * '
plus equals: ' += '
minus equals: ' -= '
[is] (congruent | equal) to: ' == '

#GENERIC
for loop:
	"for :"
	key(left)
while [loop]:
	"while :"
    key(left)
if: 
	"if ()"
	key(left)
else: 
	"else "
else if: 
	"else if ()"
	key(left)
len: 
	"len()"
	key(left)
(integer | int): "int " 
return: 'return '
print:
	'print()'
	key(left)
round: 
	'round()'
	key(left)
math | maths: "math"
tan: "tan"
pie: 'pi'
self: 'self'
docstring: 
	"''''''"
    key(left left left)
paste: 'paste()'