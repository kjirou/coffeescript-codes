#!/usr/bin/env coffee
assert = require 'assert'


#
# CoffeeScript Cookbook の例
#
#   http://coffeescriptcookbook.com/chapters/classes_and_objects/mixins
#
# 特徴:
# - prototype のみ拡張している
# - Mixin 側も class である必要がある
# - base をそのまま拡張しないで、ラップしたクラスを返している
#
# 感想:
# - Mixin 側が class である必要があるのが不便過ぎる
#
mixOf = (base, mixins...) ->
  class Mixed extends base
  for mixin in mixins by -1 #earlier mixins override later ones
    for name, method of mixin::
      Mixed::[name] = method
  Mixed

class Foo
  x: 100
  y: 'abc'

class HogeMixin
  x: 200
  z: -> 'xyz'

FooMixedHoge = mixOf Foo, HogeMixin

fooMixedHoge = new FooMixedHoge

assert fooMixedHoge.x is 200
assert fooMixedHoge.y is 'abc'
assert fooMixedHoge.z() is 'xyz'
assert 'x' in FooMixedHoge is false
assert 'y' in FooMixedHoge is false
assert 'z' in FooMixedHoge is false
