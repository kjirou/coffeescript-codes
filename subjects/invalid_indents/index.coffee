#!/usr/bin/env coffee

assert = require 'assert'


#
# if ブロックのインデントがずれている
#
foo = 0

if true  # 1 indent
 foo = 1
assert.strictEqual foo, 1

if true  # 3 indents
   foo = 3
assert.strictEqual foo, 3

if true  # 4 indents
   foo = 4
assert.strictEqual foo, 4


#
# 関数リテラルのインデントがずれている
#
foo = 0

do ->
 foo = 1
assert.strictEqual foo, 1

do ->  # 3 indents
   foo = 3
assert.strictEqual foo, 3

do ->  # 4 indents
   foo = 4
assert.strictEqual foo, 4
