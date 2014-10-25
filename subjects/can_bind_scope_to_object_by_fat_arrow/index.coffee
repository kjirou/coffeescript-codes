#!/usr/bin/env coffee

#
# オブジェクトに => で束縛出来るかのテスト
# 出来なかった
#

assert = require 'assert'


module.exports.x = 10
global.x = 100


obj =
  x: 1
  foo: => @x
  bar: -> @x

{foo, bar} = obj

assert.strictEqual obj.foo(), 10  # module.exports になる
assert.strictEqual foo(), 10
assert.strictEqual obj.bar(), 1
assert.strictEqual bar(), 100  # global になる

# Ref) obj 部分のコンパイル結果
#
#   obj = {
#     x: 1,
#     foo: (function(_this) {
#       return function() {
#         return _this.x;
#       };
#     })(this),
#     bar: function() {
#       return this.x;
#     }
#   };
