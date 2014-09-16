#!/usr/bin/env coffee

assert = require 'assert'


#
# 初期化出来るのか
#
foo = (arg, {opt1, opt2, opt3}={}) ->
  # オプションについてのコメント
  opt1 ?= 1
  # オプションについてのコメント
  opt2 ?= false
  # オプションについてのコメント
  opt3 ?= null

  {
    arg
    opt1
    opt2
    opt3
  }

result = foo 1
assert.strictEqual result.arg, 1
assert.strictEqual result.opt1, 1
assert.strictEqual result.opt2, false
assert.strictEqual result.opt3, null

result = foo 1, {opt2:true}
assert.strictEqual result.opt2, true
