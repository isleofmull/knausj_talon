mode: user.python
mode: command 
and code.language: python
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic
settings():
    user.code_private_function_formatter = "SNAKE_CASE"
    user.code_protected_function_formatter = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "SNAKE_CASE"
    user.code_protected_variable_formatter = "SNAKE_CASE"
	user.code_public_variable_formatter = "SNAKE_CASE"
	user.code_new_class_formatter = "PUBLIC_CAMEL_CASE"
action(user.code_operator_indirection): ""
action(user.code_operator_address_of): ""
action(user.code_operator_structure_deference): ""
action(user.code_operator_lambda): ""
action(user.code_operator_subscript): 
	insert("[]")
	key(left)
action(user.code_operator_assignment): " = "
action(user.code_operator_subtraction): " - "
action(user.code_operator_subtraction_assignment): " -= "
action(user.code_operator_addition): " + "
action(user.code_operator_addition_assignment): " += "
action(user.code_operator_multiplication): " * "
action(user.code_operator_multiplication_assignment): " *= "
action(user.code_operator_exponent): " ** "
action(user.code_operator_division): " / "
action(user.code_operator_division_assignment): " /= "
action(user.code_operator_modulo): " % "
action(user.code_operator_modulo_assignment): " %= "
action(user.code_operator_equal): " == "
action(user.code_operator_not_equal): " != "
action(user.code_operator_greater_than): " > "
action(user.code_operator_greater_than_or_equal_to): " >= "
action(user.code_operator_less_than): " < "
action(user.code_operator_less_than_or_equal_to): " <= "
action(user.code_operator_and): " and "
action(user.code_operator_or): " or "
action(user.code_operator_bitwise_and): " & "
action(user.code_operator_bitwise_and_assignment): " &= " 
action(user.code_operator_bitwise_or): " | "
action(user.code_operator_bitwise_or_assignment): " |= "
action(user.code_operator_bitwise_exlcusive_or): " ^ "
action(user.code_operator_bitwise_exlcusive_or_assignment): " ^= "
action(user.code_operator_bitwise_left_shift): " << "
action(user.code_operator_bitwise_left_shift_assignment): " <<= "
action(user.code_operator_bitwise_right_shift): " >> "
action(user.code_operator_bitwise_right_shift_assignment): " >>= "
action(user.code_self): "self"
action(user.code_null): "None"
action(user.code_is_null): " is None"
action(user.code_is_not_null): " is not None"
action(user.code_state_if): 
	insert("if :")
	key(left)
action(user.code_state_else_if): 
	insert("elif :")
	key(left)
action(user.code_state_else): 
	insert("else:")
	key(enter)
action(user.code_state_switch):
	insert("switch ()") 
	edit.left()
action(user.code_state_case):
	insert("case \nbreak;") 
	edit.up()
action(user.code_state_for): "for "
action(user.code_state_for_each): 
	insert("for in ")
	key(left)
	edit.word_left()
	key(space) 
	edit.left()
action(user.code_state_go_to): "go to "
action(user.code_state_while): 
	insert("while ()")
	edit.left()
action(user.code_type_definition): "typedef "	
action(user.code_typedef_struct):	
	insert("typedef struct")
	insert("{{\n\n}}")
	edit.up()
	key(tab)
action(user.code_type_class): "class "
action(user.code_import): "import "
action(user.code_from_import):
	insert("from import ")
	key(left)
	edit.word_left()
	key(space) 
	edit.left()
action(user.code_include_system):
	insert("#include <>")
	edit.left()
action(user.code_include_local):
	insert('#include ""')
	edit.left()
action(user.code_comment): "#"
action(user.code_private_function):
	insert("def _")
action(user.code_protected_function):
    user.code_private_function()
action(user.code_public_function):
	insert("def ")
action(user.code_state_return):
	insert("return ")
	
#python-specicic grammars
dunder in it: insert("__init__")
state (def | deaf | deft): "def "
pie test: "pytest"

#James' Additions
(add | insert) function <user.format_text>$: 
	"def ():"
    key(left left left)
    insert(format_text)
    key(right)
docstring: 
	"''''''"
	key(left left left)
	key(enter enter)
	key(up)
for loop:
	"for :"
	key(left)
while loop:
	"while :"
	key(left)
true: 'True'
false: 'False'
# equals: ' = '
# greater than: ' > '
# less than: ' < '
# greater or equal to: ' >= '
# less than or equal to: ' <= '
# plus: ' + '
# minus: ' - '
pipe: ' | '
# divided by: ' / '
# (multiplied by | times): ' * '
# plus equals: ' += '
# minus equals: ' -= '
if: 
	"if :"
	key(left)
else: 
	"else:"
else if: 
	"elif :"
	key(left)
len: 
	"len()"
	key(left)
(integer | int): "int" 
[is] congruent to: ' == '
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
uno: "1"
action(user.code_new_class):
	insert("class ")
