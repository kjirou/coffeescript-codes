#!../../../node_modules/.bin/coffeelint

#
# 各オプションが正しいかの動作確認
#
# 当ファイルでは未確認:
#   coffeescript_error
#   line_endings
#


#
# arrow_spacing
#
# Good
do ->
do(->)
do(-> 1)
# Bad
do->
do(->1)


#
# camel_case_classes
#
class Foo  # Good
class foo  # Bad


#
# colon_assignment_spacing
#
foo = a:1  # Ignored


#
# cyclomatic_complexity
#
foo = (flag) ->  # Ignored
  switch flag
    when 1 then 1
    when 2 then 1
    when 3 then 1
    when 4 then 1
    when 5 then 1
    when 6 then 1
    when 7 then 1
    when 8 then 1
    when 9 then 1
    when 10 then 1


#
# duplicate_key
#
foo = x:1, y:2, z:3  # Good
bar = x:1, y:2, x:3  # Bad


#
# empty_constructor_needs_parens
#
new Foo  # Ignored

#
# indentation
#
if 1
  foo = 1  # Good
else
    bar = 2  # Bad

#
# max_line_length
#
# Good
'1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678'
'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ'
# Bad
'123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890'

#
# no_backticks
#
`'This is JavaScript';`  # Bad

#
# no_debugger
#
foo = -> debugger  # Bad

#
# no_empty_functions
#
foo = ->  # Ignored

#
# no_empty_param_list
#
do (x=1) ->  # Good
do () ->  # Bad

#
# no_implicit_braces
#
foo =  # Ignored
  a: 1
  b: 2

#
# no_interpolation_in_single_quotes
#
foo = 'aaa#{foo}bbb'  # Ignored

#
# no_plusplus
#
foo = 1
foo++  # Ignored

#
# no_stand_alone_at
#
foo = -> @  # Ignored

#
# no_tabs
#
if 1
	foo = 1  # Bad

#
# no_throwing_strings
#
foo = ->
  throw 'foo'  # Bad

#
# no_trailing_semicolons
#
foo = 1;  # Bad

#
# no_unnecessary_double_quotes
#
foo = "str"  # Bad

#
# non_empty_constructor_needs_parens
#
Foo = class
new Foo 1  # Ignored

#
# prefer_english_operator
#
1 is 1  # Good
foo = not false  # Good
1 == 1  # Bad
foo = !false  # Bad

#
# space_operators
#
foo = 1+1  # Ignored
