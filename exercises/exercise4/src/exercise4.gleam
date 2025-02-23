import gleam/io

pub type Triplet {
  Triplet(a: Int, b: Int, c: Int)
}

pub fn main() {
  io.println("Hello from exercise4!")
  let tr = Triplet(1, 2, 9)
  let n = 12
  io.debug(tr)
  let tr = ret_triplet(tr.a, tr.b, tr.c, 12)
  io.debug(tr)
  io.debug(ret_triplet(tr.a, tr.b, tr.c, 12))
  let tr = ret_triplet(tr.a, tr.b, tr.c, 12)
  io.debug(tr)
  io.debug(ret_triplet(tr.a, tr.b, tr.c, 12))
  let tr = ret_triplet(tr.a, tr.b, tr.c, 12)
  io.debug(tr)
  io.debug(ret_triplet(tr.a, tr.b, tr.c, 12))
  let tr = ret_triplet(tr.a, tr.b, tr.c, 12)
  io.debug(tr)
  io.debug(ret_triplet(tr.a, tr.b, tr.c, 12))
  let tr = ret_triplet(tr.a, tr.b, tr.c, 12)
  io.debug(tr)
  io.debug(ret_triplet(tr.a, tr.b, tr.c, 12))
  let tr = ret_triplet(tr.a, tr.b, tr.c, 12)
  io.debug(tr)
  io.debug(ret_triplet(tr.a, tr.b, tr.c, 12))
  let tr = ret_triplet(tr.a, tr.b, tr.c, 12)
  io.debug(tr)
  io.debug(ret_triplet(tr.a, tr.b, tr.c, 12))
  let tr = ret_triplet(tr.a, tr.b, tr.c, 12)
  io.debug(tr)
  io.debug(ret_triplet(tr.a, tr.b, tr.c, 12))
}

pub fn ret_triplet(a: Int, b: Int, c: Int, n: Int) -> Triplet {
  case a, b, c {
    x, _, _ if x >= n/3 + 1 -> Triplet (a,b,c)
    x, y, z if x < y && y < z && x + y + z == n && x * x + y * y == z * z ->
      Triplet(x, y, z)
    x, y, z if x < y && y < z && x + y + z == n ->
      Triplet(x, y + 1, n - x - y - 1)
    x, y, z if y >= z && x + y + z == n -> Triplet(x + 1, x + 2, n - 2 * x - 3)
    _, _, _ -> Triplet(0, 0, 0)
  }
}
