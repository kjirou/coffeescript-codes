#!../../node_modules/.bin/coffee


class Foo

  a: [1]

  constructor: ->
    @b = [2]


foo1 = new Foo
foo2 = new Foo

console.log foo1.a  # -> [ 1 ]
console.log foo2.a  # -> [ 1 ]

foo1.a.push 2
console.log foo1.a  # -> [ 1, 2 ]

console.log foo2.a  # -> [ 1, 2 ]
