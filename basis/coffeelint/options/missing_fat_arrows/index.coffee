#!../../../../node_modules/.bin/coffeelint

#
# this を含む関数は必ず => で宣言しないといけない
#


# Good
func => @
func ->


# Bad
func -> @
func -> this
