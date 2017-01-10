discard """
  output: "3"
"""

# issue 5053

type
  A[T] = object
    x: T
{.this: self.}
proc foo[T](self: A[T]) =
  echo x
foo(A[int](x: 3))
