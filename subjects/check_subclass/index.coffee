#!/usr/bin/env coffee
assert = require 'assert'

Foo = class
Bar = class extends Foo
Baz = class extends Bar
Hoge = class

assert(Bar.prototype instanceof Foo)
assert(Baz.prototype instanceof Bar)
assert(Baz.prototype instanceof Foo)
assert(Foo.prototype instanceof Foo is false)
assert(Hoge.prototype instanceof Foo is false)

assert(Foo.prototype instanceof Object)  # これは真なんだ
assert(Foo.prototype instanceof Array is false)
