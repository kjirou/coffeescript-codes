#!../../../node_modules/.bin/coffeelint


func = ->


# Good
dict = {a: 1}
func {a: 1}


# Bad
dict = a: 1
mutilinedDict =
  a: 1
func a: 1
