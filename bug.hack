function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) - 1;
}

function main(): void {
  var x = 5;
  var y = baz(x);
  echo y;
}

This code seems simple, but it can lead to an unexpected integer overflow if the input value 'x' is very large. In Hack, integers are typically 64-bit signed integers. When 'x' is sufficiently large, the intermediate results in the `foo`, `bar`, and `baz` functions might exceed the maximum value that a 64-bit integer can hold, leading to an overflow. This overflow is not always obvious and can result in incorrect results or even program crashes.

For example, if the input 'x' exceeds a value close to 9223372036854775807, which is the maximum value of a 64-bit signed integer in Hack, the intermediate values and the final result could become negative due to overflow, or even cause undefined behavior.