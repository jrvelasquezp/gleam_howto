import gleam/io

pub type Triplet {
  Triplet(a: Int, b: Int, c: Int)
}

pub fn main() {
  io.println("Hello from exercise3!")
  io.debug(fill_list(12))
}

//Version 0. Fill a list with triplets populated with only sequences of numbers
pub fn fill_list(n: Int) -> List(Triplet) {
  case n {
    0 -> []
    x -> [Triplet(x, x, x), ..fill_list(x - 1)]
  }
}
