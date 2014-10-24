#!/usr/bin/env coffee

assert = require 'assert'


#
# [n..m] と [n...m] の違い
#
assert.deepEqual [1..3], [1, 2, 3]
assert.deepEqual [1...3], [1, 2]  # arr.length に使うと良い


#
# arr[n..m] でスライス処理
#
arr = [11, 22, 33, 44, 55]
assert.deepEqual arr[0..2], [11, 22, 33]
assert.deepEqual arr[0...2], [11, 22]
assert.deepEqual arr[3..], [44, 55]
assert.deepEqual arr[..1], [11, 22]


#
# =and と =or 演算子
#
foo = 1
foo or= false  # foo || (foo = false);
assert foo is 1

bar = 0
bar or= false
assert bar is false

foo = 1
foo and= false  # foo && (foo = false);
assert foo is false

bar = 0
bar and= false
assert bar is 0


#
# loop 制御構文
#
count = 0
loop  # while true と一緒
  break if ++count >= 5
assert count is 5


#
# 変数の代入後に改行するとインデントがいらない
#
foo =
'FOO'

assert foo is 'FOO'
