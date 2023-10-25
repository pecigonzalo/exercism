pub fn secret_add(secret: Int) -> fn(Int) -> Int {
  fn(second_secret: Int) -> Int { second_secret + secret }
}

pub fn secret_subtract(secret: Int) -> fn(Int) -> Int {
  fn(second_secret: Int) -> Int { second_secret - secret }
}

pub fn secret_multiply(secret: Int) -> fn(Int) -> Int {
  fn(second_secret: Int) -> Int { second_secret * secret }
}

pub fn secret_divide(secret: Int) -> fn(Int) -> Int {
  fn(second_secret: Int) -> Int { second_secret / secret }
}

pub fn secret_combine(
  secret_function1: fn(Int) -> Int,
  secret_function2: fn(Int) -> Int,
) -> fn(Int) -> Int {
  fn(secret: Int) -> Int { secret_function2(secret_function1(secret)) }
}
