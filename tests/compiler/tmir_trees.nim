discard """
  description: "Tests for the `mirtree` module"
  targets: native
"""

import compiler/mir/mirtrees

block last_sibling:
  let tree = @[MirNode(kind: mnkScope)]
  doAssert sibling(tree, NodePosition 0) == NodePosition(tree.len)
