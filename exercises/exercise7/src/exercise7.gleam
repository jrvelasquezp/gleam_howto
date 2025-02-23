import gleam/bit_array
import gleam/int
import gleam/io

//Version 1. Very simple version, check the state of a given condition and continue until the condition is reached
//Version 2. Given a number, generate all the two positive numbers that meet a+b=number
//Version 3. Given a numnber, generate all the two positive numbers that meet a+b=number and a<b

pub fn main() {
  state_machine(12, 1, False)
}

fn state_machine(n: Int, a: Int, state: Bool) -> Bool {
  case state {
    False -> {
      io.debug(a)
      let b = n - a
      io.debug(b)
      state_machine(n, a + 1, b <= a)
    }
    True -> True
  }
}
