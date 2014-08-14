#!/usr/bin/env coffee
assert = require 'assert'

Foo = class
Bar = class extends Foo
Baz = class extends Bar

assert(Bar.prototype instanceof Foo)
assert(Baz.prototype instanceof Bar)
assert(Baz.prototype instanceof Foo)
assert(Foo.prototype instanceof Foo is false)
