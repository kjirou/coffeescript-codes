#!../../../node_modules/.bin/coffeelint


# Good
foo = (a, b, x) ->
  if a
    if x
      1
    else
      2
  else if b
    3
  else
    4


# Bad
bar = (a, b, x) ->
  if a
    if x
      1
    else
      2
  else if b
    if x
      3
    else
      4
  else
    5
