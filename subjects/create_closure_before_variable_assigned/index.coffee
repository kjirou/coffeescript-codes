#!/usr/bin/env coffee

#
# 変数を後で定義してもクロージャになってしまう例
#

assert = require 'assert'


# この時点では未定義の x 変数を参照している
foo = ->
  x

x = 2

assert foo() is 2


# JSにコンパイルすると x をスコープ先頭で宣言しているからである
#
# %coffee -p ./index.coffee
# (function() {
#   var assert, foo, x;
#
#   assert = require('assert');
#
#   foo = function() {
#     return x;
#   };
#
#   x = 2;
#
#   assert(foo() === 2);
#
# }).call(this);
