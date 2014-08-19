#!/usr/bin/env coffee
assert = require 'assert'


# Pattern. 1
isSuccess = false

if true and
  true and  # 2 spaces
  true
    isSuccess = true  # 4 spaces

assert isSuccess


# Pattern. 2
isSuccess = false

if (
  true and
  true and
  true
)
  isSuccess = true  # 2 spaces

assert isSuccess
