#!../../../node_modules/.bin/coffeelint


# Good
foo ->

bar =>
  @prop


# Bad, 中で this を参照していない
hoge =>

do =>

do ->
  do =>
