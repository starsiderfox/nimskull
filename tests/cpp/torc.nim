discard """
  targets: "cpp"
  matrix: "--gc:orc"
  knownIssue: '''this should work in CPP, see PR:
https://github.com/nim-works/nimskull/pull/290
'''
"""

import std/options

# bug #18410
type
  O = object of RootObj
   val: pointer

proc p(): Option[O] = none(O)

doAssert $p() == "none(O)"