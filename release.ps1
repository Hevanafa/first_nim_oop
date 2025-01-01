# 01-01-2025
# Various compiler options for release

# --gc:none
# c <-- the same as `compile`
# --deadCodeElim:on <-- this is deprecated

# nim c -d:release .\first.nim  # 267 KB
# nim c -d:release --opt:size .\first.nim  # 235 KB
# nim c -d:release --opt:size --passL:-s .\first.nim  # 137 KB
# nim c -d:release -d:lto -d:danger --opt:size --passL:-s .\first.nim  # 123 KB
nim c -d:lto -d:danger --opt:size --passL:-s .\first.nim  # 123 KB, -d:danger is basically release + checker:off
# nim c -d:release -d:lto -d:danger --opt:size --passL:-s --gc:none .\first.nim  # 122 KB
# nim c -d:release -d:useNimRtl .\first.nim  # 130 KB

# Refs:
# How to minimize program size?
# https://forum.nim-lang.org/t/679

# - Using UPX can also reduce the executable size

# -d:lto & -d:danger
# https://forum.nim-lang.org/t/6892
# https://forum.nim-lang.org/t/10384

# -d:danger removes runtime checks

# Nim binary size from 160 KB to 150 Bytes
# https://hookrace.net/blog/nim-binary-size/

# About --gc:none
# https://nim-lang.org/1.4.8/gc.html
