discard """
cmd: "nim $target --cppCompileToNamespace:foo $options -r $file"
target: cpp
"""

# Theoretically nim could just ignore the flag cppCompileToNamespace
# and this test would pass.  Setting ``ccodeCheck`` for a c++ target
# doesn't work.

import std/os

echo "a" / "b"
