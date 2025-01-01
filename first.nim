# Proper OOP example with public & private members

import std/[rdstdin, strutils, strformat]
# from person import Person, newPerson
import person

echo "Hello world!"

# let is immutable (unlike in JS)
let num = parseInt(readLineFromStdin("Input a number: "))
echo &"Your number is {num}"

let man = newPerson("Hello", 20)
man.setName("Rawr")

echo man.getName() & fmt", age: {man.getAge()}"

