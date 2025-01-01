# OOP example without the `classes` module
# All the class members are public (i.e. there is no private members)
# Edit: Only the ones with the star "*" operator are public (e.g. calling man.name directly will have a compiler error)
type Person* = ref object of RootObj
  name: string = ""
  age: int32 = 0

# Ref: https://forum.nim-lang.org/t/9717
proc init(self: var Person, name: string, age: int32) =
  self.name = name
  self.age = age

proc newPerson*(name: string, age: int32): Person =
  var p = Person()
  p.init(name, age)
  return p
  
# Note: methods are evaluated during runtime, while procs are locked at compilation time
# Ref: https://matthiashager.com/proc-method-nim

# Old:
# method setName*(self: Person, value: string) {.base.} =
# New
proc setName*(self: Person, value: string) =
  self.name = value


# Old:
# method getName*(self: Person): string {.base.} =
# New:
proc getName*(self: Person): string = return self.name
proc getAge*(self: Person): int32 = return self.age
