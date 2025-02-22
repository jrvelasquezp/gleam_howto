import gleam/io

pub fn main() {
  io.println("Hello from exercise2!")
  io.debug(loopuntil(12))
}

//Loop from 0 to the given number.
pub fn loopuntil(n: Int) -> List(Int) {
  case n {
    0 -> [0]
    x -> [x, ..loopuntil(x - 1)]
  }
}
