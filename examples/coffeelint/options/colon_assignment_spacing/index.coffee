#!../../../../node_modules/.bin/coffeelint

#
# ! 公式サンプルと結果が違う
#   設定間違ってる？
#

# Good
obj = foo:1  # 何故かこれが正しい


# Bad
obj = a : 1  # これが正しい予定
obj = b: 2
obj = c :3
