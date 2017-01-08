discard """
  output: '''nil'''
"""

type
    Foo = object
        b: Bar
    Bar = object
        s1, s2: string

proc initBar(): Bar = discard

var f: Foo
f.b.s1 = "hi"
f.b = initBar()
echo repr(f.b.s1)
