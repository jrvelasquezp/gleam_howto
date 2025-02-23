import gleam/io

//Version 1. Very simple version, check the state of a given condition and continue until the condition is reached
//Version 2. Given a number, generate all the two positive numbers that meet a+b=number
//Version 3. Given a numnber, generate all the two positive numbers that meet a+b=number and a<b
//Version 4. Append a list of triplets with the numbers generated above. 

pub type Triplet {
  Triplet(Int, Int, Int)
}

pub fn main() {
  let li = []
  let li = state_machine(12, 1, False, li)
  io.debug(li)
}

fn state_machine(
  n: Int,
  a: Int,
  state: Bool,
  li: List(Triplet),
) -> List(Triplet) {
  case state {
    False -> {
      io.debug(a)
      let b = n - a
      io.debug(b)
      let li = append_list(Triplet(a, b, 0), li)
      io.debug(li)
      state_machine(n, a + 1, b <= a || b - 1 == a + 1, li)
    }
    True -> li
  }
}

fn append_list(tr: Triplet, li: List(Triplet)) -> List(Triplet) {
  [tr, ..li]
}
