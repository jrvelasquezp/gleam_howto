import gleam/io

pub fn main() {
  io.println("Hello from exercise2!")
  io.debug(loopuntil(33))
}

//Loop from 0 to the given number.
//Adding a guard and commit a second version will add only the numbers 
//that meet the guard condition

pub fn loopuntil(n: Int) -> List(Int) {
  case n {
    0 -> [0]
    x if x % 2 == 0 -> [x, ..loopuntil(x - 1)]
    _ -> loopuntil(n - 1)
  }
}
