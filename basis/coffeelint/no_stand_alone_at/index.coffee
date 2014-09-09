#!../../../node_modules/.bin/coffeelint

#
# @ を直接評価してはいけない
#


# Good
do ->
  @prop

do @prop


# Bad
do ->
  @

do @
