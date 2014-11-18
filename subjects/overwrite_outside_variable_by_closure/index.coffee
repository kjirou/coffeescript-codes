#!/usr/bin/env coffee

#
# スコープの外側をクロージャが意図せずに上書きしてエラーになるかを検証
# JavaScript だと var があるからこの問題は発生しない
#

assert = require 'assert'


# util 変数を overwrite の実行で上書きしている
util = require 'util'

assert typeof util is 'object'

overwrite = ->
  util = 2

overwrite()

assert typeof util is 'number'
