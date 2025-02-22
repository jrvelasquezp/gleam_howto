import gleam/io

pub type Triplet {
  Triplet(a: Int, b: Int, c: Int)
}

pub fn main() {
  io.println("Hello from exercise3!")
  io.debug(fill_list(12))
}

//Version 0. Fill a list with triplets populated with only sequences of numbers
//Version 1. Fill a list with triplets if n meet certain condition.

pub fn fill_list(n: Int) -> List(Triplet) {
  case n {
    0 -> []
    x if x % 2 != 0 -> [Triplet(x, x, x), ..fill_list(x - 1)]
    _ -> fill_list(n - 1)
  }
}
